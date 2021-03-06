<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<!-- location Master -->
<section class="group">
    <div class="header_area">
        <%-- <h1 class="title_basic"><spring:message code="par.title.locMaster" /></h1> --%>
        <div class="btn_left">
            <button id="btnInit" name="btnInit" class="btn_m btn_m_min btn_reset"><spring:message code="par.btn.init" /></button>
        </div>
        <div class="btn_right">
            <button type="button" id="btnSave" class="btn_m btn_m_min btn_save"><spring:message code="par.btn.save" /></button><!--btnSave  -->
            <button type="button" id="btnCancel" class="btn_m btn_m_min btn_cancel"><spring:message code="par.btn.cancel" /></button><!--btnCancel  -->
            <button type="button" id="btnSearch" class="btn_m btn_m_min btn_search"><spring:message code="par.btn.search" /></button><!--btnSearch  -->
        </div>
    </div>
    <div class="table_form" role="search" data-btnid="btnSearch">
        <table>
            <caption></caption>
            <colgroup>
                <col style="width:10%;">
                <col style="width:15%;">
                <col>
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row"><span class="bu_required"><spring:message code="par.lbl.strge" /><!-- strge --></span></th>
                    <td class="required_area">
                        <input id="sStrgeCd" class="form_comboBox" />
                    </td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
</section>

<div class="clfix">
    <!-- content_left -->
    <section class="location_left">
    <div class="header_area">
        <h2 class="title_basic"><spring:message code="par.title.locTree" /><!-- locTree  --></h2>
        <div class="btn_right">
            <button id="btnExpand" type="button" class="btn_s btn_up"><spring:message code="par.btn.up" /></button><!-- up  -->
            <button id="btnCollapse" type="button" class="btn_s btn_down"><spring:message code="par.btn.down" /></button><!-- down  -->
        </div>
    </div>
    <div class="table_grid">
        <div id="treelist"></div>
    </div>

    </section>
    <!-- content_left -->
    <!-- content_right -->
    <section class="location_right">
    <div class="header_area">
        <h2 class="title_basic"><spring:message code="par.title.locInfo" /><!-- locInfo  --></h2>
        <div class="btn_right">
            <button class="btn_s btn_s_min5 btn_add" id="btnAdd" type="button"><spring:message code="par.btn.rowAdd" /></button><!-- rowAdd -->
            <button class="btn_s btn_s_min5 btn_del" id="btnDel" type="button"><spring:message code="par.btn.rowDel" /></button><!-- rowDel  -->
        </div>
    </div>
    <div class="table_grid">
        <div id="gridLoc"></div>
    </div>
    </section>
    <!-- content_right -->
</div>

<!-- //location Master -->

<!-- script -->
<script>
/**
* checkbox click event
*/
$(document).on("click", ".lmtmngyn-chk", function(e){
     var thisName = $(this).data("name");
     var grid = $("#gridLoc").data("kendoExtGrid"),
     dataItem = grid.dataItem($(e.target).closest("tr"));

     if($(this).is(":checked")){
        dataItem.set(thisName, "Y");
     }else{
        dataItem.set(thisName, "N");
     }
 });
