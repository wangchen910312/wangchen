<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<script src="<c:url value='/resources/js/resumableFileUpload/resumable.js' />"></script>
<section class="group">
    <div class="table_grid ">
        <div id="fileGrid" class="grid"></div>
    </div>

    <div id="progressWindow" class="resumable-progress">
        <p class="progress-total-txt"><!-- 현재 <span class="current_num">3</span> / 전체 <span class="whole_num">4</span> (<span class="complete_size">10</span>MB / <span class="whole_size">65</span>MB) --></p>
        <table>
            <tr>
                <td width="100%">
                    <div class="progress-container">
                        <div class="progress-bar"></div>
                        <div class="progress-txt">00%</div>
                    </div>
                </td>
                <td class="progress-pause" nowrap="nowrap">
                    <div class="progress-btn">
                        <a href="#" onclick="r.upload(); return(false);" class="progress-resume-link"><img src="<c:url value='/resources/img/btn_resume.png' />" title="Resume upload" /></a>
                        <a href="#" onclick="r.pause(); return(false);" class="progress-pause-link"><img src="<c:url value='/resources/img/btn_pause.png' />" title="Pause upload" /></a>
                    </div>
                </td>
            </tr>
        </table>
        <ul class="resumable-list"></ul>
    </div>
</section>
<input type="hidden" id="fileKeyNm" name="fileKeyNm" data-json-obj="true"/> <!-- File key -->

<script type="text/javascript">

