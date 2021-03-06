<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>

<!-- 날짜, 통화 -->
<dms:configValue code='dateFormat' var="_dateFormat" />
<dms:configValue code='dateTimeFormat' var="_dateTimeFormat" />

<section class="group">
    <!-- 조회 조건 타이틀 시작 -->
	<div class="header_area">
        <h1 class="title_basic"><spring:message code='sal.title.corpStockConditionDlr' /></h1>     <!-- [딜러]법인재고현황[전략오더] -->
		<div class="btn_right">
            <dms:access viewId="VIEW-D-10966" hasPermission="${dms:getPermissionMask('READ')}">
                <button id="btnSearch" class="btn_m btn_search"><spring:message code='global.btn.search' /></button>    <!-- 조회 -->
            </dms:access>
		</div>
	</div>
    <!-- 조회 조건 타이틀 종료 -->

    <!-- 조회 조건 시작 -->
	<div class="table_form" role="search" data-btnid="btnSearch">
		<table>
			<caption></caption>
			<colgroup>
				<col style="width:8%;">
                <col style="width:12%;">
                <col style="width:8%;">
                <col style="width:12%;">
                <col style="width:8%;">
                <col style="width:12%;">
                <col style="width:8%;">
                <col style="width:12%;">
                <col style="width:8%;">
                <col style="width:12%;">
			</colgroup>
			<tbody>
				<tr>
					<th scope="row"><spring:message code='global.lbl.carLine' /></th>       <!-- 차종 -->
					<td>
                        <input id="sCarlineCd" class="form_comboBox" />
                    </td>
					<th scope="row"><spring:message code='global.lbl.model' /></th>     <!-- 모델 -->
                    <td>
                        <input id="sModelCd" class="form_comboBox" />
                    </td>
					<th scope="row"><spring:message code='global.lbl.ocn' /></th>       <!-- OCN -->
					<td>
                        <input id="sOcnCd" class="form_comboBox" />
                    </td>
                    <th scope="row"><spring:message code="global.lbl.extColor" /></th> <!-- 외장색 -->
                    <td>
                        <input name="sExtColorCd" id="sExtColorCd" type="text" class="form_comboBox">
                    </td>
                    <th scope="row"><spring:message code="global.lbl.intColor" /></th> <!-- 내장색 -->
                    <td>
                        <input name="sIntColorCd" id="sIntColorCd" type="text" class="form_comboBox">
                    </td>
				</tr>
			</tbody>
		</table>
	</div>
    <!-- 조회 조건 종료 -->

    <!-- 그리드 시작 -->
    <div class="table_grid mt10">
        <div id="grid"></div>
    </div>
    <!-- 그리드 종료 -->
</section>

<script type="text/javascript">

//차종조회
var carLineCdList = [];
<c:forEach var="obj" items="${carLineCdInfo}">
    carLineCdList.push({carlineNm:"${obj.carlineNm}", carlineCd:"${obj.carlineCd}"});
</c:forEach>

//배기등급
var dispGradeList = [];
var dispGradeArray = {};
<c:forEach var="obj" items="${dispGradeDS}">
    dispGradeList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
    dispGradeArray["${obj.cmmCd}"] = "${obj.cmmCdNm}";
</c:forEach>

/******************************************
 * ready ()
 ******************************************/