/**
* checkbox click event
*/
$(document).on("click", ".mainlocyn-chk", function(e){
    var thisName = $(this).data("name");
    var grid = $("#gridLoc").data("kendoExtGrid"),
    dataItem = grid.dataItem($(e.target).closest("tr"));

    if($(this).is(":checked")){
       dataItem.set(thisName, "Y");
    }else{
       dataItem.set(thisName, "N");
    }
});
//giStrgeCdList
var giStrgeCdList = [];
<c:forEach var="obj" items="${giStrgeCdList}">
giStrgeCdList.push({
    "strgeCd":"${obj.strgeCd}"
    ,"strgeNm":"${obj.strgeNm}"
});
</c:forEach>
// tree Expanded Func
function treelistExpanded(bFlag){
    var treelist = $("#treelist").data("kendoTreeList");
    var dataItems = treelist.dataSource.data();
    $.each(dataItems, function(idx,item){
        item.expanded = bFlag;
    });
    treelist.dataSource.data(dataItems);
}
//member
var selectedLocId = null;
var selectedLvlId = 0;
var selectedLocCd = "";
selectedUpperLocId = "";
var selectedItemCd = "";
var selectedMainLocYn = "N";
// page init Func
function pageInit(){
    selectedLocId = null;
    selectedLvlId = 0;
    selectedLocCd = "";
    selectedUpperLocId = "";
    selectedItemCd = "";
    selectedMainLocYn = "N";
}
// item search Popup Func
var searchItemPopupWindow;
function selectPartsMasterPopupWindow(e){
    searchItemPopupWindow = dms.window.popup({
        windowId:"searchItemPopupWindow"
        ,title:"<spring:message code='par.title.itemInfo' />"   //itemInfo
        ,content:{
            url:"<c:url value='/par/cmm/selectSearchItemPopup.do'/>"
            ,data:{
                "type":"custom1"
                ,"autoBind":false
                ,"itemCd":$("#sItemCd").val()
                ,"callbackFunc":function(data){
                    if(data.length > 0){
                        var bCheck = false;
                        var grid = $('#gridLoc').data('kendoExtGrid');
                        var checkRows = grid.tbody.find("tr");
                        checkRows.each(function(index, checkRow) {
                            var dataItem = grid.dataItem(checkRow);
                            if(dataItem.itemCd == data[0].itemCd){
                                bCheck = true;
                            }
                        });

                        if(!bCheck){
                            var rows = grid.tbody.find("tr");
                            rows.each(function(index, row) {
                                if(index == 0){
                                    var dataItem = grid.dataItem(row);
                                    dataItem.itemCd = data[0].itemCd;
                                    if(dataItem.dbItemCd == ""){
                                        dataItem.dbItemCd = data[0].itemCd;
                                    }
                                    dataItem.dirty = true;
                                }
                            });
                            grid.refresh();
                        }else{
                            //already message
                            dms.notification.info("<spring:message code='global.info.already' />");
                        }
                    }
                }
            }
        }
    });
}

