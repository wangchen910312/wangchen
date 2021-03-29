<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<script type="text/javascript" src="<c:url value='/resources/js/dms/dms.parts-1.0.js' />"></script>

<!-- 날짜, 통화 -->
<dms:configValue code='dateFormat' var="_dateFormat" />
<dms:configValue code='dateTimeFormat' var="_dateTimeFormat" />

    <section id="content">
    <!-- content_list -->
    <c:import url="/WEB-INF/jsp/ZnewMob/ser/rev/reservationReceipt/listJsp/selectReservationReceiptList.jsp" />
    <!-- content_search -->
    <section id="content_search" class="content_search" style="display:none;">
        <div class="content_title conttitlePrev">
            <h2><spring:message code="ser.menu.reserStatus" /><!-- 예약접수현황 --> <spring:message code="global.title.searchCondition" /><!-- 조회조건  --></h2>
        </div>
        <div class="formarea">
            <table class="flist01">
                <caption></caption>
                <colgroup>
                    <col style="width:30%;">
                    <col style="">
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><spring:message code="ser.lbl.carNo" /><!-- 차량번호 --></th>
                        <td>
                            <div class="f_text"><input id="sCarRegNo" type="text"/></div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><spring:message code="ser.lbl.resvDocNo" /><!-- 수리예약번호 --></th>
                        <td>
                            <div class="f_text"><input id="sResvDocNo" type="text" /></div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><spring:message code='ser.lbl.resvChannel' /><!-- 예약채널 --></th>
                        <td>
                            <div class="f_text"><input id="sResvTp" type="text"/></div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><spring:message code='ser.lbl.resvDt' /><!-- 예약시간 --></th>
                        <td class="f_term">
                            <div class="f_item01" style = "width:82%">
                                <input type="date" id="sSerResvStartFromDt" style="background-color: white;" />
                                <!-- <input type="search" id="sSerResvStartFromDt" style="width:140px" class="" />
                                <span class="date" onclick="calpicker('sSerResvStartFromDt');">날짜선택</span> -->
                            </div><span class="termtext"> ∼</span>
                            <div class="f_item01" style = "width:82%">
                                <input type="date" id="sSerResvStartToDt" style="background-color: white;" />
                                <!-- <input type="search" id="sSerResvStartToDt" style="width:140px" class="" />
                                <span class="date" onclick="calpicker('sSerResvStartToDt');">날짜선택</span> -->
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><spring:message code='ser.lbl.vinNo' /><!-- VinNo --></th>
                        <td>
                            <div class="f_text"><input id="sVinNo" type="text"/></div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><spring:message code='ser.lbl.resvAcceptNm' /><!-- 예약접수자 --></th>
                        <td>
                            <div class="f_text"><input id="sRegUsrNm" type="text"/></div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><spring:message code="ser.lbl.resvStat" /><!-- 예약접수상태 --></th>
                        <td>
                            <div class="f_text"><input id="sResvStatCd" type="text" class="form_comboBox"/></div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><spring:message code='ser.lbl.repairResvDt' /><!-- 수리예약시간 --></th>
                        <td class="f_term">
                            <div class="f_item01" style = "width:82%">
                                <input type="date" id="sResvFromDt" style="width:140px; background-color:#ffffff;" class="" />
                                <!-- <input type="search" id="sResvFromDt" style="width:140px" class="" />
                                <span class="date" onclick="calpicker('sResvFromDt');">날짜선택</span> -->
                            </div><span class="termtext"> ∼</span>
                            <div class="f_item01" style = "width:82%">
                                <input type="date" id="sResvToDt" style="width:140px; background-color:#ffffff;" class="" />
                                <!-- <input type="search" id="sResvToDt" style="width:140px" class="" />
                                <span class="date" onclick="calpicker('sResvToDt');">날짜선택</span> -->
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="con_btnarea btncount2">
            <div><span id="btnInit" class="btnd1"><spring:message code='global.btn.init' /></span></div>
            <dms:access viewId="VIEW-D-12652" hasPermission="${dms:getPermissionMask('READ')}">
                <div><span id="btnSearch" class="btnd1"><span class="search"><spring:message code='global.btn.search' /><!-- 조회 --></span></span></div>
            </dms:access>
        </div>
    </section>
    <!-- content_detail -->
    <div class="content_right" id="itemForm">
        <section id="content_detail" class="content_detail" style="display:none">
            <div class="content_title conttitlePrev">
                <h2><spring:message code="ser.menu.reserStatus" /> <spring:message code="global.lbl.budgetDetlCont" /><!-- 부품예약현황 상세내역 --></h2>
            </div>
            <div class="co_group">
                <div class="formarea" id="formarea">
                    <table  class="flist01">
                        <caption></caption>
                        <colgroup>
                            <col style="width:35%;">
                            <col style="">
                        </colgroup>
                        <tbody id="defaultHtml"><!-- 여기에 디폴트 HTML --></tbody>
                    </table>
                    <div class="content_title">
                        <h2><spring:message code="global.btn.moreInfo" /></h2>
                        <div class="title_btn"><span class="co_open co_close"><span></span></span></div>
                    </div>
                    <div class="co_view" style="display:none;">
                        <table  class="flist01">
                            <caption></caption>
                            <colgroup>
                                <col style="width:35%;">
                                <col style="">
                            </colgroup>
                            <tbody id="hiddenHtml"><!-- 여기에 HIDE HTML --></tbody>
                        </table>
                    </div>
                </div>
            </div>
            <c:import url="/WEB-INF/jsp/ZnewMob/ser/subCmm/selectSubListCustomerDemand.jsp" /><!--고객요청사항-->
            <c:import url="/WEB-INF/jsp/ZnewMob/ser/subCmm/selectSubListLabors.jsp" /><!-- 정비항목 -->
            <c:import url="/WEB-INF/jsp/ZnewMob/ser/subCmm/selectSubListParts.jsp" /><!-- 부품수령 -->
            <c:import url="/WEB-INF/jsp/ZnewMob/ser/subCmm/selectSubListEtcIssues.jsp" /><!-- 기타사항 -->
            <div class="con_btnarea">
                <dms:access viewId="VIEW-D-12653" hasPermission="${dms:getPermissionMask('READ')}">
                    <div><span class="btnd1" id="detailConfirmBtn"><spring:message code='global.btn.close' /><!-- 닫기 --></span></div>
                </dms:access>
            </div>
        </section>
    </div>

    <div id="docu_prev" ><spring:message code="global.btn.pre" /><!-- 이전 --></div>
    <div id="docu_top" style="display:none">TOP</div>
