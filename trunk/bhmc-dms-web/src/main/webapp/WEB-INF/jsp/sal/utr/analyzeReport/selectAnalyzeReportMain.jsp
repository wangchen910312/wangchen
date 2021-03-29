<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>

<!-- 분석보고서 -->
<section class="group" style="height:500%" >
    <div class="header_area">
        <h1 class="title_basic"><spring:message code="sal.title.analyzeReport" /></h1>      <!-- 분석보고서 -->
    </div>

    <!-- 탭메뉴 전체 영역 -->
    <div id="tabstrip" class="tab_area tab_iframe">
        <!-- 탭메뉴 -->
        <ul>
            <li id="tab01" class="k-state-active"><spring:message code="sal.title.fincInfiltrationRateReport" /></li>     <!-- 금융 침투율 통계보고서 -->
            <li id="tab02"><spring:message code="sal.title.incInfiltrationRateReport" /></li>       <!-- 보험 침투율보고서 -->
            <li id="tab03"><spring:message code="sal.title.proInfiltrationRateReport" /></li>       <!-- 이익율 분석보고서 -->
            <li id="tab04"><spring:message code="sal.title.carlineDirectSaleReport" /></li>         <!-- 직판차량 판매업무보고서 -->
        </ul>
        <!-- //탭메뉴 -->

        <!-- 금융 침투율 통계보고서 O -->
        <div class="mt0">
            <iframe id="iframeStatus01" src="" frameborder="0" scrolling="no" width="100%" height="700"></iframe>
        </div>
        <!-- //금융 침투율 통계보고서 -->

        <!-- 보험 침투율보고서 -->
        <div class="mt0">
            <iframe id="iframeStatus02" src="" frameborder="0" scrolling="no" width="100%" height="700"></iframe>
        </div>
        <!-- //보험 침투율보고서 -->

        <!-- 이익율 분석보고서 -->
        <div class="mt0">
            <iframe id="iframeStatus03" src="" frameborder="0" scrolling="no" width="100%" height="700"></iframe>
        </div>
        <!-- //이익율 분석보고서 -->

        <!-- 직판차량 판매업무보고서 O-->
        <div class="mt0">
            <iframe id="iframeStatus04" src="" frameborder="0" scrolling="no" width="100%" height="700"></iframe>
        </div>
        <!-- //직판차량 판매업무보고서 -->
    </div>
    <!-- //탭메뉴 전체 영역 -->
</section>
<!-- //분석보고서 -->

<form name="frmMain" id="frmMain"></form>
<script type="text/javascript">
var selectTabId = "tab01";

$(document).ready(function() {

    $("#tabstrip").kendoExtTabStrip({
        animation:false
        , select:function(e) {
            selectTabId = e.item.id;
            selectTab(selectTabId);
        }
    });

    selectTab(selectTabId);
});

//tab
selectTab = function(tabId){
    var iframeUrl;

    if (tabId == "tab01") {

        if($("#iframeStatus01").attr("src") == ""){
            iframeUrl = "<c:url value='/sal/utr/analyzeReport/selectFinacialUsedResultReportMain.do' />";
            $("#iframeStatus01").attr("src", iframeUrl);
        }

    } else if (tabId == "tab02") {

        if($("#iframeStatus02").attr("src") == ""){
            iframeUrl = "<c:url value='/sal/utr/vehicleReport/selectDlrSalesReportMain.do' />";
            $("#iframeStatus02").attr("src", iframeUrl);
        }

    } else if (tabId == "tab03") {
        if($("#iframeStatus03").attr("src") == ""){
            iframeUrl = "<c:url value='/sal/utr/statsReport/selectAccessorySalesReportMain.do' />";
            $("#iframeStatus03").attr("src", iframeUrl);
        }

    } else if (tabId == "tab04") {
        if($("#iframeStatus04").attr("src") == ""){
            iframeUrl = "<c:url value='/sal/utr/analyzeReport/selectCarlineDirectSaleReportMain.do' />";
            $("#iframeStatus04").attr("src", iframeUrl);
        }
    }

}
</script>