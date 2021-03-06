<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.springframework.context.i18n.LocaleContextHolder"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="springLocaleLanguageLanguage" scope="session" value="<%=LocaleContextHolder.getLocale().getLanguage()%>" />
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<title>BHMC-DMS</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/kendo/kendo.common.min.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/kendo/kendo.default.min.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/common.css"/>">
<script type="text/javascript" src="<c:url value="/resources/js/jquery-2.1.4.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/kendo/kendo.all.min.js"/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/kendo/cultures/kendo.cuspringLocaleLanguagengLocaleLanguage}.min.js' />"></script>
<!--[if lt IE 9]>
    <script src="<c:url value="/resources/js/html5shiv.js"/>"></script>
<![endif]-->


<%-- 자바스크립트 전역변수:컨텍스트 경로 --%>
<script type="text/javascript">var _contextPath = "${pageContext.request.contextPath}";</script>

<script type="text/javascript" src="<c:url value='/resources/js/dms/dms.common-1.0.js' />"></script>
<script type="text/javascript" src="<c:url value='/cmm/sci/js/selectCultureSettings.do' />"></script>
<script type="text/javascript" src="<c:url value='/resources/js/dms/kendo.ui.ext-1.0.js' />"></script>
<script type="text/javascript" src="<c:url value='/resources/js/dms/jquery.ext-1.0.js' />"></script>

