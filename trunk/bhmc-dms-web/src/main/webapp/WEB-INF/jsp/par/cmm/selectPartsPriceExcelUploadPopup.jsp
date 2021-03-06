<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<link rel="stylesheet" href="<c:url value="/resources/js/jquery-ui-1.11.4.custom/jquery-ui.min.css"/>" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery-ui-1.11.4.custom/jquery-ui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.form.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/dms/jquery.ui.ext-1.0.js"/>"></script>
<style type="text/css">
    .progress_section {background-color:#ffffff;border:1px solid #ddd;padding:5px;position:absolute;width:600px;top:150px;z-index:1500;margin-left:-300px;left:50%;display:none;}
    #progressMessage {height:20px;}
    #progressbar {height:25px;}
</style>


<div id="resizableContainer">

<section id="windows" class="pop_wrap">
    <div class="header_area">
        <div class="btn_right">
            <button type="button" id="btnFileDownload" class="btn_s"><spring:message code="global.btn.templateDownload" /></button>
            <button type="button" id="btnDel" class="btn_s"><spring:message code='global.btn.rowDel' /></button>
            <button type="button" id="btnSave" class="btn_s"><spring:message code="global.btn.save" /></button>
        </div>
    </div>

    <div class="table_form" role="search" data-btnid="btnSearch">
        <form id="uploadForm" name="uploadForm" method="post" enctype="multipart/form-data" action="<c:url value="/par/pmm/partsPriceMaster/insertPartsPriceExcelUploadFile.do"/>">
        <table>
            <caption></caption>
            <colgroup>
                <col style="width:70%;">
                <col>
            </colgroup>
            <tbody>
                <tr>
                    <td>
                        <input type="file" id="uploadFile" name="uploadFile" class="form_file" />
                    </td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        </form>
    </div>

    <div id="progressSection"></div>

    <div class="table_grid mt10">
        <div id="grid" class="resizable_grid"></div>
    </div>
</section>

</div>

<script type="text/javascript">
var rowNumber = 0;
var localData = {"data":[], "total":0}

var options = parent.partsPriceExcelUploadPopupWin.options.content.data;

$(document).ready(function() {

    //파일업로드
    $("#uploadFile").change(function(){
        if(dms.string.isEmpty($(this).val())) {
            dms.notification.show("<spring:message code='global.lbl.file' var='fileMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${fileMsg}' />", "popup");
            return;
        }
        $("#progressSection").excelUpload("upload");
    });

    //버튼 - 양식다운로드
    $("#btnFileDownload").kendoButton({
        click:function(e){
            location.href = "<c:url value='/cmm/sci/selectExcelTemplateDownload.do' />" + "?fileNm=PartsVenderSalPriceTargetMaster_Tpl.xlsx";
        }
    });

    //버튼 - 행삭제
    $("#btnDel").kendoButton({
        click:function(e){
            var grid = $("#grid").data("kendoExtGrid");
            var rows = grid.select();

            rows.each(function(index, row) {
                grid.removeRow(row);
            });
        }
    });

    $("#progressSection").excelUpload({
        progressId :"UPLOAD_PROMOTION_CUST_SOURCE"
        ,uploadForm :"uploadForm"
        ,uploadStatusUrl:"<c:url value='/cmm/excelUpload/selectExcelUploadStatus.do' />"
        ,interval:300
        ,messages:{
            fileUpload:"<spring:message code='global.info.fileUpload.processing' />"
            ,fileUploadComplete:"<spring:message code='global.info.fileUpload.complete' />"
            ,dataExtract:"<spring:message code='global.info.excelUpload.dataExtract.complete' />"
            ,dataExtractComplate:"<spring:message code='global.info.excelUpload.dataExtract.processing' />"
            ,uploadComplete:"<spring:message code='global.info.excelUpload.complete' />"
        }
        ,callback:function(obj){
            if(obj.total == 10000){
                dms.notification.error("<spring:message code='global.info.dataMaxCnt'/>");
                return false;
            }else {
                localData = obj;
                $('#grid').data('kendoExtGrid').dataSource.read();
            }
        }
    });

    //버튼 - 저장
    $("#btnSave").kendoButton({
        click:function(e){
            var grid = $("#grid").data("kendoExtGrid");
            items = grid.dataSource.data(),
            saveItem = [],
            itemMaxCheckCnt = 0,
            itemErrorCheckCnt = 0,
            itemCnt = 0;

            for (i = 0; i < items.length; i++) {
                var dataItem = items[i];

                if(dataItem.errorCount == 0){
                    //excel item max 2000
                    if(itemCnt >= 2000){
                        itemMaxCheckCnt++;
                    }
                    itemCnt++;
                    dataItem.salePriceCost01 = Number(dataItem.salePriceCost01.toFixed(2));
                    dataItem.salePriceCost02 = Number(dataItem.salePriceCost02.toFixed(2));
                    dataItem.salePriceCost03 = Number(dataItem.salePriceCost03.toFixed(2));
                    saveItem.push(dataItem);
                }
            }

            if(itemMaxCheckCnt > 0){
                dms.notification.info("<spring:message code='par.info.uploadFileMaxCnt' />");
                return false;
            }else if(itemCnt == 0){
                dms.notification.info("<spring:message code='global.info.required.change' />");
                return false;
            }else{
                $.ajax({
                    url:"<c:url value='/par/pmm/partsPriceMaster/savePartsPriceExcelUpload.do' />"
                    ,data:JSON.stringify({"partsPriceList":saveItem})
                    ,type:'POST'
                    ,dataType:'json'
                    ,contentType:'application/json'
                    ,error:function(jqXHR, status, error) {
                        dms.notification.error(jqXHR.responseJSON.errors);
                    }
                    ,success:function(jqXHR, textStatus) {
                        options.callbackFunc.call();
                        //정상적으로 반영 되었습니다.
                        dms.notification.success("<spring:message code='global.info.success'/>");
                    }
                });
            }
       }
    });

    //그리드 설정
    $("#grid").kendoExtGrid({
        dataSource:{
            data:localData
            ,transport:{
                read:function (options) {
                    options.success(localData);
                }
            }
            ,serverPaging:true
            ,serverSorting:false
            ,schema:{
                model:{
                    fields:{
                        itemCd:{type:"string", validation:{required:true}}
                        ,grStrgeCd:{type:"string", validation:{required:true}}
                        ,grStrgeNm:{type:"string", validation:{required:true}}
                        ,salePriceCost01:{type:"number", validation:{required:true}}
                        ,salePriceCost02:{type:"number", validation:{required:true}}
                        ,salePriceCost03:{type:"number", validation:{required:true}}
                        ,errorCount:{type:"string", editable:false}
                        ,errors:{type:"object", editable:false}
                    }
                }
            }
        }
        ,height:370
        ,editable:false
        ,pageable:false
        ,selectable:"row"
        ,dataBinding:function(e){
            var grid = e.sender;
            var page = grid.dataSource.page()? this.dataSource.page():1;
            var pageSize = grid.dataSource.pageSize()? this.dataSource.pageSize():0;

            rowNumber = (page-1)*pageSize;
        }
        ,filterable:false
        ,columns:[
            {title:"<spring:message code='global.lbl.no' />", width:50, sortable:false
                ,attributes:{"class":"ac"}
                ,template:"#= ++rowNumber #"
            }
            ,{field:"itemCd", title:"<spring:message code='par.lbl.itemCd' />", width:120}//itemCd
            ,{field:"grStrgeNm", title:"<spring:message code='par.lbl.strge' />", width:100}//grStrgeNm
            ,{field:"salePriceCost01", title:"<spring:message code='par.lbl.salePriceCost01' />", format:"{0:n2}", decimals:2, width:80}//salePriceCost01
            ,{field:"salePriceCost02", title:"<spring:message code='par.lbl.salePriceCost02' />", format:"{0:n2}", decimals:2, width:80}//salePriceCost02
            ,{field:"salePriceCost03", title:"<spring:message code='par.lbl.salePriceCost03' />", format:"{0:n2}", decimals:2, width:80}//salePriceCost03
            ,{field:"errorCount", title:"<spring:message code='global.lbl.errYn' />", width:80
                ,attributes:{"class":"ac"}
                ,template:function(dataItem){
                    if(dataItem.errorCount == 0){
                        return "N";
                    }
                    return "Y";
                }
            }
            ,{field:"errors", title:"<spring:message code='global.lbl.errMesgTxt' />", width:250
                ,template:function(dataItem) {
                    var str = "";
                    $.each(dataItem.errors, function(idx, obj){
                        str += "<div>" + obj.errorMessage + "</div>";
                    });
                    return str;
                }
            }//errors
        ]

    });
});
</script>