$(document).ready(function() {

    $("#btnSearch").kendoButton({ // 조회
        enable:true,
        click:function(e){

            $('#grid').data('kendoExtGrid').dataSource.read();

            //기능개발중입니다.
            //dms.notification.warning("<spring:message code = 'sal.info.functionDeveloping'/>");
        }
    });

    //차종
    $("#sCarlineCd").kendoExtDropDownList({
        dataTextField:"carlineNm"
       ,dataValueField:"carlineCd"
       ,dataSource:carLineCdList
       ,optionLabel:" "
       ,select:function(e){
           var dataItem = this.dataItem(e.item);
           $("#sModelCd").data("kendoExtDropDownList").setDataSource([]);
           $("#sModelCd").data("kendoExtDropDownList").enable(true);

           $("#sOcnCd").data("kendoExtDropDownList").setDataSource([]);   // OCN data
           $("#sOcnCd").data("kendoExtDropDownList").enable(false);       // OCN 닫음

           $("#sExtColorCd").data("kendoExtDropDownList").setDataSource([]);
           $("#sExtColorCd").data("kendoExtDropDownList").enable(false);

           $("#sIntColorCd").data("kendoExtDropDownList").setDataSource([]);
           $("#sIntColorCd").data("kendoExtDropDownList").enable(false);

           if(dataItem.carlineCd == ""){
               $("#sModelCd").data("kendoExtDropDownList").setDataSource([]);
               $("#sModelCd").data("kendoExtDropDownList").enable(false);
               return false;
           }

           var responseJson = dms.ajax.getJson({
               url:"<c:url value='/sal/veh/vehicleMaster/selectModel.do' />"
               ,data:JSON.stringify({"carlineCd":dataItem.carlineCd})
               ,async:false
           });
           $("#sModelCd").data("kendoExtDropDownList").setDataSource(responseJson.data);
       }
    });

    // 모델
    $("#sModelCd").kendoExtDropDownList({
        dataTextField:"modelNm"
       ,dataValueField:"modelCd"
       ,optionLabel:" "
       ,select:function(e){
           var dataItem = this.dataItem(e.item);
           $("#sOcnCd").data("kendoExtDropDownList").setDataSource([]);
           $("#sOcnCd").data("kendoExtDropDownList").enable(true);

           $("#sExtColorCd").data("kendoExtDropDownList").setDataSource([]);
           $("#sExtColorCd").data("kendoExtDropDownList").enable(false);

           $("#sIntColorCd").data("kendoExtDropDownList").setDataSource([]);
           $("#sIntColorCd").data("kendoExtDropDownList").enable(false);

           if(dataItem.modelCd == ""){
               $("#sOcnCd").data("kendoExtDropDownList").setDataSource([]);
               $("#sOcnCd").data("kendoExtDropDownList").enable(false);
               return false;
           }
           var responseJson = dms.ajax.getJson({
               url:"<c:url value='/sal/veh/vehicleMaster/selectOcn.do' />"
               ,data:JSON.stringify({"carlineCd":$("#sCarlineCd").val(), "modelCd":dataItem.modelCd})
               ,async:false
           });
           $("#sOcnCd").data("kendoExtDropDownList").setDataSource(responseJson.data);
       }
    });
    $("#sModelCd").data("kendoExtDropDownList").enable(false);

    // ocn
    $("#sOcnCd").kendoExtDropDownList({
         dataTextField: "ocnNm"
        ,dataValueField:"ocnCd"
        ,optionLabel:" "
        ,select:function(e){
            $("#sExtColorCd").data("kendoExtDropDownList").setDataSource([]);
            $("#sExtColorCd").data("kendoExtDropDownList").enable(true);

            $("#sIntColorCd").data("kendoExtDropDownList").setDataSource([]);
            $("#sIntColorCd").data("kendoExtDropDownList").enable(false);

            if(this.dataItem(e.item).ocnCd == ""){
                $("#sExtColorCd").data("kendoExtDropDownList").setDataSource([]);
                $("#sExtColorCd").data("kendoExtDropDownList").enable(false);
                return false;
            }

            var responseJson = dms.ajax.getJson({
                url:"<c:url value='/sal/veh/vehicleMaster/selectExtColor.do' />"
                ,data:JSON.stringify({"modelCd":$("#sModelCd").data("kendoExtDropDownList").value() })
                ,async:false
            });
            $("#sExtColorCd").data("kendoExtDropDownList").setDataSource(responseJson.data);
        }
    });
    $("#sOcnCd").data("kendoExtDropDownList").enable(false);

    //외장색
    $("#sExtColorCd").kendoExtDropDownList({
         dataTextField: "extColorNm"
        ,dataValueField:"extColorCd"
        ,optionLabel:" "
        ,select:function(e){
            if(this.dataItem(e.item).extColorCd == ""){
                $("#sIntColorCd").data("kendoExtDropDownList").setDataSource([]);
                $("#sIntColorCd").data("kendoExtDropDownList").enable(false);
                return false;
            }

            $("#sIntColorCd").data("kendoExtDropDownList").setDataSource([]);
            $("#sIntColorCd").data("kendoExtDropDownList").enable(true);

            var responseJson = dms.ajax.getJson({
                url:"<c:url value='/sal/veh/vehicleMaster/selectIntColor.do' />"
                ,data:JSON.stringify({"modelCd":$("#sModelCd").data("kendoExtDropDownList").value() })
                ,async:false
            });
            $("#sIntColorCd").data("kendoExtDropDownList").setDataSource(responseJson.data);
        }
    });
    $("#sExtColorCd").data("kendoExtDropDownList").enable(false);

    //내장색
    $("#sIntColorCd").kendoExtDropDownList({
         dataTextField: "intColorNm"
        ,dataValueField:"intColorCd"
        ,optionLabel:" "
    });
    $("#sIntColorCd").data("kendoExtDropDownList").enable(false);


    $("#grid").kendoExtGrid({
        gridId:"G-SAL-0729-171001"
        ,dataSource:{
            transport:{
                read:{
                    //url:"<c:url value='/sal/stm/corpStockConditionDlr/selectCorpStockConditionDlrSearch.do' />"
                    url:"<c:url value='/sal/stm/corpStockConditionDlr/selectCorpStockConditionDlrSearchs.do' />"
                },
                parameterMap:function(options, operation) {
                    if (operation === "read") {

                        var params = {};

                        params["sCarlineCd"] = $("#sCarlineCd").data("kendoExtDropDownList").value();
                        params["sModelCd"] = $("#sModelCd").data("kendoExtDropDownList").value();
                        params["sOcnCd"] = $("#sOcnCd").data("kendoExtDropDownList").value();

                        params["sExtColorCd"] = $("#sExtColorCd").data("kendoExtDropDownList").value();
                        params["sIntColorCd"] = $("#sIntColorCd").data("kendoExtDropDownList").value();

                        return kendo.stringify(params);
                    }else if (operation !== "read" && options.models) {
                        return kendo.stringify(options.models);
                    }
                }
            }
            ,batch:false
            ,schema:{
                model:{
                    id:"ocnCd",
                    fields:{
                         carlineCd   :{type:"string"}   //차종코드
                        ,carlineNm   :{type:"string"}   //차종명
                        ,modelCd     :{type:"string"}   //모델코드
                        ,modelNm     :{type:"string"}   //모델명
                        ,ocnCd       :{type:"string"}   //OCN코드
                        ,ocnNm       :{type:"string"}   //OCN명
                        ,extColorCd  :{type:"string"}   //외색코드
                        ,intColorCd  :{type:"string"}   //내색코드
                        ,extColorNm  :{type:"string"}   //외색코드명
                        ,intColorNm  :{type:"string"}   //내색코드명
                        ,totStockQty :{type:"number"}
                        ,ordQty      :{type:"number"}
                        ,psntStockQty:{type:"number"}
                        ,retlPrc     :{type:"number"}
                        ,dispGradeCd :{type:"string"}
                    }
                }
            }
        }
       ,indvColumnVisible:true           //컬럼 보이기/감추기 개인화 적용. default:true
       ,indvColumnReorderable:true       //컬럼순서 변경 개인화 적용. default:true
       ,multiSelectWithCheckbox:false    //멀티선택 적용. default:false
       ,appendEmptyColumn:true           //빈컬럼 적용. default:false
       ,enableTooltip:true               //Tooltip 적용, default:false
       ,height:485
       ,editable   :false
       ,resizable  :true
       ,autoBind   :false
       ,selectable :"row"
       ,navigatable:true
       ,sortable:false
       ,pageable:false
       ,columns:[
           {field:"carlineCd", title:"<spring:message code='global.lbl.carlineCd' />", width:80}        //차종코드
          ,{field:"carlineNm", title:"<spring:message code='global.lbl.carlineNm' />", width:120}                     //차종명
          ,{field:"modelCd", title:"<spring:message code='global.lbl.model' />", hidden:true, width:120}             //모델코드
          ,{field:"modelNm", title:"<spring:message code='global.lbl.model' />", width:120}                         //모델명
          ,{field:"ocnCd", title:"<spring:message code='global.lbl.ocnCode' />", width:80}                  //OCN코드
          ,{field:"ocnNm", title:"<spring:message code='global.lbl.ocnNm' />", width:140}                             //OCN명
          ,{field:"extColorCd", title:"<spring:message code='global.lbl.extColorCd' />", width:80,  attributes:{"class":"al"}}    // 외색코드
          ,{field:"extColorNm", title:"<spring:message code='global.lbl.extColorNm' />", width:80,  attributes:{"class":"al"}}    // 외색명
          ,{field:"intColorNm", title:"<spring:message code='global.lbl.intColorNm' />", hidden:true, width:100,  attributes:{"class":"al"}}    // 내색명
          ,{field:"intColorCd", title:"<spring:message code='global.lbl.intColorCd' />", width:80,  attributes:{"class":"al"}}    // 내색코드
          ,{
              field:"totStockQty"
             ,title:"<spring:message code='sal.lbl.totStockQty' />"
             ,attributes:{"class":"ar"}
             ,width:100
             ,format:"{0:n0}"
          } //총재고
          ,{
              field:"ordQty"
             ,title:"<spring:message code='global.lbl.orderQty' />"
             ,attributes:{"class":"ar"}
             ,width:100
             ,format:"{0:n0}"
          } //주문수량
          ,{
              field:"psntStockQty"
             ,title:"<spring:message code='sal.lbl.psntStockQty' />"
             ,attributes:{"class":"ar"}
             ,width:100
             ,format:"{0:n0}"
          } //현재고수량
          ,{
              field:"retlPrc"
             ,title:"<spring:message code='sal.lbl.guideAmt' />"
             ,attributes:{"class":"ar"}
             ,width:100
             ,format:"{0:n0}"
          } //지도가격
          ,{
              field:"dispGradeCd"
             ,title:"<spring:message code='sal.lbl.dispGradeCd' />"
             ,attributes:{"class":"ac"}
             ,width:100
             ,template:"#= dms.string.strNvl(dispGradeArray[dispGradeCd]) #"
          } //배기등급
       ]
   });

});
/******************************************
 * ready () = End =
 ******************************************/


</script>