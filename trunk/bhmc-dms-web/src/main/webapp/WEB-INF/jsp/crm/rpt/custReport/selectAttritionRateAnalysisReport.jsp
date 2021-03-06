<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<script type="text/javascript" src="<c:url value='/resources/js/dms/dms.crm-1.0.js' />"></script>

<!-- <div class="fsearch_area"> -->
    <div class="header_area">
        <div class="btn_right">
            <button type="button" class="btn_s btn_search" id="btnReportSearch" name="btnReportSearch"><spring:message code='global.btn.search' /><!-- 조회 --></button>
        </div>
    </div>
<!-- </div> -->

<div class="table_info table_info_v1">
    <iframe id="iframeReport" name="iframeReport" src="" frameborder="0" scrolling="no" width="100%" height="600" class="report" data-offset="10"></iframe>
</div>

<!-- script -->
<script type="text/javascript">


    function reportCall(){
        var reportParam =  "&sDlrCd="+"<c:out value='${sDlrCd}' />";

        $("#iframeReport").attr("src", "<c:url value='/ReportServer?reportlet=crm/custReport/selectAttritionRateAnalysisReport.cpt' />&op=view"+reportParam);
    };

    $(document).ready(function() {

     // 조회 - 버튼
        $("#btnReportSearch").kendoButton({
            click:function(e){}
        });
        reportCall();
    });
</script>