$(document).ready(function() {
    //btnExpand
    $("#btnExpand").kendoButton({
        click:function(e){
            treelistExpanded(false);
        }
    });
    //btnCollapse
    $("#btnCollapse").kendoButton({
        click:function(e){
            treelistExpanded(true);
        }
    });
    //btnInit
    $("#btnInit").kendoButton({
        click:function(e){
            //search area init
            $("#sStrgeCd").data("kendoExtDropDownList").select(0);
        }
    });

    //btnSearch
    $("#btnSearch").kendoButton({
        click:function(e){
            //strgeCd value check
            if($("#sStrgeCd").val() != ""){
                pageInit();
                // treelist dataSource read
                treeDataSource.read();
                // grid dataSource read
                $("#gridLoc").data("kendoExtGrid").dataSource.read();

            }else{
                //strge selected message
                dms.notification.info("<spring:message code='par.lbl.strge' var='strge' /><spring:message code='global.info.chkSelectItemMsg' arguments='${strge}' />");
            }
        }
    });
    //btnAdd
    $("#btnAdd").kendoButton({
        click:function(e){
            //strgeCd value check
            if($("#sStrgeCd").val() != ""){
                //lvlId
                var vLvlId = selectedLvlId + 1;
                //location level select
                $.ajax({
                    url:"<c:url value='/par/pmm/binLocationMaster/selectBinLocationDefineByKey.do' />"
                    ,data:JSON.stringify({ sLvlId:vLvlId })
                    ,type:"POST"
                    ,dataType:"json"
                    ,contentType:'application/json'
                    ,error:function(jqXHR,status,error){
                        //level check error message
                        dms.notification.info("<spring:message code='par.lbl.locLvl' var='locLvl' /><spring:message code='global.info.locLvlCheckMsg' arguments='${locLvl}' />");
                    }
                    ,success:function(jqXHR, textStatus){
                        //location add
                        var binLocationMasterVO = {
                            "rnum":$('#gridLoc').data('kendoExtGrid').dataSource.total() + 1
                            ,"dlrCd":""
                            ,"locId":""
                            ,"pltCd":""
                            ,"strgeCd":$("#sStrgeCd").val()
                            ,"lvlId":jqXHR.lvlId
                            ,"locCd":""
                            ,"dbLocCd":""
                            ,"locNm":jqXHR.lvlTxt
                            ,"upperLocId":selectedLocCd
                            ,"lastLvlYn":jqXHR.lastLvlYn
                            ,"lmtMngYn":"N"
                            ,"itemCd":""
                            ,"maxQty":0
                            ,"remark":""
                            ,"mainLocYn":"N"
                            ,"baseLvlId":vLvlId
                            ,"upperLvlId":selectedLocId
                            ,"avlbStockQty":0
                            ,"resvStockQty":0
                            ,"clamStockQty":0
                            ,"dbYn":"N"
                            ,"lgthCnt":jqXHR.lgthCnt
                            ,"cdTp":jqXHR.cdTp
                            ,"lastLvlYn":""
                            ,"regUsrId":null
                            ,"regDt":null
                            ,"updtUsrId":null
                            ,"updtDt":null
                        }
                        $('#gridLoc').data('kendoExtGrid').dataSource.insert(0, binLocationMasterVO);
                    }
                });

            }else{
                //strge selected message
                dms.notification.info("<spring:message code='par.lbl.strge' var='strge' /><spring:message code='global.info.chkSelectItemMsg' arguments='${strge}' />");
            }
        }
    });
    //btnDel
    $("#btnDel").kendoButton({
        click:function(e){
            var grid = $("#gridLoc").data("kendoExtGrid");
            var rows = grid.select();
            var rowCnt = rows.length;

            if(rowCnt > 0){
                rows.each(function(index, row) {
                    grid.removeRow(row);
                });
            }
            else{
                //delete item select message
                dms.notification.info("<spring:message code='par.lbl.delItem' var='delItemMsg' /><spring:message code='global.info.chkSelectItemMsg' arguments='${delItemMsg}' />");
            }
        }
    });
    //btnSave
    $("#btnSave").kendoButton({
        click:function(e){

            var grid = $("#gridLoc").data("kendoExtGrid");

            if(grid.gridValidation()){
                var multiBinLocationMasters = grid.getCUDData("insertList", "updateList", "deleteList");
                if(grid.cudDataLength == 0){
                    dms.notification.info("<spring:message code='global.info.required.change'/>");
                    return;
                }

                $.ajax({
                    url:"<c:url value='/par/pmm/binLocationMaster/multiBinLocationMasters.do' />"
                    ,data:JSON.stringify(multiBinLocationMasters)
                    ,type:'POST'
                    ,dataType:'json'
                    ,contentType:'application/json'
                    ,error:function(jqXHR,status,error){
                        dms.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
                    }
                    ,success:function(jqXHR, textStatus){
                        grid.dataSource._destroyed = [];
                        grid.dataSource.read();
                        //tree datasource read
                        treeDataSource.read();
                        treelistExpanded(true);
                        //success message
                        dms.notification.success("<spring:message code='global.info.success'/>");
                    }
                });
            }else{
                //input value check message
                dms.notification.warning("<spring:message code='global.info.check.input'/>");
            }
        }
    });
    //btnCancel
    $("#btnCancel").kendoButton({
        click:function(e){
            $('#gridLoc').data('kendoExtGrid').cancelChanges();
        }
    });
    //sStrgeCd
    $("#sStrgeCd").kendoExtDropDownList({
        dataTextField:"strgeNm"
        ,dataValueField:"strgeCd"
        ,dataSource:giStrgeCdList
        ,optionLabel:" "
        ,autoBind:false
        ,index:0
    });
    //tree datasource
    var treeDataSource = new kendo.data.TreeListDataSource({
        transport:{
            read:{
                url:"<c:url value='/par/pmm/binLocationMaster/selectBinLocationMasterTreeLists.do' />"
                ,dataType:"json"
                ,type:"POST"
                ,contentType:"application/json"
            }
            ,parameterMap:function(options, operation) {
                if (operation === "read") {

                    var params = {};
                    //strgecd
                    var sStrgeCd = $("#sStrgeCd").val() == "" ? "X":$("#sStrgeCd").val();
                    params["sStrgeCd"] = sStrgeCd;
                    params["sLastLvlYn"] = "N";

                    return kendo.stringify(params);
                }
            }
            ,batch:true
            ,schema:{
                model:{
                    id:"id",
                    expanded:false
                }
            }
        }
    });
    var seletedTreeItems = {};
    //treelist
    $("#treelist").kendoTreeList({
        dataSource:treeDataSource
        ,height:478
        ,selectable:"row"
        ,recorderable:true
        ,change:function(e) {
            var selectedRows = this.select();

            if(selectedRows.length > 0){
                pageInit();
                var dataItem = this.dataItem(selectedRows[0]);
                seletedTreeItems = dataItem;
                selectedLocId = dataItem.id;
                selectedLvlId = dataItem.lvlId;
                selectedLocCd = dataItem.locCd;
                selectedUpperLocId = dataItem.parentId;
                selectedMainLocYn = dataItem.mainLocYn;
                $('#gridLoc').data('kendoExtGrid').dataSource.read();
            }
        }
        ,dataBound: function(e) {

            var rows = e.sender.tbody.children();

            $.each(rows, function(idx, row){
                var row = $(rows[idx]);
                var dataItem = e.sender.dataItem(row);

                if( dataItem != null && dataItem != 'undefined'){
                    //update row reselect.
                    if(dataItem.locCd === seletedTreeItems.locCd){
                        e.sender.tbody.find("tr[data-uid='" + dataItem.uid + "']").addClass("k-state-selected");
                    }
                }
            });

        }
        ,columns:[
            {field:"locNm", title:"<spring:message code='par.lbl.locTree'/>"}//locNm
            ,{field:"locCd", title:"<spring:message code='par.lbl.locLvlCnt'/>"}//locLvlCnt
        ]

    });
    //grid
    $("#gridLoc").kendoExtGrid({
        gridId:"G-PAR-0805-191201"
        ,dataSource:{
            transport:{
                read:{
                    url:"<c:url value='/par/pmm/binLocationMaster/selectBinLocationMasters.do' />"
                }
                ,parameterMap:function(options, operation) {
                    if (operation === "read") {

                        var params = {};

                        params["recordCountPerPage"] = options.pageSize;
                        params["pageIndex"] = options.page;
                        params["firstIndex"] = options.skip;
                        params["lastIndex"] = options.skip + options.take;
                        params["sort"] = options.sort;
                        //strgeCd
                        var sStrgeCd = $("#sStrgeCd").val() == "" ? "X":$("#sStrgeCd").val();
                        params["sStrgeCd"] = sStrgeCd;
                        params["sLvlId"] = selectedLvlId + 1;
                        params["sUpperLocId"] = selectedLocCd;
                        params["sMainLocYn"] = "N";

                        return kendo.stringify(params);
                    }
                }
            }
            ,schema:{
                model:{
                    id:"locId"
                    ,fields:{
                        rnum:{ type:"number" }
                        ,dlrCd:{ type:"string" , validation:{required:true} }
                        ,locId:{ type:"string" , validation:{required:true} }
                        ,pltCd:{ type:"string" , validation:{required:true} }
                        ,strgeCd:{ type:"string" , validation:{required:true} }
                        ,lvlId:{ type:"number" , validation:{required:true}, editable:false }
                        ,locCd:{ type:"string" , validation:{required:true}, editable:false }
                        ,dbLocCd:{ type:"string" , validation:{required:true}, editable:false }
                        ,locNm:{ type:"string" , validation:{required:true} }
                        ,upperLocId:{ type:"string" , editable:false }
                        ,lmtMngYn:{ type:"string", defaultValue:"Y", editable:true }
                        ,mainLocYn:{ type:"string" , defaultValue:"Y", editable:true }
                        ,lastLvlYn:{ type:"string" , defaultValue:"Y", editable:false }
                        ,itemCd:{ type:"string" }
                        ,maxQty:{ type:"number" , editable:false}
                        ,remark:{ type:"string" }
                        ,upperLvlId:{ type:"number" , validation:{required:true}, editable:false }
                        ,avlbStockQty:{ type:"number" , editable:false}
                        ,resvStockQty:{ type:"number" , editable:false}
                        ,clamStockQty:{ type:"number" , editable:false}
                        ,dbYn:{ type:"string" , defaultValue:"N" }
                        ,lgthCnt:{ type:"number" }
                        ,cdTp:{ type:"string" }
                        ,lastLvlYn:{ type:"string" }
                        ,upperLvlTxt:{ type:"string" , editable:false }
                        ,lvlTxt:{ type:"string" , editable:false }
                        ,regUsrId:{ type:"string" }
                        ,regDt:{ type:"string" }
                        ,updtUsrId:{ type:"string" }
                        ,updtDt:{ type:"string" }
                    }
                }
            }
        }
        ,edit:function(e){
            var grid = this,
            fieldName = grid.columns[e.container.index()].field;
        }
        ,selectable:"multiple, row"
        ,height:478
        ,multiSelectWithCheckbox:false
        ,appendEmptyColumn:true//default:false
        ,filterable:false
        ,pageable:false
        ,dataBound:function(e){
            var rows = e.sender.tbody.children();

            if(rows.length > 0){
                var row = $(rows[0]);
                var dataItem = e.sender.dataItem(row);

                if(dataItem.dbYn === "N"){
                    //row add cell focus
                    var sender = e.sender;
                    var cellToEdit = sender.content.find("td:eq(2)");
                    sender.editCell(cellToEdit);
                }
            }
        }
        ,columns:[
            /* {field:"upperLvlTxt", title:"<spring:message code='par.lbl.locTree'/>", width:120 }//locTree
            ,{field:"upperLvlId", title:"<spring:message code='par.lbl.locLvlCnt'/>", attributes:{"class":"ar"}, width:100 }//locLvlCnt */
            {field:"lvlId", title:"<spring:message code='par.lbl.lvlId'/>", attributes:{"class":"ar"}, width:100 }//lvlId
            ,{field:"lvlTxt", title:"<spring:message code='par.lbl.lvlTxt'/>", width:150 }//lvlTxt
            ,{field:"locId", title:"<spring:message code='par.lbl.locId'/>"
                , width:200
                ,editor:function(container, options){
                    var strAlpaCdTp = "L";
                    var strAllCdTp = "C";
                    var strMask = "";
                    var iLgthCnt = options.model.lgthCnt;
                    var cdTp = options.model.cdTp;

                    if(cdTp == "N"){
                        strCdTp = "0";
                    }else if(cdTp == "U" || cdTp == "L"){
                        strCdTp = strAlpaCdTp;
                    }else{
                        strCdTp = strAllCdTp;
                    }

                    for(var i = 0; i < iLgthCnt;i++){
                        strMask += strCdTp;
                    }

                    $('<input required name="locId" data-bind="value:' + options.field + '" type="text" />')
                    .appendTo(container)
                    .kendoMaskedTextBox({
                        mask:strMask
                        ,promptChar:" "
                    })
                    .bind("keyup", function(){
                        var that = $(this).data("kendoMaskedTextBox");
                        if (cdTp == "U") {
                            this.value = that.raw().toUpperCase();
                        } else if (cdTp == "L") {
                            this.value = that.raw().toLowerCase();
                        } else {
                            this.value = that.raw();
                        }
                    });
                }
            }//locId
            ,{ field:"locNm", title:"<spring:message code='par.lbl.locNm'/>", width:200 }//locNm
            /* ,{ field:"itemCd", title:"<spring:message code='par.lbl.mgrItemCd'/>"
                ,width:150
                ,editor:function(container, options){
                    $('<div class="form_search" style="width:100%"><input required data-bind="value:' + options.field + '" class="form_input" style="width:100%"  /><a href="#" onclick="javascript:selectPartsMasterPopupWindow(this);"></a></div>').appendTo(container);
                }

            }//itemCd */
        ]
    });

});
</script>
<!-- //script -->