<style type="text/css">
.tbl_list { width:100%;}
.tbl_list th { padding:7px 1px 4px; border:1px solid #ccc; background:#e0e6eb; color:#303030; font-weight:normal; line-height:1.2;}
.tbl_list td { padding:7px 9px 4px; border:1px solid #e5e5e5;}
.tbl_list td a { color:#303030;}
.tbl_list td a.hasLink { color:#1580db; text-decoration:underline;}
.tbl_list tr.trbg { background:#f8f8f8;}
.tbl_list tr.red td, .tbl_list tr.red td a { color:#ed1c24!important;}
.tbl_list tbody tr:nth-child(2n) { background-color:#fafafa;}
h1 { padding:10px 0 5px; font-size:16px;}
</style>
<script type="text/javascript">
    $(document).ready(function(){
       $("[href!='#']").addClass("hasLink");
    });
</script>
</head>
<body>

    <div id="go_top" style="padding:10px;">
        <h1>개발화면 리스트</h1>
        <table class="tbl_list">
            <caption></caption>
            <colgroup>
                <col style="width:15%;">
                <col style="width:15%;">
                <col style="width:70%;">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">1depth</th>
                    <th scope="col">2depth</th>
                    <th scope="col">3depth - 화면링크</th>
                </tr>
            </thead>
            <tbody>


                <!-- 공통영역 시작 -->
                <!-- 회사정보 -->
                <tr>
                    <td>환경설정</td>
                    <td>회사정보</td>
                    <td><a href="<c:url value='/cmm/cmp/dealer/selectDealerMain.do'/>">딜러정보[DCS]</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/cmp/dealer/selectDealerMain2.do'/>">딜러정보[DMS]</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/cmp/plant/selectPlantMain.do'/>">센터정보[DCS]</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/cmp/plant/selectPlantMain2.do'/>">센터정보[DMS]</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/cmp/storage/selectStorageMain.do'/>">창고정보[DCS]</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/cmp/storage/selectStorageMain2.do'/>">창고정보[DMS]</a></td>
                </tr>

                <!-- 시스템기준정보 -->
                <tr>
                    <td></td>
                    <td>시스템기준정보</td>
                    <td><a href="<c:url value='/cmm/sci/systemConfigInfo/selectSystemConfigInfoMain.do'/>">시스템설정관리</a></td>
                </tr>
                <!-- 국가코드 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/sci/country/selectCountryMain.do'/>">국가코드관리</a></td>
                </tr>
                <!-- 언어코드 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/sci/languageCode/selectLanguageCodeMain.do'/>">언어코드관리</a></td>
                </tr>
                <!-- 지역코드 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/sci/distCode/selectDistCodeMain.do'/>">지역코드관리</a></td>
                </tr>
                <!-- 통화코드 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/sci/currency/selectCurrencyMain.do'/>">통화코드관리</a></td>
                </tr>
                <!-- 단위정보 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/sci/unitInfo/selectUnitInfoMain.do'/>">단위정보관리</a></td>
                </tr>


                <!-- 우편번호관리 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/sci/zipCode/selectZipCodeMain.do'/>">우편번호관리</a></td>
                </tr>

                <!-- 공통코드 -->
                <tr>
                    <td></td>
                    <td>공통코드</td>
                    <td><a href="<c:url value='/cmm/sci/commonCode/selectCommonCodeMain.do'/>">공통코드</a></td>
                </tr>

                <!-- 메세지소스 -->
                <tr>
                    <td></td>
                    <td>메세지소스관리</td>
                    <td><a href="<c:url value='/cmm/sci/dbMessageSource/selectDBMessageSourceMain.do'/>">메세지소스관리</a></td>
                </tr>



                <!-- 사용자관리 -->
                <tr>
                    <td></td>
                    <td>사용자관리</td>
                    <td><a href="<c:url value='/cmm/sci/user/selectUserMain.do'/>">사용자관리</a></td>
                </tr>

                <!-- 배치작업관리 -->
                <tr>
                    <td></td>
                    <td>배치작업관리</td>
                    <td><a href="<c:url value='/bat/mgr/batchOper/selectBatchOperMain.do'/>">배치작업관리</a></td>
                </tr>

                <!-- 보호자원관리 -->
                <tr>
                    <td></td>
                    <td>권한관리</td>
                    <td><a href="<c:url value='/cmm/ath/securedResource/selectSecuredResourceMain.do'/>">보호자원관리</a></td>
                </tr>

                <!-- 역할관리 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/ath/role/selectRoleMain.do'/>">역할관리</a></td>
                </tr>

                <!-- 화면관리 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/ath/viewInfo/selectViewInfoMain.do'/>">화면관리</a></td>
                </tr>

                <!-- 템플릿 관리 -->
                <tr>
                    <td></td>
                    <td>메세지 템플릿 관리</td>
                    <td><a href="<c:url value='/cmm/tmp/messageTemplate/selectMessageTemplateMain.do'/>">메세지템플릿관리</a></td>
                </tr>

                <!-- 알림정책 관리 -->
                <tr>
                    <td></td>
                    <td>알림정책 관리</td>
                    <td><a href="<c:url value='/cmm/nms/notificationPolicy/selectNotificationPolicyMain.do'/>">알림정책관리</a></td>
                </tr>


                <!-- 포틀릿 관리 -->
                <tr>
                    <td></td>
                    <td>포틀릿 관리</td>
                    <td><a href="<c:url value='/cmm/ptl/portletLayout/selectPortletLayoutMain.do'/>">포틀릿 레이아웃 관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/ptl/portlet/selectPortletMain.do'/>">포틀릿 관리</a></td>
                </tr>

                <!-- 사용자 정의 신청 -->
                <tr>
                    <td></td>
                    <td>사용자 정의 신청</td>
                    <td><a href="<c:url value='/cmm/sci/userDefined/selectUserDefinedMain.do'/>">사용자 정의 신청</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/sci/userDefinedApply/selectUserDefinedApplyMain.do'/>">사용자정의관리</a></td>
                </tr>



                <!-- 공통팝업 -->
                <tr>
                    <td>공통기능</td>
                    <td>팝업</td>
                    <td><a href="javascript:countrySearchPopup()">국가조회팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:userSearchPopup()">사용자조회팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:dealerSearchPopup()">딜러조회팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:zipCodeSearchPopup()">우편번호조회팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <div>바디전체</div>
                        <div>
                            <a href="javascript:dms.loading.show()">dms.loading.show()</a>,&nbsp;&nbsp;
                            <a href="javascript:dms.loading.hide()">dms.loading.hide())</a>
                        </div>

                        <div>특정영역</div>
                        <div>
                            <a href="javascript:dms.loading.show($('#loadingTest'))">dms.loading.show($('#loadingTest'))</a>,&nbsp;&nbsp;
                            <a href="javascript:dms.loading.hide($('#loadingTest'))">dms.loading.hide($('#loadingTest'))</a>

                            <div id="loadingTest" style="height:100px;border:1px solid #E5E5E5;">test</div>
                        </div>
                      </td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/cmm/ath/login/selectLogoutAction.do' />">로그아웃</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/samples/selectResumableFileUploadMain.do' />">파일업로드</a></td>
                </tr>



                <!-- 공통영역 종료 -->

                <!-- 부품 영역 시작 -->
                <!-- 기준정보 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>부품정보</td>
                    <td>기준정보</td>
                    <td><a href="<c:url value='/par/pmm/itemGroup/selectItemGroupMain.do'/>">품목그룹관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/itemGroup/selectItemGroupLevelMain.do'/>">품목그룹레벨관리</a></td>
                </tr>
                <%-- <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/issueType/selectIssueTypeMain.do'/>">출고유형관리</a></td>
                </tr> --%>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/movementType/selectMovementTypeMain.do'/>">입출고유형관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/binLocationMaster/selectBinLocationDefineMain.do'/>">로케이션설정</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/binLocationMaster/selectBinLocationMasterMain.do'/>">로케이션등록</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/binLocationMaster/selectBinLocationMasterMaintenanceMain.do'/>">부번별로케이션</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/safetyStock/selectSafetyStockParameterMain.do'/>">안전재고산출 파라미터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/safetyStock/selectSafetyStockCalculateMain.do'/>">안전재고산출</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/safetyStock/selectSafetyStockManageMain.do'/>">안전재고관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/safetyStock/selectSafetyStockMain.do'/>">안전재고조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/stm/stockMovement/selectStorageMain.do'/>">창고간 재고이동</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/itemMaster/selectItemMasterMain.do'/>">부품마스터관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/itemMaster/selectItemMasterSendMain.do'/>">부품마스터송신(DMS=>DCS)관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/itemMaster/selectItemMasterStockSendMain.do'/>">부품마스터재고송신(DMS=>DCS)관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/itemMaster/selecComtItemMasterMain.do'/>">공용부품마스터관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/venderMaster/selectVenderMasterMain.do'/>">공급상관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/venderMaster/selectVenderMasterDisableMain.do'/>">공급상조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/venderMaster/selectVenderCustomerMasterMain.do'/>">고객관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/partsPriceMaster/selectPartsPriceMasterMain.do'/>">가격마스터관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/partsPriceMaster/selectPartsPriceMasterDisableMain.do'/>">가격마스터조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/partsPriceMaster/selectPartsPriceSalMasterMain.do'/>">판매가 생성 대상선정</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/partsPriceMaster/selectPartsPriceSalMasterOperMain.do'/>">판매가 생성 대상선정(변경)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/partsPriceMaster/selectPartsPriceSalHistoryMain.do'/>">판매가 히스토리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/partsPriceMaster/selectPartsPriceSalHistoryOperMain.do'/>">판매가 히스토리(변경)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/itemClass/selectItemClassMain.do'/>">부품등급조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <a href="<c:url value='/par/stm/stockInOut/selectStockInOut.do'/>">현재고리스트(장은정)</a>
                        <script type="text/javascript">
                        if(location.href.indexOf("localhost") != -1){
                            document.write("<img src=\"<c:url value='/resources/img/rose.jpg'/>\"  width=\"30\" />");
                        }
                        </script>

                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/mvtDoc/selectMvtDocTest.do'/>">수불테스트</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/mvtDoc/selectMvtDoc.do'/>">수불문서조회</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/stm/investigation/selectInvestigationMain.do'/>">재고실사 대상선정</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/stm/investigation/selectInvestigationManageMain.do'/>">재고실사 결과등록</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/stm/investigation/selectInvestigationList.do'/>">재고실사 현황</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/stm/investigation/selectInvestigationApproveMain.do'/>">재고조정 승인</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/certification/selectCertReqMain.do'/>">합격증 신청</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pmm/certification/selectCertList.do'/>">합격증 조회</a></td>
                </tr>

                <!--
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">적정재고 파라미터 관리_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">적정재고산출_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">적정재고관리_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">적정재고조회_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">수불유형관리_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">출고유형관리_(미작업)</a></td>
                </tr> -->
                <tr>
                    <td></td>
                    <td>구매관리</td>
                    <td><a href="<c:url value='/par/pcm/purcRqst/selectPurcRqstMain.do'/>">구매요청조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/purcCost/selectPurcCostCalculateMain.do'/>">구매소요량산출</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/purcCost/selectPurcCostManageMain.do'/>">구매소요량관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/purcCost/selectPurcCostDisableMain.do'/>">구매소요량조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/purcOrd/selectPurcOrdMain.do'/>">구매오더등록</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/purcOrd/selectPurcOrdList.do'/>">구매오더관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/invc/selectInvcMain.do'/>">송장등록</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/invc/selectInvcList.do'/>">송장관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/receive/selectReceiveCnfmMain.do'/>">입고확정</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/receive/selectReceiveCnfmList.do'/>">입고현황</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/claim/selectClaimRegMain.do'/>">클레임등록</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/claim/selectClaimManageMain.do'/>">클레임관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/claim/selectExcessClaimMgrList.do'/>">과부족클레임관리</a></td>
                </tr>
                <!--
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">구매소요량조회_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">부품별구매현황_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">공급처별구매현황_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">반품송장등록_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">송장현황_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">입고반품확정_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">부품별입고현황_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">클레임결과반영_(미작업)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="#">클레임현황_(미작업)</a></td>
                </tr> -->
                <%-- <tr>
                    <td></td>
                    <td>출고관리</td>
                    <td><a href="<c:url value='/par/ism/issueReq/selectIssueReqMain.do'/>">출고요청관리</a></td>
                </tr> --%>
                <tr>
                    <td></td>
                    <td>출고관리</td>
                    <td><a href="<c:url value='/par/ism/issueReq/selectIssueReqServiceWorkMain.do'/>">정비부품투입</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issueReq/selectIssueReqServiceWorkAllMain.do'/>">정비수령(전체)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issueReq/selectIssueReqServiceWorkInnerMain.do'/>">내부수령</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issueReq/selectIssueReqStatusMain.do'/>">정비수령조회</a></td>
                </tr>
                <%-- <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issueReq/selectIssueReqServiceMain.do'/>">서비스_출고요청_(API)</a></td>
                </tr> --%>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issueReq/selectIssueReqConfirmMain.do'/>">출고확정관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issueReq/selectIssueReqConfirmStatusMain.do'/>">출고현황</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>부품예약</td>
                    <td><a href="<c:url value='/par/ism/issueReserve/selectIssuePartsReserveMain.do'/>">부품예약(사용안함)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issueReserve/selectIssuePartsReserveHesitationMain.do'/>">유보(사용안함)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issueReserve/selectIssuePartsReserveStatusMain.do'/>">부품예약현황(사용안함)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issueReserve/selectIssuePartsReserveReadyMain.do'/>">준비수령</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issueReserve/selectIssuePartsReserveReadyActMain.do'/>">부품예류</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>판매관리</td>
                    <td><a href="<c:url value='/par/ism/issue/selectPartsSaleOrdMain.do'/>">부품판매</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/ism/issue/selectPartsSaleOrdList.do'/>">부품판매현황</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>법인</td>
                    <td><a href="<c:url value='/par/cpm/advanceReceivedInfo/selectAdvanceReceivedInfoMain.do'/>">선수금조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/cpm/advanceReceivedInfo/selectAdvanceReceivedInfoSendMain.do'/>">선수금전송(DMS==>DCS)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/cpm/leaveItem/selectLeaveItemMain.do'/>">방치품신청</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/cpm/leaveItem/selectLeaveItemMgrMain.do'/>">방치품관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/packageManage/selectPartsPackageMain.do'/>">부품패키지관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/cpm/corpSalesAchievements/selectSalesAchievementsMain.do'/>">실적관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/cpm/corpSalesAchievements/selectSalesAchievementsPlanMain.do'/>">임무관리계획</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/cpm/corpSalesAchievements/selectSalesAchievementsPlanActMain.do'/>">임무관리계획및실적</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/cpm/salesRanking/selectSalesRankingMain.do'/>">매출순위조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/cpm/skillQna/selectSkillQnaMain.do'/>">문답관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/cpm/electronReceipt/selectElectronReceiptMain.do'/>">전자영수증</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/purcBackOrd/selectPurcBackOrdMain.do'/>">B/O</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/par/pcm/receive/selectReceiveInitByVersionTrdDataMain.do'/>">기초재고입고 V3</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>팝업</td>
                    <td><a href="javascript:venderSearchPopup()">거래처조회팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:supplierSearchPopup()">공급처조회팝업</a></td>
                </tr>

                <!-- 부품영역 종료 -->

                <!-- 판매영역 시작 -->
                <!-- 기준정보 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>판매</td>
                    <td>기준정보</td>
                    <td><a href="<c:url value='/sal/veh/vehicleSpec/selectVehicleSpecModelOcnPriceMain.do'/>">VehicleSpec-FSC Price</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/btc/vehicleSettlementOrder/selectVehicleSettlementOrderMain.do'/>">완성차정산순서</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/vehicleSpec/selectVehicleSpecModelMain.do'/>">Vehicle Spec-모델</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/vehicleSpec/selectLocalOptionMain.do'/>">Vehicle Spec-로컬옵션</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/localOptionMapping/selectLocalOptionMappingMain.do'/>">Vehicle Spec-모델로컬옵션맵핑</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/localOptionPrice/selectLocalOptionPriceMain.do'/>">Vehicle Spec-로컬옵션 Price</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/vehicleSpec/selectVehicleSpecOptionMain.do'/>">Vehicle Spec-옵션코드</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/modelPackage/selectModelPackageMain.do'/>">Vehicle Spec-FSC</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/vehicleSpec/selectVehicleSpecOuterColorMain.do'/>">Vehicle Spec-외장색코드</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/vehicleSpec/selectVehicleSpecInnerColorMain.do'/>">Vehicle Spec-내장색코드</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/vehicleSpec/selectVehicleSpecModelColorMain.do'/>">Vehicle Spec-모델별컬러</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/vehicleSpec/selectVehicleSpecCarlineMain.do'/>">Vehicle Spec-차종</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/ocn/selectOcnMain.do'/>">Vehicle Spec-OCN구성</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/veh/vehicleMaster/selectVehicleMasterMain.do'/>">차량마스터관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/dsc/judgeStepFix/selectJudgeStepFixMain.do'/>">일상업무등급관리(심사단계설정)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/dsc/authorityFix/selectAuthorityFixMain.do'/>">일상업무 권한 관리(권한설정)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/btc/secondDealer/selectSecondDealerMain.do'/>">2급딜러정보</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/ctl/ddlCtrl/selectDeadlineCtrlMngMain.do'/>">마감시간통계관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/mst/positionsDiscount/selectPositionsDiscountMain.do'/>">직책별 할인금액 관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/mst/weeklySchedule/selectWeeklyScheduleMain.do'/>">주간계획</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/dlr/distDlr/selectDistDealerMngMain.do'/>">지역사무소관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>마케팅관리</td>
                    <td><a href="<c:url value='/sal/prm/promotion/selectPromotionMain.do'/>">프로모션관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/bsc/financialProductsManagement/selectFinancialProductsManagementMain.do'/>">금융상품관리(할부,리스)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/bsc/financialProductMng/selectFinancialProductMngMain.do'/>">금융상품관리V.2</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/prm/salesAllowance/selectSalesAllowanceMain.do'/>">Sales Allowance</a></td>
                </tr>
               <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/acu/contBeforeMng/selectContBeforeMngMain.do'/>">예약판매</a></td>
                </tr>
               <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/cnt/contractRe/selectContractReMain.do'/>">계약품의관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/cnt/contractMnt/selectContractMntMain.do'/>">계약관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/cnt/contractBefore/selectContractBeforeMain.do'/>">전략출고(선출고)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>계약출고관리</td>
                    <td><a href="<c:url value='/sal/cnt/contractCondition/selectProgressStsMain.do'/>">계약품의현황</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/dlv/contDelivery/selectContDeliveryMngMain.do'/>">계약출고</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/orm/btoCreateOrder/selectBtoCreateOrderMain.do'/>">BTO 주문생성</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/orm/btoSearchOrder/selectBtoSearchOrderMain.do'/>">BTO 주문조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/cnt/contractCondition/selectProgressMain.do'/>">계약품의진척</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/cnt/contractCondition/selectProgressKanbanMain.do'/>">계약품의진척(간반차트)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/ass/vehicleAssign/selectAssignMngMain.do'/>">배정관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/ctm/deliveryAsk/selectDeliveryAskMain.do'/>">출고요청관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/ctm/deliveryFix/selectDeliveryFixMain.do'/>">출고확정관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/dlv/vehicleDelivery/selectDeliveryMngMain.do'/>">고객인도관리[소매]</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/dlv/groupSalesDelivery/selectGroupSalesDeliveryMain.do'/>">고객인도관리[집단판매]</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/dlv/cancDelivery/selectCancDeliveryMain.do'/>">이월소매취소결과조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/dlv/cancDeliveryApprove/selectCancDeliveryApproveMain.do'/>">이월소매취소승인</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>집단판매</td>
                    <td><a href="<c:url value='/sal/cnt/contractPackage/selectContractPackageMain.do'/>">집단판매</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>특수차량주문</td>
                    <td><a href="<c:url value='/sal/svo/askHelpCar/selectAskHelpCarMain.do'/>">구원차/대부차량 신청</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/svo/askHelpCar/selectAskHelpCarJudgeMain.do'/>">구원차/대부차량 심사</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/svo/testDriveVehicle/selectReqTestDriveVehicleMain.do'/>">시승차량 신청</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/svo/testDriveVehicle/selectTestDriveVehicleInspctMain.do'/>">시승차량 심사</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/svo/specialCarPolicy/selectSpecialCarPolicyMain.do'/>">정책이력현황</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/orc/orderPlacement/selectNotAssignedOrderMain.do'/>">미배정 주문조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/sti/confirmWearingVehicle/selectConfirmWearingVehicleMain.do'/>">완성차 입고확정</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/orm/orderPriorityManagement/selectOrderPriorityManagementMain.do'/>">오더 취소신청 관리</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td>법인</td>
                    <td><a href="<c:url value='/sal/orc/sumOrderCnt/selectSumOrderCntDlrMain.do'/>">종합오더현황-딜러</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/orc/sumOrderCnt/selectSumOrderCntCorpMain.do'/>">종합오더현황-법인</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/orc/dlrOrderSearch/selectDlrOrderSearchMain.do'/>">딜러주문조회</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/svo/packageWork/selectPackageSalesWorkMain.do'/>">집단판매업무신청</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/svo/packageWork/selectPackageSalesWorkJudgeMain.do'/>">집단판매업무심사</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/fas/coercionApproval/selectCoercionApprovalMain.do'/>">강제판매승인</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/orm/orderGradeCondition/selectOrderGradeConditionMain.do'/>">오더등급조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/svo/groupSalesApplication/selectGroupSalesApplicationMain.do'/>">법인-집단판매신청</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/svi/groupSalesReview/selectGroupSalesReviewMain.do'/>">법인-집단판매심사</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/lom/tpVehicleMonitoring/selectTpVehicleMonitoringMain.do'/>">법인-TP차량조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/lom/evalInfoDownload/selectEvalInfoDownloadMain.do'/>">평가정보 다운로드</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/lom/evalSearchEdit/selectEvalSearchEditMain.do'/>">평가조회 및 수정</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/stm/corpStockCondition/selectCorpStockConditionMain.do'/>">법인재고현황(전략오더)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/stm/corpStockConditionDlr/selectCorpStockConditionDlrMain.do'/>">[딜러]법인재고현황(전략오더)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/stm/strOrdOcnBlocking/selectStrOrdOcnBlockingMain.do'/>">전략오더OCN블러킹</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>재고관리</td>
                    <td><a href="<c:url value='/sal/inv/stockMnt/selectStockPotalMain.do'/>">재고관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/inv/stockState/selectStockStateMain.do'/>">재고상태관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/inv/stockView/selectStockViewMain.do'/>">재고조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/inv/stockCondition/selectStockConditionMain.do'/>">재고현황</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/lom/tpVehicleMonitoringDlr/selectTpVehicleMonitoringDlrMain.do'/>">딜러 - TP차량조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/inv/inventoryDueDiligence/selectInventoryDueDiligenceMain.do'/>">재고실사</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/inv/stockDue/selectStockDueMain.do'/>">재고실사(ver.2)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/cmp/cmpCarRunMng/selectCmpCarRunMngMain.do'/>">회사차운행관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/stm/corporateAvailability/selectCorporateAvailabilityMain.do'/>">법인재고현황</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>수납관리</td>
                    <td><a href="<c:url value='/sal/fin/payInfo/selectPayInfoMain.do'/>">수납관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>기타업무</td>
                    <td><a href="<c:url value='/sal/aap/aapMng/selectAapMngMain.do'/>">대행업무관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/aap/aapMng/selectAapMngMain2.do'/>">대행업무관리(ver.2)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/aap/aapInfo/selectAapInfoMain.do'/>">대행업무관리(ver.3)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/orm/maintainOrderInquiry/selectMaintainOrderInquiryMain.do'/>">오더유지 및 조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/orm/maintainOrderQueryResults/selectMaintainOrderQueryResultsMain.do'/>">오더유지 결과조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/obt/obtReq/selectVehicleObtainReqMain.do'/>">차량조달신청관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/exc/dlrExc/selectVehicleDlrExcMain.do'/>">딜러간차량교환관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/inc/incJoinInfo/selectIncJoinInfoMain.do'/>">보험정보관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/inc/incJoinInfo/selectIncJoinInfoMain2.do'/>">보험정보관리(ver.2)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/inc/incPackage/selectIncPackageMain.do'/>">보험패키지관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/inc/incCompSumm/selectIncCompSummMain.do'/>">보험회사업무통계</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/cer/dealerRegistrationReceipt/selectDealerRegistrationReceiptMain.do'/>">딜러 영수증 등록</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/fim/fincInfoMng/selectFincInfoMngMain.do'/>">금융관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>용품관리</td>
                    <td><a href="<c:url value='/sal/acc/accessoryMng/selectAccessoryMngMain.do'/>">경품판매관리</a></td>1
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/acc/packageManage/selectPartsPackageMain.do'/>">용품패키지</a></td>2
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/acc/stockInOut/selectStockInOut.do'/>">재고관리</a></td>4
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/acc/accessoryCondition/selectAccessoryConditionMain.do'/>">용품판매현황</a></td>8
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/acc/accessoryMaster/selectAccessoryMasterMain.do'/>">용품마스터</a></td>8
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/acc/accessoryStock/selectAccessoryStockMain.do'/>">용품입고</a></td>8
                </tr>
                <tr>
                    <td></td>
                    <td>중고차</td>
                    <td><a href="<c:url value='/sal/usc/carMaster/selectUsedCarMasterMain.do'/>">중고차량마스터관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/usc/topSelection/selectCreditListMain.do'/>">인증결과목록</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/usc/purcEval/selectPurcMngMain.do'/>">중고차매입관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/usc/purcEval/selectEvalMngMain.do'/>">중고차평가관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/usc/exchRslt/selectExchRegistMain.do'/>">중고차치환판매심사결과등록</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/usc/exchRslt/selectExchResultMain.do'/>">중고차치환판매심사결과조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/uco/usedCarContract/selectUsedCarContractMain.do'/>">중고차계약품의관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/uco/usedCarProgressSts/selectUsedCarProgressStsMain.do'/>">중고차계약품의현황</a></td>
                </tr>
                <tr>
                    <td>자금현황</td>
                    <td>일자금현황</td>
                    <td><a href="<c:url value='/sal/trm/dayFundStatus/selectDayFundStatusMain.do'/>">일자금현황</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>자금현황(딜러)</td>
                    <td><a href="<c:url value='/sal/trm/fundStatus/selectFundStatusMain.do'/>">자금현황(딜러)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>보고서</td>
                    <td><a href="<c:url value='/sal/utr/vehicleReport/selectVehicleReportMain.do'/>">차량보고서</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/utr/statsReport/selectStatsReportMain.do'/>">통계보고서</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/utr/analyzeReport/selectAnalyzeReportMain.do'/>">분석보고서</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/utr/historyReport/selectHistoryReportMain.do'/>">내역보고서</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/utr/stockReport/selectStockReportMain.do'/>">재고보고서</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/utr/resultReport/selectResultReportMain.do'/>">실적보고서</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/cer/dealerReceiptSearchEdit/selectDealerReceiptSearchEditMain.do'/>">딜러 영수증 조회 및 수정</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/bto/buyPredictedQuantityMngmnt/selectBuyPredictedQuantityMngmntMain.do'/>">주문 예측수량 관리</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td>팝업</td>
                    <td><a href="javascript:contractProgStsPopup()">계약조회팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:vehicleMasterStsPopup()">차량마스터관리 팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:selectGoodsSearchPopup()">계약용품 팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:selectSecondDealerSearchPopup();">2급딜러조회 팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/uva/usedCarPriceManagement/selectUsedCarPriceManagementMain.do'/>">중고차 가격관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td>[퍼블리싱]<br />중고차 평가관리</td>
                    <td><a href="<c:url value='/sal/uva/usedCarBuy/selectUsedCarBuyMain.do'/>">중고차매입관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/uva/usedCarEval/selectUsedCarEvalMain.do'/>">평가관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>중고차</td>
                    <td><a href="javascript:usedCarcontractProgPopup()">계약품의관리 팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/uco/usedCarProgress/selectUsedCarProgressMain.do'/>">계약품의진척</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>중고차 재고관리</td>
                    <td><a href="<c:url value='/sal/uco/usedCarStock/selectUsedCarStockMain.do'/>">중고차재고관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>집단판매</td>
                    <td><a href="<c:url value='/sal/cnt/contractPackage/selectContractPackageOldMain.do'/>">집단판매_OLD</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/usc/uscRepSale/selectUscRepSaleMain.do'/>">중고차치환판매심사결과</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/usc/uscRepSale/selectUscRepSaleCorpMain.do'/>">중고차치환판매법인심사결과</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/usc/uscBasicInfo/selectUscBasicInfoMain.do'/>">기본정보조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/sal/usc/uscBasicInfo/selectUscBasicInfoRegMain.do'/>">기본정보등록관리</a></td>
                </tr>
                <!-- 판매영역 종료 -->

                <!-- CRM 영역 시작 -->
                <!-- 기준정보 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>CRM</td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td>고객</td>
                    <td><a href="<c:url value='/crm/cif/customerInfo/selectCustomerInfoRegMain.do'/>" target="_blank">고객등록(개인)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cif/customerInfo/selectCustomerInfoCompanyRegMain.do'/>" target="_blank">고객등록(법인)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cif/customerInfo/selectCustomerInfoMain.do'/>" target="_blank">고객관리(개인)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cif/customerGroup/selectCustomerGroupMain.do'/>" target="_blank">그룹관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cif/customerGroup/selectCustomerTagMain.do'/>" target="_blank">태그관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/ass/assign/selectCustomerInfoAssignMain.do'/>" target="_blank">고객배정</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:customerSearchPopup()">고객조회팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:groupSearchPopup()">그룹조회팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:tagSearchPopup()">태그조회팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>리드관리</td>
                    <td><a href="<c:url value='/crm/slm/leadInfo/selectLeadInfoMain.do'/>">일반리드등록</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/slm/leadInfo/selectLeadIDCCInfoMain.do'/>">IDCC리드관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/ass/assign/selectLeadAssignMain.do'/>">IDCC리드배분</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>고객흐름관리</td>
                    <td><a href="<c:url value='/crm/cfw/visitCustomer/selectVisitCustomerMain.do'/>">내방예약</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:visitCustomerPopup()">내방예약팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cfw/visitCustomer/selectVisitCustomerResultMain.do'/>">전시장유동량 결과입력</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cfw/visitCustomer/selectVisitCustomerMgmtMain.do'/>">전시장유동량 관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cfw/visitCustomerMgmt/selectVisitCustomerMgmtMainOld.do'/>">내방예약관리(old)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>판매기회관리</td>
                    <td><a href="<c:url value='/crm/cso/testDrive/selectTestDriveResvMain.do'/>">시승예약</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:tdrvResvPopup()">시승예약팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cso/testDrive/selectTestDriveMgmtMain.do'/>">시승예약관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:salesActiveCalPopup()">영업활동캘린더팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cso/salesActive/selectSalesActiveCalendarMain.do'/>">영업활동캘린더</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cso/salesActive/selectSalesActiveCalendarDayMain.do'/>?viewTp=day">영업활동목록(일별)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cso/salesOpptMgmt/selectSalesOpptMgmtMain.do'/>">판매기회관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cso/salesOpptMgmt/selectSalesOpptMgmtMainOld.do'/>">판매기회관리(Old)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cso/salesOpptMgmt/selectSalesOpptMain.do'/>">판매기회조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:salesOpptStatPopup()">판매기회상태알림팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:salesOpptFailPopup()">판매기회 실패등록팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/cso/salesOpptFailMgmt/selectSalesOpptFailMgmtMain.do'/>">판매기회 실패관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>만족도 조사</td>
                    <td><a href="<c:url value='/crm/css/surveySatisFaction/selectSurveySatisFactionMain.do'/>">설문 템플릿 관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/css/satisFactionManage/selectSatisFactionManageMain.do'/>">만족도 조사 관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/css/satisFactionMobile/selectSatisFactionMobileMain.do'/>">만족도 조사(Mobile)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>멤버십 </td>
                    <td><a href="<c:url value='/crm/dmm/membership/selectMembershipMain.do'/>">멤버십 등록(고객)</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/dmm/membership/selectSpecialPointPopup.do'/>">특별포인트 신청 팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/dmm/membership/selectMembershipManageMain.do'/>">멤버십 관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/dmm/membershipTrans/selectMembershipTransMain.do'/>">멤버십 양도신청</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/dmm/membershipTransMng/selectMembershipTransMngMain.do'/>">멤버십 양도관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>멤버십 등급</td>
                    <td><a href="<c:url value='/crm/dmm/membershipGradeMng/selectMembershipGradeMngMain.do'/>">멤버십 등급조건</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/dmm/membershipGradeChg/selectMembershipGradeChgMain.do'/>">멤버십 등급변경</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>캠페인 관리</td>
                    <td><a href="<c:url value='/crm/mcm/marketingCampaign/selectMarketingCampaignMain.do'/>">캠페인 관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/crm/crq/vocMgmt/selectVocMgmtMain.do'/>">VOC 관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>CRM 메뉴 BAK</td>
                    <td><a href="<c:url value='/crm/cif/customerInfo/selectCustomerInfoMain.do'/>">고객관리</a></td>
                </tr>

                <tr><td></td><td></td><td><a href="<c:url value='/crm/cif/customerInfo/selectCustomerInfoMain.do'/>">고객관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cif/customerInfo/selectCustomerInfoRegMain.do'/>">고객정보 등록</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/slm/leadInfo/selectLeadIDCCInfoMain.do'/>">IDCC 리드관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/ass/assign/selectLeadIDCCAssignMain.do'/>">IDCC 리드배정</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/salesOpptMgmt/selectSalesOpptMgmtMain.do'/>">판매기회관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/css/satisFactionMobile/selectSatisFactionMobileMain.do'/>">만족도 조사</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/crq/vocMgmt/selectVocMgmtMain.do'/>">고객요청관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cfw/visitCustomer/selectVisitCustomerResultMain.do'/>">전시장 유동량 결과 입력</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cfw/visitCustomer/selectVisitCustomerMain.do'/>">전시장 내방 예약 캘린더</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/css/surveySatisFaction/selectSurveySatisFactionMain.do'/>">설문템플릿 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/css/satisFactionManage/selectSatisFactionManageMain.do'/>">만족도 조사관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/mcm/marketingCampaign/selectMarketingCampaignMain.do'/>">캠페인 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/mcm/marketingCampaign/selectMarketingCampaignListMain.do'/>">캠페인목록 조회</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/vocComplaintReportMonthly.cpt'/>">고객요청 월단위 현황(불만요청)</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/callCenterReportObsend.cpt'/>">OB 이력현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/blueMembershipPointHistoryReport.cpt'/>">블루멤버십 사용현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/blueMembershipPointReport.cpt'/>">블루멤버십 포인트 사용현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/membershipPointReportMonthly.cpt'/>">포인트별 사용 현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/dmm/membershipTransMng/selectMembershipTransMngMain.do'/>">멤버십 양도관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/dmm/membershipPointExt/selectMembershipPointExtMain.do'/>">포인트 소멸 예정관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cfw/visitCustomer/selectVisitCustomerMgmtMain.do'/>">전시장 유동량 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/vocComplaintReport.cpt'/>">고객요청 현황(불만요청)</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/dmm/packageCouponMasterMng/selectPackageCouponMasterMngMain.do'/>">패키지쿠폰마스터관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/mcm/campaignResult/selectCampaignResultMain.do'/>">캠페인결과 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/css/satisFactionPresentResult/selectSatisFactionPresentResultMain.do'/>">만족도 조사결과 현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/css/satisFactionScoreMng/selectSatisFactionScoreMngMain.do'/>">만족도조사 낮은점수 처리 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cal/callCenter/selectCallCenterActionSatisFactionMain.do'/>">OB 실행-만족도조사</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cal/callCenter/selectCallCenterActionCustomerCareMain.do'/>">OB 실행-고객케어</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cal/callCenter/selectCallCenterActionCampaignMain.do'/>">OB 실행-캠페인</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/membershipPointHistoryReport.cpt'/>">포인트 사용 이력</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/campaignReport.cpt'/>">캠페인 결과현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/leadReport.cpt'/>">리드 현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/css/satisFactionPresent/selectSatisFactionPresentMain.do'/>">만족도 조사 현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/vocTypeReportMonthly.cpt'/>">고객요청 월단위 현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/satisfactionReport.cpt'/>">만족도 조사 진행 현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/satisfactionReportPerson.cpt'/>">만족도 조사 담당자별 현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/satisfactionReportBHMC.cpt'/>">BHMD 만조도 조사 현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/callCenterReportOB.cpt'/>">OB 진행현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/callCenterReportHistory.cpt'/>">OB 이력현황(통화이력)</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/callCenterReportKPI.cpt'/>">OB KPI</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/membershipPointReport.cpt'/>">포인트 사용현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/membershipRechargeReport.cpt'/>">충전카드 사용현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/membershipCouponReport.cpt'/>">패키지쿠폰 사용현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/salesActiveReport.cpt'/>">영업활동 현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/salesOpptMgmt/selectLeadSalesOpptMain.do'/>">판매기회관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/membershipPointHistoryReportQuarter.cpt'/>">포인트별 사용현황(분기별)</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/vocTypeReportMonthly.cpt'/>">고객요청 월단위 현황(유형별)</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/dmm/membershipGradeMng/selectMembershipGradeMngMain.do'/>">멤버십 등급관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/testDrive/selectTestDriveResvMain.do'/>">시승 예약</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/salesActive/selectSalesActiveCalendarMain.do'/>">영업활동 스케줄</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/crq/customerCare/selectCustomerCareMgmtMain.do'/>">고객케어 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/testDrive/selectTestDriveCarMain.do'/>">시승 차량 조회</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/testDrive/selectTestDriveClineMgmtMain.do'/>">시승 노선 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/testDrive/selectTestDriveCarMgmtMain.do'/>">시승 차량 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/testDrive/selectTestDriveMgmtMain.do'/>">시승 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/dmm/membershipGradeChg/selectMembershipGradeChgMain.do'/>">멤버십 등급변경</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cif/customerGroup/selectCustomerTagMain.do'/>">태그/그룹/취미 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/ass/assign/selectCustomerInfoAssignMain.do'/>">영업사원 배정 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/crq/customerCare/selectCustomerCareRunMain.do'/>">고객케어 실행</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/mcm/marketingCampaign/selectMarketingCampaignCalendarMain.do'/>">캠페인 캘린더</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cif/customerUpload/selectCustomerUploadMain.do'/>">대용량 고객정보 업로드</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/salesActive/selectSalesActiveMgmtMain.do'/>">영업활동 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/ass/assign/selectOBAssignMain.do'/>">OB 배정</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cmm/crmTargExtract/selectCrmTargExtractMasterMain.do'/>">추출조건설정 목록</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/slm/leadInfo/selectLeadInfoMain.do'/>">리드관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/slm/leadUpload/selectLeadUploadMain.do'/>">리드정보업로드</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/ass/assign/selectLeadAssignMain.do'/>">리드배정</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/salesActivePlan/selectSalesActivePlanMain.do'/>">영업활동 시행내역</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/dmm/membership/selectMembershipManageMain.do'/>">멤버십 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/dmm/membershipTrans/selectMembershipTransMain.do'/>">멤버십 양도신청</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/ass/assign/selectVocStaffAssignMain.do'/>">고객요청 담당자 배정 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/slm/leadRegistReport/selectLeadRegistReportMain.do'/>">리드조회</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cso/testDrive/selectTestDriveCalendarMain.do'/>">시승캘린더(일)</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/dmm/membershipPointHisMng/selectMembershipPointHisMngMain.do'/>">포인트 소멸 이력관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/cif/customerRegistPresent/selectCustomerRegistPresentMain.do'/>">고객등록현황</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/mcm/campaignAction/selectCampaignActionMain.do'/>">캠페인실행 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/mcm/campaignAction/selectCampaignActionRecordMain.do'/>">캠페인실행이력 관리</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/dmm/blueMembershipCalc/selectBlueMembershipCalcMain.do'/>">블루멤버십 정산</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/crm/dmm/blueMembershipJoin/selectBlueMembershipJoinMain.do'/>">블루멤버십 가입</a></td></tr>
                <tr><td></td><td></td><td><a href="<c:url value='/ReportServer?reportlet=crm/vocTypeReport.cpt'/>">고객요청 현황</a></td></tr>


                <!-- CRM 영역 종료 -->

                <!-- 정비영역 시작 -->
                <tr>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>정비</td>
                    <td>기준정보</td>
                    <td><a href="<c:url value='/ser/svi/ccCode/selectCcdCodeManageMain.do'/>">원인코드(CCD 코드) 마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/ncCode/selectNcdCodeManageMain.do'/>">현상코드(NCD 코드) 마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/insurance/selectInsuranceManageMain.do'/>">보험관리 마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/bayManage/selectBayManageMain.do'/>">Bay관리 마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/bayManage/selectBayCalendarMain.do'/>">Bay 캘린더 마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/workGroupManage/selectWorkGroupManageMain.do'/>">소조관리 마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/rateMaster/selectRateMasterMain.do'/>">임률코드 마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/rateMaster/selectRateMasterListMain.do'/>">임률검색</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/techManFnMaster/selectTechManFnMasterMain.do'/>">테크멘 기능관리 마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/pDIChkAtc/selectPDIChkAtcMain.do'/>">PDI점검마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/campaign/selectCampaignInfoManageMain.do'/>">캠페인 기본정보 마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/campaign/selectCampaignVinManageMain.do'/>">캠페인 빈정보 마스터</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/dcMaster/selectDcMasterMain.do'/>">할인관리</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/packageManage/selectPackageMain.do'/>">적업Package구성</a></td>
                </tr>

                 <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/subBpMaster/selectSubBpMasterMain.do'/>">외주거래처관리</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td>예약</td>
                    <td><a href="<c:url value='/ser/rev/reservationReceipt/selectReservationReceiptMain.do'/>">예약접수</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>RO</td>
                    <td><a href="<c:url value='/ser/ro/repairOrder/selectRepairOrderMain.do'/>">RO발행</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/ro/preCheck/selectPreCheckMain.do'/>">사전점검</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/ro/workAssign/selectWorkAssignMain.do'/>">작업배정</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/ro/workProcess/selectWorkProcessMain.do'/>">작업진도관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/ro/workProcess/selectWorkProcessListMain.do'/>">작업진도조회</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/svi/laborManage/selectLaborCodeManageMain.do'/>">공임관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>Claim</td>
                    <td><a href="<c:url value='/ser/wac/pwaReq/selectPwaRequestMain.do'/>">PWA 요청</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/wac/pwaAppr/selectPwaApproveMain.do'/>">PWA 승인</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/wac/claimReq/selectClaimRequestMain.do'/>">클레임 요청</a></td>
                </tr>

                <tr>
                    <td></td>
                    <td>정산</td>
                    <td><a href="<c:url value='/ser/cal/calculate/selectCalculateMain.do'/>">정산</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>수납</td>
                    <td><a href="<c:url value='/ser/rcv/serviceReceive/selectServiceReceiveMain.do'/>">수납</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>삼포</td>
                    <td><a href="<c:url value='/ser/wac/sanbaoBase/selectSanbaoBaseMain.do'/>">삼포 정책관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/wac/sanbaoLaborManage/selectSanbaoLaborManageMain.do'/>">삼포 공임 등록</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/wac/sanbaoReq/selectSanbaoRequestMain.do'/>">삼포 요청</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/wac/sanbaoAppr/selectSanbaoApproveMain.do'/>">삼포 승인</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/wac/sanbaoTechReq/selectSanbaoTechRequestMain.do'/>">삼포 기술 제출</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/wac/sanbaoTechAppr/selectSanbaoTechApproveMain.do'/>">삼포 기술 제출 처리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="<c:url value='/ser/wac/sanbaoLaborProblem/selectSanbaoLaborProblemMain.do'/>">차량별 동일하자 현황</a></td>
                </tr>
                 <tr>
                    <td></td>
                    <td>보험</td>
                    <td><a href="<c:url value='/ser/ins/insurance/selectInsuranceManageMain.do'/>">보험 통합관리</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td>보증</td>
                    <td><a href="<c:url value='/ser/wac/warranty/selectWarrantyStatusMain.do'/>">보증 현황</a></td>
                </tr>
                <!-- 정비영역 종료 -->
                 <!-- 서비스팝업 -->
                <tr>
                    <td></td>
                    <td>팝업</td>
                    <td><a href="javascript:teckManFnSearchPopup()">테크멘조회팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:ncCdCodeSearchPopup()">현상코드팝업</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a href="javascript:selectlaborCodeSearchPopupWindow()">공임조회팝업</a></td>
                </tr>
                <!-- 정비영역 종료 -->


            </tbody>
        </table>
        <!-- <a href="#go_top" style="position:fixed; right:30px; bottom:20px; padding:8px 9px 6px; border:3px solid #941a2e; background:#f4f4f4; color:#333; font-weight:bold;">Top</a> -->
    </div>

    <div id="s1">
    <input type="text" id="multiselect1" name="multiselect1" data-json-obj="true" />
    <input type="text" id="multiselect2" name="multiselect2" data-json-obj="true" />
    <input type="checkbox" id="multiselect3" name="multiselect3" data-json-obj="true" checked="true" value="1" />
    <input type="checkbox" id="multiselect4" name="multiselect3" data-json-obj="true" checked="true" value="2" />
    </div>

    <input type="text" id="maskedTextBox" />

    <script type="text/javascript">

    var s1 = $("#s1").serializeObjectBySelector();
    console.log(s1);

    var countrySearchPopupWin;
    function countrySearchPopup() {
        countrySearchPopupWin = dms.window.popup({
            windowId:"countrySearchPopupWin"
            ,title:"<spring:message code='cmm.title.country.search'/>"   // 국가 조회
            ,content:{
                url:"<c:url value='/cmm/sci/commonPopup/selectCountryPopup.do'/>"
                ,data:{
                    "autoBind":false
                    ,"cntryNm":""
                    ,"callbackFunc":function(data){
                        dms.notification.info(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var userSearchPopupWin;
    function userSearchPopup() {
        userSearchPopupWin = dms.window.popup({
            windowId:"userSearchPopupWin"
            ,title:"<spring:message code='cmm.title.user.search'/>"   // 사용자 조회
            ,content:{
                url:"<c:url value='/cmm/sci/commonPopup/selectUserPopup.do'/>"
                , data:{
                    "autoBind":false
                    ,"usrNm":""
                    ,"callbackFunc":function(data){
                        dms.notification.info(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var dealerSearchPopupWin;
    function dealerSearchPopup() {
        dealerSearchPopupWin = dms.window.popup({
            windowId:"dealerSearchPopupWin"
            ,title:"<spring:message code='cmm.title.dlrSearch'/>"   // 딜러 조회
            ,content:{
                url:"<c:url value='/cmm/sci/commonPopup/selectDealerPopup.do'/>"
                , data:{
                    "autoBind":false
                    ,"dlrCd":"A07AA"           //dlrCd, dlrNm, dlrGrpCd
                    ,"closeAfterSelect":true
                    ,"callbackFunc":function(data){
                        dms.notification.info(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var zipCodeSearchPopupWin;
    function zipCodeSearchPopup() {
        zipCodeSearchPopupWin = dms.window.popup({
            windowId:"zipCodeSearchPopupWin"
            ,title:"<spring:message code='cmm.title.zipcode.search'/>"   // 우편번호 조회
            ,content:{
                url:"<c:url value='/cmm/sci/commonPopup/selectZipCodePopup.do'/>"
                , data:{
                    "autoBind":false
                    ,"sGubun":""
                    ,"sValue":""
                    ,"sZipCd":"010000"
                    ,"callbackFunc":function(data){
                        dms.notification.info(JSON.stringify(data));
                    }
                }
            }

        });
    }


    var tdrvResvPopup;
    function tdrvResvPopup() {
        tdrvResvPopup = dms.window.popup({
            windowId:"tdrvResvPopup"
            ,title:"<spring:message code='crm.title.tdrvResv' />" //시승예약
            ,content:{
                url:"<c:url value='/crm/cso/testDrive/selectTestDriveResvPopup.do'/>"
                , data:{
                    "autoBind":false
                    ,"cntryNm":""
                    ,"callbackFunc":function(data){
                        console.log(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var visitCustomerPopup;
    function visitCustomerPopup() {
        visitCustomerPopup = dms.window.popup({
            windowId:"visitCustomerPopup"
            ,title:"<spring:message code='crm.title.visitCustomer' />" //내방예약
            ,content:{
                url:"<c:url value='/crm/cfw/visitCustomer/selectVisitCustomerPopup.do'/>"
                , data:{
                    "autoBind":false
                    ,"cntryNm":""
                    ,"callbackFunc":function(data){
                        console.log(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var salesOpptStatPopup;
    function salesOpptStatPopup() {
        salesOpptStatPopup = dms.window.popup({
            windowId:"salesOpptStatPopup"
            , title:"<spring:message code='global.title.saleOpptStatNoti' />"  // 판매기회 상태알림
            , width:355
            , height:200
            , content:{
                url:"<c:url value='/crm/cso/salesOpptMgmt/selectSalesOpptStatPopup.do'/>"
                ,data:{
                    "autoBind":false
                    , "saleOpptSeq"  :"1"
                    , "custNm"       :"홍길동"
                    , "regPrid"      :"1"
                    , "callbackFunc":function(data){

                        console.log("data:",data)
                        if(data == "SUCCESS"){
                            // 판매기회 상태변경 / 이 완료 되었습니다.
                            dms.notification.success("<spring:message code='global.lbl.saleOpptStepUpdt' var='arguMsg' /><spring:message code='global.info.successMsg' arguments='${arguMsg}'/>");
                            initForm();
                        }else if(data == "CLOSE"){

                            console.log("판매기회 상태 팝업 종후 실패 팝업 오픈");
                            failPopup(saleOpptSeq);

                        }

                    }
                }
            }
        });



    }

    var salesOpptFailPopup;
    function salesOpptFailPopup() {
        salesOpptFailPopup = dms.window.popup({
            windowId:"salesOpptFailPopup"
            , title:"<spring:message code='global.title.saleOpptFailReg' />"  // 판매기회 실패등록
            //, width:355
            //, height:150
            , content:{
                url:"<c:url value='/crm/cso/salesOpptMgmt/selectSalesOpptFailPopup.do'/>"
                ,data:{
                    "autoBind":false
                    , "saleOpptSeq"  :"1"
                    , "callbackFunc":function(data){
                        console.log("data:",data)
                        if(data == "SUCCESS"){
                            // 판매기회 상태변경 / 이 완료 되었습니다.
                            dms.notification.success("<spring:message code='global.lbl.saleOpptStepUpdt' var='arguMsg' /><spring:message code='global.info.successMsg' arguments='${arguMsg}'/>");
                            console.log("1111")
                            initForm();

                        }

                    }
                }
            }
        });
    }

    var salesActiveCalPopup;
    function salesActiveCalPopup() {
        salesActiveCalPopup = dms.window.popup({
            windowId:"salesActiveCalPopup"
            ,title:"영업활동" //영업활동
            ,content:{
                url:"<c:url value='/crm/cso/salesActive/selectSalesActiveCalendarPopup.do'/>"
                , data:{
                    "autoBind":false
                    ,"cntryNm":""
                    ,"callbackFunc":function(data){
                        console.log(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var customerSearchPopup;
    function customerSearchPopup() {
        tdrvResvPopup = dms.window.popup({
            windowId:"customerSearchPopup"
            , title:"<spring:message code='global.title.custSearch' />"   // 고객 조회
            , content:{
                url:"<c:url value='/crm/cif/customerInfo/selectCustSearchPopup.do'/>"
                , data:{
                    "autoBind":false
                    , "type"  :null
                    ,"callbackFunc":function(data){
                        console.log(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var groupSearchPopup;
    function groupSearchPopup() {
        tdrvResvPopup = dms.window.popup({
            windowId:"groupSearchPopup"
                , title:"<spring:message code = 'global.title.custGrpSearch' />"   // 고객그룹 조회
                , content:{
                    url:"<c:url value='/crm/cif/customerGroup/selectGroupPopup.do'/>"
                    , data:{
                        "autoBind":false
                        , "type"  :null
                        , "grpTp" :"001"
                        , "callbackFunc":function(data){
                        console.log(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var tagSearchPopup;
    function tagSearchPopup() {
        tdrvResvPopup = dms.window.popup({
            windowId:"groupSearchPopup"
                , title:"<spring:message code = 'global.lbl.tag' />"   // 태그 조회
                , content:{
                    url:"<c:url value='/crm/cif/customerGroup/selectTagPopup.do'/>"
                    , data:{
                        "autoBind":false
                        , "type"  :null
                        , "grpTp" :"002"
                        , "callbackFunc":function(data){
                        console.log(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var tecSearchPopup;
    function teckManFnSearchPopup() {
        tecSearchPopup = dms.window.popup({
            windowId:"teckManFnSearchWin"
                , title:"테크멘 조회"   // 테크멘 조회
                , content:{
                    url:"<c:url value='/ser/cmm/popup/selectTechManFnPopup.do'/>"
                    , data:{
                        "autoBind":true
                        , "callbackFunc":function(data){
                        console.log(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var phenCauCodeWin;
    function ncCdCodeSearchPopup() {
        phenCauCodeWin = dms.window.popup({
            windowId:"teckManFnSearchWin"
                , title:"현상코드 조회"   // 현상코드 조회
                , content:{
                    url:"<c:url value='/ser/cmm/popup/selectNcdCcdCodePopup.do'/>"
                    , data:{
                        "autoBind":true
                        , "callbackFunc":function(data){
                        console.log(JSON.stringify(data));
                    }
                }
            }

        });
    }

    var laborSearchPopup;
    function selectlaborCodeSearchPopupWindow(){

        laborSearchPopup = dms.window.popup({
            windowId:"laborCodeSearchPopupWindow"
            , title:"<spring:message code = 'ser.title.lbrCdSearch'/>"    //
            //,height:150
            , content:{
                url:"<c:url value='/ser/cmm/popup/selectLaborCodePopup.do'/>"
                , data:{
                  //  "type":"custom1"
                     "autoBind":false
                    ,"sLtsModelCd":"HF**A"
                    ,"sDlrCd":"A07AA"
                    , "callbackFunc":function(data){
                      /*   $("#cauCd").val(data[0].causeCd);
                        $("#cauNm").val(data[0].causeNm);
                        $("#statCd").val(data[0].natrueCd);
                        $("#statNm").val(data[0].natrueNm); */
                    }
                }
            }
        });
    }

    var venderSearchPopupWin;
    function venderSearchPopup() {
        venderSearchPopupWin = dms.window.popup({
            windowId:"venderSearchPopupWin"
                ,title:"<spring:message code = 'par.title.venderSelect'/>"   // 거래처 조회
                ,content:{
                    url:"<c:url value='/par/pmm/venderMaster/selectVenderMasterPopup.do'/>"
                    ,data:{
                        "type":"custom1"
                        ,"autoBind":false
                        ,"bpCd":""
                        ,"bpNm":""
                        ,"bpTp":""
                        ,"callbackFunc":function(data){
                            console.log(JSON.stringify(data));
                            venderSearchPopupWin.close();
                        }
                    }
                }
        });
    }

    var supplierSearchPopupWin;
    function supplierSearchPopup() {
        supplierSearchPopupWin = dms.window.popup({
            windowId:"supplierSearchPopupWin"
                ,title:"<spring:message code='global.title.supplyInfo' />"   // 공급업체 정보
                ,content:{
                    url:"<c:url value='/par/pmm/venderMaster/selectSupplierMasterPopup.do'/>"
                    ,data:{
                        "type":"custom1"
                        ,"autoBind":false
                        ,"bpCd":""
                        ,"bpNm":""
                        ,"bpTp":""
                        ,"callbackFunc":function(data){
                            console.log(JSON.stringify(data));
                        }
                    }
                }
        });
    }

    var popupWindow;
    function contractProgStsPopup() {
        popupWindow = dms.window.popup({
            windowId:"contractProgStsPopupWin"    // 판매 - 계약조회
                ,title:"<spring:message code='sal.title.contractProg' />"
                ,height:600
                ,content:{
                    url:"<c:url value='/sal/cmm/selectProgressStsPopup.do'/>"
                    ,data:{
                         "type"  :null
                        ,"autoBind":false
                        ,"callbackFunc":function(data){
                            console.log(JSON.stringify(data));
                        }
                    }
                }
        });
    }
    function vehicleMasterStsPopup() {
        popupWindow = dms.window.popup({
            windowId:"vehicleMasterStsPopupWin"    // 판매 - 차량마스터관리 조회 팝업
                ,title:"<spring:message code='global.title.vehicleMaster' />"
                ,height:600
                ,content:{
                    url:"<c:url value='/sal/cmm/selectVehicleMasterPopup.do'/>"
                    ,data:{
                         "type"  :null
                        ,"autoBind":false
                        ,"callbackFunc":function(data){
                            console.log(JSON.stringify(data));
                        }
                    }
                }
        });
    }
    function selectGoodsSearchPopup(){
        popupWindow = dms.window.popup({
            windowId:"vehicleMasterStsPopupWin"    // 판매 - 차량마스터관리 조회 팝업
                ,title:"<spring:message code='sal.title.goodsSearch' />"   // 용품조회
                ,height:600
                ,content:{
                    url:"<c:url value='/sal/cmm/selectGoodsSearchPopup.do'/>"
                    ,data:{
                         "type"  :null
                        ,"autoBind":false
                        , "sDlrCd":"A07AA"
                        , "sCarlineCd":"B3"
                        , "sCarlineNm":"[B3]名图"
                        ,"callbackFunc":function(data){
                            console.log(JSON.stringify(data));
                        }
                    }
                }
        });
    }

    function usedCarcontractProgPopup() {
        popupWindow = dms.window.popup({
            windowId:"usedCarcontractProgPopupWin"    // 판매 - 계약품의관리 팝업
                ,title:"<spring:message code='sal.title.retailContractOrd' />"
                ,height:600
                ,content:{
                    url:"<c:url value='/sal/cmm/selectUsedCarProgPopup.do'/>"
                    ,data:{
                         "type"  :null
                        ,"autoBind":false
                        ,"callbackFunc":function(data){
                            console.log(JSON.stringify(data));
                        }
                    }
                }
        });
    }


    // 2급딜러조회
    function selectSecondDealerSearchPopup(){
        popupWindow = dms.window.popup({
            windowId:"selectSecondDealerSearchPopupWin"    // 2급딜러조회 팝업
                ,title:"<spring:message code='sal.title.secondGradeDlrInfo' />"   // 2급딜러정보
                ,content:{
                    url:"<c:url value='/sal/btc/secondDealer/selectSecondDealerSearchPopup.do'/>"
                    ,data:{
                        "autoBind":false
                        , "lv2DlrCd":""
                        ,"callbackFunc":function(data){
                            console.log(JSON.stringify(data));
                        }
                    }
                }
        });
    }


   $("#maskedTextBox").kendoMaskedTextBox({
       mask:"LL"
    });

    $("#maskedTextBox").bind("keyup", function(){
        var that = $(this).data("kendoMaskedTextBox");
        that.value(that.raw().toUpperCase());
    })

    </script>

</body>
</html>