</section>

<script>
var dateFormat =  '<dms:configValue code="dateFormat" />';
var toDt                = "${toDt}",
sevenDtBf           = "${sevenDtBf}";

var fromWhere="selectReservationReceiptMain";
var _sResvDocNo="";

var resvStatCdList = [],
resvStatCdObj = {};
<c:forEach var="obj" items="${resvStatCdList}" varStatus="status">
    resvStatCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
    resvStatCdObj["${obj.cmmCd}"] = "${obj.cmmCdNm}";
</c:forEach>

//공통코드:예약구분
var resvTpCdList = [];
var resvTpCdObj = {};
<c:forEach var="obj" items="${resvTpCdList}">
    resvTpCdList.push({ "cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
    resvTpCdObj["${obj.cmmCd}"] = "${obj.cmmCdNm}";
</c:forEach>

//공통코드:예약접수상태
var resvReptStatCdList = [];
<c:forEach var="obj" items="${resvReptStatCdList}">
    resvReptStatCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
</c:forEach>
var resvReptStatCdArr = dms.data.arrayToMap(resvReptStatCdList, function(obj){return obj.cmmCd});


var resvStat = function(){
    var params ={};
    params.sDlrCd = "${dlrCd}";
    params.sListType = "01";
    params.sCarRegNo = $("#sCarRegNo").val();
    params.sRegUsrNm = $("#sRegUsrNm").val();
    params.sResvTp =$("#sResvTp").data("kendoExtDropDownList").value();
    params.sVinNo = $("#sVinNo").val();
    params.sResvDocNo= $("#sResvDocNo").val();
    params.sResvStatCd= $("#sResvStatCd").data("kendoExtDropDownList").value();

    if($("#sResvFromDt").val() == "" ){
        params.sResvFromDt = null;
    }else{
        params.sResvFromDt = chgDate($("#sResvFromDt").val());
    }
    if($("#sResvToDt").val() == ""){
        params.sResvToDt = null;
    }else{
        params.sResvToDt = chgDate($("#sResvToDt").val());
    }

    if($("#sSerResvStartFromDt").val() == "" ){
        params.sSerResvStartFromDt = null;
    }else{
        params.sSerResvStartFromDt = chgDate($("#sSerResvStartFromDt").val());
    }
    if($("#sSerResvStartToDt").val() == ""){
        params.sSerResvStartToDt = null;
    }else{
        params.sSerResvStartToDt = chgDate($("#sSerResvStartToDt").val());
    }

    $.ajax({
        url:"<c:url value='/ser/rev/reservationReceipt/selectReservationReceiptByStats.do' />",
        data:JSON.stringify(params),
        type:'POST',
        dataType:'json',
        async:false,
        contentType:'application/json',
        error:function(jqXHR,status,error) {
            dms.notification.error(jqXHR.responseJSON.errors);
        },
        success:function(jqXHR, textStatus) {
            //console.log("result : ", jqXHR);
            $("#resvReady").html('<strong>'+jqXHR.aqty+'</strong>');
            $("#resvKeep").html('<strong>'+jqXHR.bqty+'</strong>');
            $("#resvLate").html('<strong>'+jqXHR.cqty+'</strong>');
            $("#resvMiss").html('<strong>'+jqXHR.dqty+'</strong>');
            $("#resvCancel").html('<strong>'+jqXHR.eqty+'</strong>');
        }
    });
}


$(document).ready(function() {

  //조회조건 - 예약상태
    $("#sResvStatCd").kendoExtDropDownList({
         dataTextField:"cmmCdNm"
        ,dataValueField:"cmmCd"
        ,dataSource:dms.data.cmmCdFilter(resvStatCdList)
        ,index:0
        ,optionLabel:"<spring:message code='global.lbl.check'/>"
    });
  //예약채널
    $("#sResvTp").kendoExtDropDownList({
        dataTextField:"cmmCdNm"
        ,dataValueField:"cmmCd"
        ,dataSource:resvTpCdList
        ,optionLabel:"<spring:message code='global.lbl.check'/>"
    });


    // 타이틀
    $("#header_title").html("<spring:message code='ser.menu.reserStatus' />");
    $("#header_title").on("click", moveSearch);$("#header_title").html("<span class='search_open'>"+$("#header_title").html()+"</span>");

    // 목록 조회
    $("#sSerResvStartFromDt").val("${sResvFromDt}");
    $("#sSerResvStartToDt").val(chgServerDate2Str(toDt));
    resvStat();

    // 버튼 - 조회
    $("#btnSearch").click(function(){
        initList();
        contentList();
        resvStat();
    });

 // 버튼 - 초기화
    $("#btnInit").click(function(){
        $("input").val("");
        $("#sResvTp").data("kendoExtDropDownList").value("");
        $("#sResvStatCd").data("kendoExtDropDownList").value("");

        $("#sSerResvStartFromDt").val("${sResvFromDt}");
        $("#sSerResvStartToDt").val(chgServerDate2Str(toDt));
    });

    // 버튼 - 이전
    /* $("#docu_prev").bind("click", function(){
        if ($("#content_list").css("display") == "block") { goMain(); }
        else if ($("#content_search").css("display") == "block") { contentListNonRefresh(); }
        else if ($("#content_detail").css("display") == "block") { contentListNonRefresh(); }
    }); */


});

//메인화면 가기
function goMain() {
  window.open("<c:url value='/mob/cmm/main/selectMain.do'/>", "_self");
}

//목록페이지 보기
function contentList() {
    $("#content_search").css("display","none");
    $("#content_list").css("display","block");$("#header_title span").attr("class","search_open");
    $("#sBayNo").val("");
    listData.read();
}

/* //검색페이지 보기
function contentSearch() {
    $("#content_list").css("display","none");
    $("#content_search").css("display","block");
} */

detailSet = function(data){
    $.ajax({
        url:"<c:url value='/ser/rev/reservationReceipt/selectReservationReceiptByKey.do' />"
        ,data:JSON.stringify({sResvDocNo:data.resvDocNo})
        ,type:'POST'
        ,dataType:'json'
        ,contentType:'application/json'
        ,error:function(jqXHR, status, error) {
            mob.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
        }
        ,success:function(result, textStatus){
            if(dms.string.strNvl(result.resvDocNo) == ""){
            } else {
                trobleDescInfo(result.resvDocNo, "${preFixId}");    // 고객요구사항및 고장설명(selectTabInfo.jsp)
            }
        }
    });
};

//고장설명 조회
trobleDescInfo = function(jobNo, listType){

    tabInfoPreFixId = dms.string.strNvl(listType) == "" ? $("#preFixId").val():listType;
    tabInfoJobNo = jobNo;

    var params = {
        "sPreFixId":tabInfoPreFixId
        ,"sJobNo":tabInfoJobNo
    };

    $.ajax({
        url:"<c:url value='/ser/cmm/tabInfo/selectTrobleDescs.do' />"
        ,data:JSON.stringify(params)
        ,type:'POST'
        ,dataType:'json'
        ,contentType:'application/json'
        ,error:function(jqXHR, status, error) {
            dms.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
        }
        ,success:function(result, textStatus){
            if(result != null){

                trobleDescInfoSet(result);
            }
        }
    });

};


</script>