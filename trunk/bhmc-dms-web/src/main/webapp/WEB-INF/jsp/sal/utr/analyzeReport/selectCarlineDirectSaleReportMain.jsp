<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>

<div class="header_area">
    <div class="btn_right">
        <dms:access viewId="VIEW-D-11193" hasPermission="${dms:getPermissionMask('READ')}">
        <button type="button" class="btn_s btn_search" id="btnSearch" ><spring:message code='global.btn.search' /><!-- 조회 --></button>
        </dms:access>
    </div>
</div>

<div class="table_form">
    <table>
        <caption></caption>
        <colgroup>
            <col style="width:10%;">
            <col style="width:24%;">
            <col style="width:10%;">
            <col style="width:23%;">
            <col style="width:10%;">
            <col>
        </colgroup>
        <tbody>
            <tr>
                <th scope="row"><spring:message code='global.lbl.contractDt' /></th>  <!-- 계약일자 -->
                <td>
                    <div class="form_float">
                        <div class="date_left">
                            <input id="sStartContractDt" class="form_datepicker" />
                            <span class="txt_from">~</span>
                        </div>
                        <div class="date_right">
                            <input id="sEndContractDt" class="form_datepicker" />
                        </div>
                    </div>
                </td>
                <th scope="row"><spring:message code='global.lbl.carLine' /></th>  <!-- 차종 -->
                <td>
                    <input id="sCarlineCd" type="text" class="form_comboBox" />
                </td>
                <th scope="row"></th>
                <td></td>
            </tr>
        </tbody>
    </table>
</div>

<br>

<div class="table_info table_info_v1">
    <form id="frmTotalStatus" method="post">
        <iframe id="iframeSubTotalStatus" src="" frameborder="0" scrolling="auto" width="100%" height="600"></iframe>
    </form>
</div>

<!-- script -->
<script type="text/javascript">

var userId = "${userId}";
var userNm = "${userNm}";
var dlrCd  = "${dlrCd}";

var toDay = "${toDay}";         // 현재일자
var oneDay = "${oneDay}";       // 해당월 1일
var sevenDay = "${sevenDay}";   // 현재일의 7일전
var lastDay = "${lastDay}";     // 해당월 마지막일자
var nextMonthDay = "${nextMonthDay}";   // 현재일 기준 한달후

//차종조회
var carLineCdList = [];
<c:forEach var="obj" items="${carLineCdInfo}">
    carLineCdList.push({carlineNm:"${obj.carlineNm}", carlineCd:"${obj.carlineCd}"});
</c:forEach>

$(document).ready(function() {


    // 계약 시작일
    $("#sStartContractDt").kendoExtMaskedDatePicker({
        format:"<dms:configValue code='dateFormat' />"
        ,dateValidMessage:"<spring:message code='global.lbl.date' var='dateMsg' /><spring:message code='global.err.invalid' arguments='${dateMsg}' />"
        ,value:oneDay
    });

    // 계약 종료일
    $("#sEndContractDt").kendoExtMaskedDatePicker({
        format:"<dms:configValue code='dateFormat' />"
        ,dateValidMessage:"<spring:message code='global.lbl.date' var='dateMsg' /><spring:message code='global.err.invalid' arguments='${dateMsg}' />"
        ,value:toDay
    });

    // 차종
    $("#sCarlineCd").kendoExtDropDownList({
        dataTextField:"carlineNm"
       ,dataValueField:"carlineCd"
       ,dataSource:carLineCdList
       ,optionLabel:" "
    });

    // 조회 - 버튼
    $("#btnSearch").kendoButton({
        click:function(e){
            subTotalStatusCall();
        }
    });

    subTotalStatusCall();

});

// 레포트화면 호출
function subTotalStatusCall(){
    var subTotalStatusUrl = "<c:url value='/ReportServer?reportlet=sale/selectCarlineDirectSaleResult.cpt' />"
      , param = "";

    param += "&sDlrCd="+dlrCd;
    param += "&sCarlineCd="+$("#sCarlineCd").data("kendoExtDropDownList").value();
    param += "&sFromDate="+kendo.toString($("#sStartContractDt").data('kendoExtMaskedDatePicker').value(), "yyyyMMdd");
    param += "&sToDate="+kendo.toString($("#sEndContractDt").data('kendoExtMaskedDatePicker').value(), "yyyyMMdd");

    $("#iframeSubTotalStatus").attr("src", subTotalStatusUrl + param);
}

</script>