$(document).ready(function(){


    setFileButton = function(flag){

        switch(flag){

            case "N" :

                $("#btnFileAdd").hide();
                $("#btnFileDel").data("kendoButton").enable(false);
                break;

            case "Y" :

                $("#btnFileAdd").show();
                $("#btnFileDel").data("kendoButton").enable(true);
                break;
        }
    };

    $("#fileGrid").kendoExtGrid({
        dataSource:{
            transport:{
                read:{
                    url:"<c:url value='/cmm/sci/fileUpload/selectFiles.do' />"
                }
                ,parameterMap:function(options, operation) {
                    if (operation === "read") {

                        var params = {};
                        params["sFileDocNo"] = $("#fileKeyNm").val();

                        return kendo.stringify(params);

                    }else if (operation !== "read" && options.models) {
                        return kendo.stringify(options.models);
                    }
                }
            }
            ,schema:{
                model:{
                    fields:{
                        fileDocNo:{type:"string"}
                        ,fileNo:{type:"number"}
                        ,fileNm:{type:"string"}
                        ,fileSize:{type:"number"}
                        ,filePwaRequiNo:{type:"string"} //关联申请单 CSR 74 PWA申请单据，PWA类型1字段选择了延保索赔结算类型，文件子表也要继承延保索赔申请类型的 贾明2020-4-21
                    }
                }
            }
        }
        ,autoBind:false
        ,editable:false
        ,height:100
        ,navigatable:false
        ,pageable:false
        ,sortable:false
        ,multiSelectWithCheckbox:true
        ,reorderable:false
        ,filterable:false                 // 필터링 기능 사용안함
        ,change:function (e){ 
            //关联申请单 CSR 74 如果此附件不是自身进行上传的，则文件删除按钮不可用 PWA申请单据，PWA类型1字段选择了延保索赔结算类型，文件子表也要继承延保索赔申请类型的 贾明2020-4-21 start 
            var selectedVal = this.dataItem(this.select());
            var filePwaRequiVal = selectedVal.filePwaRequiNo;
            if(dms.string.isNotEmpty(filePwaRequiVal)){
               $("#btnFileDel").hide();
            }
            
            if(dms.string.isEmpty(filePwaRequiVal)){
                $("#btnFileDel").show();
            } 
            //关联申请单 CSR 74 如果此附件不是自身进行上传的，则文件删除按钮不可用 PWA申请单据，PWA类型1字段选择了延保索赔结算类型，文件子表也要继承延保索赔申请类型的 贾明2020-4-21 end 
        }
        ,columns:[
            {field:"fileNm", title:"<spring:message code='global.lbl.fileNm' />('<spring:message code='ser.lbl.fileMaxSize' />')"
                ,template:"<span style=\"text-decoration:underline;cursor:pointer;\" onclick=\"dms.fileManager.download(\'#=fileDocNo#\',\'#=fileNo#\')\">#=fileNm#</span>"
            }
            ,{field:"fileSize", title:"<spring:message code='global.lbl.fileSize' />", width:150    // 파일크기
                ,attributes:{"class":"ac"}
                ,template:"#= dms.string.formatFileSize(fileSize) #"
            }
            ,{field:"filePwaRequiNo", title:"<spring:message code="ser.lbl.pwaRelateRequi" />", width:150,attributes:{"class":"ac"},hidden:true} //hidden:true 关联申请单 CSR 74 PWA申请单据，PWA类型1字段选择了延保索赔结算类型，文件子表也要继承延保索赔申请类型的 贾明2020-4-21 
        ]
    });

    var maxFileSize = 1024*1024*50;
    var maxfiles = 50;
    var r = new Resumable({
        target:"<c:url value='/cmm/sci/fileUpload/selectResumableFileUpload.do'/>"
        ,chunkSize:1 * 1024 * 1024
        ,simultaneousUploads:4
        ,testChunks:true
        ,throttleProgressCallbacks:1
        ,method:"octet"
        ,maxFiles:maxfiles
        ,maxFileSize:maxFileSize
    });

    $("#btnFileAdd").click(function(e){

        r.opt.maxFiles = maxfiles - $("#fileGrid").data("kendoExtGrid").dataSource._total;
    });

    r.assignBrowse($('#btnFileAdd')[0]);

    //파일추가 이벤트
    r.on('fileAdded', function(file) {

        if( $("#fileGrid").data("kendoExtGrid").dataSource._total > (maxfiles-1) ){
            dms.notification.warning("<spring:message code='ser.info.fileUploadCntChk' arguments='${maxfiles}' />");
            return;
        }

        $("#progressWindow").kendoWindow({
            width:"600px"
            ,height:"300px"
            ,title:"<spring:message code='global.lbl.fileSend'/>"     // 파일전송
            ,animation:false
            ,draggable:false
            ,visible:false
            ,resizable:false
            ,modal:true
        }).data("kendoWindow").center().open();


        $('.resumable-progress, .resumable-list').show();
        $('.resumable-progress .progress-resume-link').hide();
        $('.resumable-progress .progress-pause-link').show();

        //파일목록 출력
        $('.resumable-list').append('<li class="resumable-file-'+file.uniqueIdentifier+'"><div class="progress-file-name"><div class="resumable-file-name"></div><div class="progress-file-size"><!--<span class="progress-complete-size">00</span>MB/<span class="progress-whole-size">00</span>MB</div>--></div><div class="file-progress-container"><div class="resumable-file-progress"></div><div class="resumable-file-txt"></div></div>');
        $('.resumable-file-' + file.uniqueIdentifier + ' .resumable-file-name').html(file.fileName);


        //업로드 시작
        r.upload();

    });

    r.on('pause', function() {
        $('.resumable-progress .progress-resume-link').show();
        $('.resumable-progress .progress-pause-link').hide();
    });

    r.on('uploadStart', function() {

        var _that = this;

        if (_that.opt["query"] == null) {
             _that.opt["query"] = {};
        }


        if (dms.string.isEmpty($("#fileKeyNm").val()) ) {
            $.ajax({
                url:"<c:url value='/cmm/sci/fileUpload/selectFileDocNo.do' />",
                dataType:"json",
                type:"get",
                async:false,
                cache:false,
                success:function(id) {
                    _that.opt["query"]["resumableSessionId"] = id;
                    $("#fileKeyNm").val(id);
                }
            });
        } else {
            _that.opt["query"]["resumableSessionId"] = $("#fileKeyNm").val();
        }


        $('.resumable-progress .progress-resume-link').hide();
        $('.resumable-progress .progress-pause-link').show();
    });
    r.on('complete', function() {

        var _that = this;

        $('.resumable-progress .progress-resume-link, .resumable-progress .progress-pause-link').hide();


        $("#progressWindow").data("kendoWindow").close();
        r.files = [];
        $(".resumable-list").html("");
    });
    r.on('fileSuccess', function(file, message) {


        var result = JSON.parse(message);
        if(result.status === "finished") {
            $("#fileGrid").data("kendoExtGrid").dataSource.insert({
                fileDocNo:result.fileDocNo
                ,fileNo:result.fileNo
                ,fileNm:result.fileNm
                ,fileSize:result.fileSize
            });
        }
    });
    r.on('fileError', function(file, message) {
        $('.resumable-file-' + file.uniqueIdentifier + ' .resumable-file-txt').html('(file could not be uploaded:' + message + ')');
    });
    r.on('fileProgress', function(file) {
        var fileProgress = 0;

        if (file instanceof ResumableChunk) {
            fileProgress = file.fileObj.progress();
        } else {
            fileProgress = file.progress();
        }

        $('.resumable-file-' + file.uniqueIdentifier + ' .resumable-file-txt').html(Math.min(Math.floor(fileProgress * 100), 100) + '%');
        $('.resumable-file-' + file.uniqueIdentifier + ' .resumable-file-progress').css({width:Math.min(Math.floor(fileProgress * 100), 100) + '%'});
        $('.progress-bar').css({width:Math.min(Math.floor(r.progress() * 100), 100)+ '%'});
    });


    // 버튼 - 첨부파일 삭제
    $("#btnFileDel").kendoButton({
       click:function(e) {
           var fileGrid = $("#fileGrid").data("kendoExtGrid");
           var rows = fileGrid.select();
           var deleteList = [];

           if (rows.length < 1) {
               //목록을 선택하여 주십시오.
               dms.notification.info("<spring:message code='global.info.required.select'/>");
               return;
           }

           rows.each(function(index, row) {
               var dataItem = fileGrid.dataItem(row);
               deleteList.push({"fileDocNo":dataItem.fileDocNo, "fileNo":dataItem.fileNo});
           });

           $.ajax({
               url:"<c:url value='/cmm/sci/fileUpload/deleteFiles.do' />"
               ,data:JSON.stringify(deleteList)
               ,type:'POST'
               ,dataType:'json'
               ,contentType:'application/json'
               ,error:function(jqXHR,status,error) {
                   dms.notification.error(jqXHR.responseJSON.errors);
               }
               ,success:function(jqXHR, textStatus) {
                   //정상적으로 반영 되었습니다.
                   dms.notification.success("<spring:message code='global.info.success'/>");
                   $("#fileGrid").data("kendoExtGrid").dataSource.read();
                   //关联申请单 CSR 74 文件删除后显示关联申请单的文件 PWA申请单据，PWA类型1字段选择了延保索赔结算类型，文件子表也要继承延保索赔申请类型的 贾明2020-4-21 start
                    var  fileVinNo = $("#vinNo").val();
                    var  filePwaRequiNo = $("#pwaRequiNo").val();
                   if(dms.string.isNotEmpty(filePwaRequiNo)){
		             //getRequisitionFile(fileKeyNmVal);
		             getPwaFileRequestByKey(fileVinNo,filePwaRequiNo);
		            }
                  //关联申请单 CSR 74 文件删除后显示 关联申请单的文件 PWA申请单据，PWA类型1字段选择了延保索赔结算类型，文件子表也要继承延保索赔申请类型的 贾明2020-4-21 start
               }
           });

       }
    });
});

</script>

<style>
.btn_file_disable {
    overflow:hidden;
    position:relative;
    display:inline-block;
    height:22px;
    padding:0 7px;
    border:1px solid #c0c0c0;
    border-radius:3px;
    -webkit-border-radius:3px;
    -moz-border-radius:3px;
    box-sizing:border-box;
    -webkit-box-sizing:border-box;
    -moz-box-sizing:border-box;
    box-shadow:none;
    -webkit-box-shadow:none;
    -moz-box-shadow:none;
    background-color:#c0c0c0;
    color:#ededed;
    line-height:22px;
    text-align:center;
    vertical-align:bottom;
    cursor:default;
}
</style>