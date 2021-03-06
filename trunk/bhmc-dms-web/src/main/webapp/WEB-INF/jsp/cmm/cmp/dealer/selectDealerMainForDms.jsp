<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<section class="group">
    <form id="dealerForm" name="dealerForm">

        <!-- 탭메뉴 전체 영역 -->
        <div id="tabstrip" class="tab_area">
            <!-- 탭메뉴 -->
            <ul>
                <li id="dealerBasicInfoTab" class="k-state-active"><spring:message code="global.lbl.basicInfo" /><!-- 기본정보 --></li>
                <li id="dealerSysOptTab"><spring:message code="global.lbl.sysOptSetting" /><!-- 시스템 옵션 설정 --></li>
                <li id="dealerCrmOptTab"><spring:message code="global.lbl.crmOptSetting" /><!-- CRM 옵션 설정 --></li>
                <li id="dealerSalOptTab"><spring:message code="global.lbl.salOptSetting" /><!-- 판매 옵션 설정 --></li>
                <li id="dealerParOptTab"><spring:message code="global.lbl.parOptSetting" /><!-- 부품 옵션 설정 --></li>
            </ul>
            <span class="btn_right_absolute2">
                <dms:access viewId="VIEW-D-10822" hasPermission="${dms:getPermissionMask('READ')}">
                    <button type="button" id="btnSave" class="btn_m btn_save"><spring:message code="global.btn.save" /><!-- 저장 --></button>
                </dms:access>
            </span>
            <!-- //탭메뉴 -->

            <!-- 기본정보 -->
            <div>
                <section class="group">
                <div class="header_area"></div>
                <div class="table_form">
                    <table>
                        <caption></caption>
                        <colgroup>
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.cmpCd" /></th>
                                <td>
                                    <input id="cmpCd" name="cmpCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.cmpCd" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.corpCd" /></th>
                                <td>
                                    <input id="corpCd" name="corpCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.corpCd" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.dlrCd" /></th>
                                <td>
                                    <input id="dlrCd" name="dlrCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.dlrCd" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.dlrNm" /></th>
                                <td>
                                    <input id="dlrNm" name="dlrNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.dlrNm" />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.dlrShtNm" /></th>
                                <td>
                                    <input id="dlrShtNm" name="dlrShtNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.dlrShtNm" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.mainDlrYn" /></th>
                                <td>
                                    <input id="mainDlrYn" name="mainDlrYn" type="text" class="form_comboBox" disabled data-bind="value:data.mainDlrYn" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.sdptCd" /></th>
                                <td>
                                    <input id="sdptCd" name="sdptCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.sdptCd" />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.serDlrYn" /></th>
                                <td>
                                    <input id="serDlrYn" name="serDlrYn" type="text" class="form_comboBox" disabled data-bind="value:data.serDlrYn" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.salDlrYn" /></th>
                                <td>
                                    <input id="salDlrYn" name="salDlrYn" type="text" class="form_comboBox" disabled data-bind="value:data.salDlrYn"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.parDlrYn" /></th>
                                <td>
                                    <input id="parDlrYn" name="parDlrYn" type="text" class="form_comboBox" disabled data-bind="value:data.parDlrYn"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.distOfficeCd" /></th>
                                <td>
                                    <input id="distOfficeCd" name="distOfficeCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.distOfficeCd"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.sprDlrCd" /></th>
                                <td>
                                    <input id="sprDlrCd" name="sprDlrCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.sprDlrCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.ownRgstNm" /></th>
                                <td>
                                    <input id="ownRgstNm" name="ownRgstNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.ownRgstNm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serRgstNm" /></th>
                                <td>
                                    <input id="serRgstNm" name="serRgstNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.serRgstNm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.telNo" /></th>
                                <td>
                                    <input id="telNo" name="telNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.telNo"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.telNo" />1</th>
                                <td>
                                    <input id="telNo1" name="telNo1" type="text" class="form_input form_disabled" disabled data-bind="value:data.telNo1"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.telNo" />2</th>
                                <td>
                                    <input id="telNo2" name="telNo2" type="text" class="form_input form_disabled" disabled data-bind="value:data.telNo2"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.hpNo" /></th>
                                <td>
                                    <input id="hpNo" name="hpNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.hpNo"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.faxNo" /></th>
                                <td>
                                    <input id="faxNo" name="faxNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.faxNo"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.emailNm" /></th>
                                <td>
                                    <input id="emailNm" name="emailNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.emailNm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.callCenTelNo" /></th>
                                <td>
                                    <input id="callCenTelNo" name="callCenTelNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.callCenTelNo"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.emgcCenTelNo" /></th>
                                <td>
                                    <input id="emgcCenTelNo" name="emgcCenTelNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.emgcCenTelNo"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.salDlrTelNo" /></th>
                                <td>
                                    <input id="salDlrTelNo" name="salDlrTelNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.salDlrTelNo"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.serDlrTelNo" /></th>
                                <td>
                                    <input id="serDlrTelNo" name="serDlrTelNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrTelNo"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serDlrHpNo" /></th>
                                <td>
                                    <input id="serDlrHpNo" name="serDlrHpNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrHpNo"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serDlrEmailNm" /></th>
                                <td>
                                    <input id="serDlrEmailNm" name="serDlrEmailNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrEmailNm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serDlrTp" /></th>
                                <td>
                                    <input id="serDlrTp" name="serDlrTp" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrTp"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.serDlrDistCd" /></th>
                                <td>
                                    <input id="serDlrDistCd" name="serDlrDistCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrDistCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serDlrAreaCd" /></th>
                                <td>
                                    <input id="serDlrAreaCd" name="serDlrAreaCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrAreaCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serDlrSungCd" /></th>
                                <td>
                                    <input id="serDlrSungCd" name="serDlrSungCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrSungCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serDlrCommNm" /></th>
                                <td>
                                    <input id="serDlrCommNm" name="serDlrCommNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrCommNm"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.serDlrCommTelNo" /></th>
                                <td>
                                    <input id="serDlrCommTelNo" name="serDlrCommTelNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrCommTelNo"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serDlrZipNo" /></th>
                                <td>
                                    <input id="serDlrZipNo" name="serDlrZipNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrZipNo"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serDlrAddr" />1</th>
                                <td>
                                    <input id="serDlrAddr1Nm" name="serDlrAddr1Nm" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrAddr1Nm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serDlrAddr" />2</th>
                                <td>
                                    <input id="serDlrAddr2Nm" name="serDlrAddr2Nm" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrAddr2Nm"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.serDlrAddr" />3</th>
                                <td>
                                    <input id="serDlrAddr3Nm" name="serDlrAddr3Nm" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrAddr3Nm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serDlrCityNm" />3</th>
                                <td>
                                    <input id="serDlrCityNm" name="serDlrCityNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.serDlrCityNm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.parDlrCd" /></th>
                                <td>
                                    <input id="parDlrCd" name="parDlrCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.parDlrCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.parMainDlrCd" /></th>
                                <td>
                                    <input id="parMainDlrCd" name="parMainDlrCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.parMainDlrCd"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.parMngDlrNm" /></th>
                                <td>
                                    <input id="parMngDlrNm" name="parMngDlrNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.parMngDlrNm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrTelNo" /></th>
                                <td>
                                    <input id="parDlrTelNo" name="parDlrTelNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.parDlrTelNo"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrHpNo" /></th>
                                <td>
                                    <input id="parDlrHpNo" name="parDlrHpNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.parDlrHpNo"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrFaxNo" /></th>
                                <td>
                                    <input id="parDlrFaxNo" name="parDlrFaxNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.parDlrFaxNo"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.psrDlrEmailNm" /></th>
                                <td>
                                    <input id="parDlrEmailNm" name="parDlrEmailNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.parDlrEmailNm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrScaleVal" /></th>
                                <td>
                                    <input id="psrDlrScaleVal" name="psrDlrScaleVal" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrScaleVal"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrDcRate" /></th>
                                <td>
                                    <input id="psrDlrDcRate" name="psrDlrDcRate" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrDcRate"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrVipDcRate" /></th>
                                <td>
                                    <input id="psrDlrVipDcRate" name="psrDlrVipDcRate" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrVipDcRate"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.psrDlrWsDcRate" /></th>
                                <td>
                                    <input id="psrDlrWsDcRate" name="psrDlrWsDcRate" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrWsDcRate"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrEmrDcRate" /></th>
                                <td>
                                    <input id="psrDlrEmrDcRate" name="psrDlrEmrDcRate" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrEmrDcRate"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrDcFilterRate" /></th>
                                <td>
                                    <input id="psrDlrDcFilterRate" name="psrDlrDcFilterRate" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrDcFilterRate"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrStrgeCnt" /></th>
                                <td>
                                    <input id="psrDlrStrgeCnt" name="psrDlrStrgeCnt" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrStrgeCnt"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.psrDlrPoDt" /></th>
                                <td>
                                    <input id="psrDlrPoDt" name="psrDlrPoDt" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrPoDt"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrStartDt" /></th>
                                <td>
                                    <input id="psrDlrStartDt" name="psrDlrStartDt" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrStartDt"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrEndDt" /></th>
                                <td>
                                    <input id="psrDlrEndDt" name="psrDlrEndDt" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrEndDt"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrZipNo" /></th>
                                <td>
                                    <input id="psrDlrZipNo" name="psrDlrZipNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrZipNo"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.psrDlrAddr" />1</th>
                                <td>
                                    <input id="psrDlrAddr1Nm" name="psrDlrAddr1Nm" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrAddr1Nm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrAddr" />2</th>
                                <td>
                                    <input id="psrDlrAddr2Nm" name="psrDlrAddr2Nm" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrAddr2Nm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrAddr" />3</th>
                                <td>
                                    <input id="psrDlrAddr3Nm" name="psrDlrAddr3Nm" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrAddr3Nm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.psrDlrAddr" />3</th>
                                <td>
                                    <input id="psrDlrAddr3Nm" name="psrDlrAddr3Nm" type="text" class="form_input form_disabled" disabled data-bind="value:data.psrDlrAddr3Nm"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.delYn" /></th>
                                <td>
                                    <input id="delYn" name="delYn" type="text" class="form_comboBox" disabled data-bind="value:data.delYn"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.parExprDt" /></th>
                                <td>
                                    <input id="parExprDt" name="parExprDt" type="text" class="form_input form_disabled" disabled data-bind="value:data.parExprDt"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.parPcdCd" /></th>
                                <td>
                                    <input id="parPcdCd" name="parPcdCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.parPcdCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.distCd" /></th>
                                <td>
                                    <input id="distCd" name="distCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.distCd"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.distGrpCd" /></th>
                                <td>
                                    <input id="distGrpCd" name="distGrpCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.distGrpCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.zipCd" /></th>
                                <td>
                                    <input id="zipNo" name="zipNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.zipNo"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.addr" />1</th>
                                <td>
                                    <input id="addr1Nm" name="addr1Nm" type="text" class="form_input form_disabled" disabled data-bind="value:data.addr1Nm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.addr" />2</th>
                                <td>
                                    <input id="addr2Nm" name="addr2Nm" type="text" class="form_input form_disabled" disabled data-bind="value:data.addr2Nm"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.detlAddr" /></th>
                                <td>
                                    <input id="detlAddrNm" name="detlAddrNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.detlAddrNm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.pridStartDt" /></th>
                                <td>
                                    <input id="pridStartDt" name="pridStartDt" type="text" class="form_input form_disabled" disabled data-bind="value:data.pridStartDt"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.pridEndDt" /></th>
                                <td>
                                    <input id="pridEndDt" name="pridEndDt" type="text" class="form_input form_disabled" disabled data-bind="value:data.pridEndDt"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.serStartDt" /></th>
                                <td>
                                    <input id="serStartDt" name="serStartDt" type="text" class="form_input form_disabled" disabled data-bind="value:data.serStartDt"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.serEndDt" /></th>
                                <td>
                                    <input id="serEndDt" name="serEndDt" type="text" class="form_input form_disabled" disabled data-bind="value:data.serEndDt"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.homepageUrl" /></th>
                                <td>
                                    <input id="homepageNm" name="homepageNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.homepageNm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.dlrStatCd" /></th>
                                <td>
                                    <input id="dlrStatCd" name="dlrStatCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.dlrStatCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.saleDlrDistCd" /></th>
                                <td>
                                    <input id="saleDlrDistCd" name="saleDlrDistCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.saleDlrDistCd"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.saleDlrCityCd" /></th>
                                <td>
                                    <input id="saleDlrCityCd" name="saleDlrCityCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.saleDlrCityCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.saleDlrSungCd" /></th>
                                <td>
                                    <input id="saleDlrSungCd" name="saleDlrSungCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.saleDlrSungCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.bankNm" /></th>
                                <td>
                                    <input id="bankNm" name="bankNm" type="text" class="form_input form_disabled" disabled data-bind="value:data.bankNm"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.bankAcNo" /></th>
                                <td>
                                    <input id="bankAcNo" name="bankAcNo" type="text" class="form_input form_disabled" disabled data-bind="value:data.bankAcNo"  />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.stockLocCd" /></th>
                                <td>
                                    <input id="stockLocCd" name="stockLocCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.stockLocCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.payTermCd" /></th>
                                <td>
                                    <input id="payTermCd" name="payTermCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.payTermCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.leadTimeCd" /></th>
                                <td>
                                    <input id="leadTimeCd" name="leadTimeCd" type="text" class="form_input form_disabled" disabled data-bind="value:data.leadTimeCd"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.dlrCdSameGrp" /></th>
                                <td>
                                    <input id="groupDealers" name="groupDealers" type="text" class="form_comboBox" data-bind="value:groupDealers" />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.smsRemainAmount" /></th>
                                <td>
                                    <input id="smsRemainAmount" name="smsRemainAmount" type="text" class="form_input form_disabled" disabled data-bind="value:data.smsRemainAmount"  />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.smsRemainCnt" /></th>
                                <td>
                                    <input id="smsRemainCnt" name="smsRemainCnt" type="text" class="form_input form_disabled" disabled data-bind="value:data.smsRemainCnt"  />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                </section>
            </div>
            <!-- //기본정보 -->

            <!-- 시스템 옵션 설정 系统选项设置 -->
            <div clas="mt10">
                <section class="group">
                <div class="header_area"></div>
                <div class="table_form">
                    <table>
                        <caption></caption>
                        <colgroup>
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.sysOwnerYn" /><!-- 시스템 딜러여부 --></th>
                                <td>
                                    
                                    <input id="sysOwnerYn" name="sysOwnerYn" type="text" class="form_comboBox" required data-name="<spring:message code="global.lbl.sysOwnerYn" />" data-bind="value:data.sysOwnerYn" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.useCenterDmsYn" /><!-- 센터 DMS 사용딜러 여부 --></th>
                                <td>
                                    <input id="useCenterDmsYn" name="useCenterDmsYn" type="text" class="form_comboBox" required data-name="<spring:message code="global.lbl.useCenterDmsYn" />" data-bind="value:data.useCenterDmsYn" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.dmsIpNm" /><!-- DMS 서버 IP --></th>
                                <td>
                                    <input id="dmsIpNm" name="dmsIpNm" type="text" class="form_input" maxlength="64" data-name="<spring:message code="global.lbl.dmsIpNm" />" data-bind="value:data.dmsIpNm" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.dmsPortNm" /><!-- DMS 서버 Port --></th>
                                <td>
                                    <input id="dmsPortNm" name="dmsPortNm" type="number" class="form_input" maxlength="6" data-name="<spring:message code="global.lbl.dmsPortNm" />" data-bind="value:data.dmsPortNm" />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.lttuVal" /><!-- 위도 --></th>
                                <td>
                                    <input id="lttuVal" name="lttuVal" type="text" class="form_input" maxlength="15" data-name="<spring:message code="global.lbl.lttuVal" />" data-bind="value:data.lttuVal" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.lotuVal" /><!-- 경도 --></th>
                                <td>
                                    <input id="lotuVal" name="lotuVal" type="text" class="form_input" maxlength="15" data-name="<spring:message code="global.lbl.lotuVal" />" data-bind="value:data.lotuVal" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.dmsOperEmailNm" /><!-- DMS 운영자 이메일 --></th>
                                <td>
                                    <input id="dmsOperEmailNm" name="dmsOperEmailNm" type="email" class="form_input" data-name="<spring:message code="global.lbl.dmsOperEmailNm" />" data-bind="value:data.dmsOperEmailNm" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.dmsOperTelNo" /><!-- DMS 운영자 전화번호 --></th>
                                <td>
                                    <input id="dmsOperTelNo" name="dmsOperTelNo" type="tel" class="form_input" data-name="<spring:message code="global.lbl.dmsOperTelNo" />" data-bind="value:data.dmsOperTelNo" />
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.dmsUseYn" /><!-- DMS 사용여부 --></th>
                                <td>
                                    <input id="dmsUseYn" name="dmsUseYn" type="text" class="form_comboBox" required data-name="<spring:message code="global.lbl.dmsUseYn" />" data-bind="value:data.dmsUseYn" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.dmsTestUrlNm" /><!-- DMS 테스트 URL --></th>
                                <td>
                                    <input id="dmsTestUrlNm" name="dmsTestUrlNm" type="url" class="form_input" data-name="<spring:message code="global.lbl.dmsTestUrlNm" />" data-bind="value:data.dmsTestUrlNm" />
                                </td>
                                <th scope="row"><spring:message code="cmm.lbl.openDt" />(YYYYMMDD)<!-- 오픈일자 --></th>
                                <td>
                                    <input id="openDt" name="openDt" type="text" class="form_input" data-name="<spring:message code="cmm.lbl.openDt" />" data-bind="value:data.openDt" />
                                </td>
                                <!--增加下载功能 贾明 2019-6-20 start  -->
                                <th scope="row" id="contractFileTh" class=""><spring:message code="global.lbl.dmsDataBaseIsDown" /></th>
                                <td>
                                  <dms:access viewId="VIEW-D-13316" hasPermission="${dms:getPermissionMask('READ')}">
                                     <button type="button" id="contractFile" class="btn_m"><spring:message code="global.btn.download" /></button>
                                  </dms:access>
                                </td>
                                <!--增加下载功能 贾明 2019-6-20 end  -->
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                </section>
            </div>
            <!-- 시스템 옵션 설정 -->

            <!-- CRM 옵션 설정 -->
            <div clas="mt10">
                <section class="group">
                <!-- 멤버쉽 옵션 -->
                <div class="header_area">
                    <h2 class="title_basic"><spring:message code="global.title.membershipInfo" /></h2><!-- 멤버십 정보 -->
                </div>
                <div class="table_form">
                    <table>
                        <caption></caption>
                        <colgroup>
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.membershipPolicy" /><!-- 멤버십 운영기준 --></th>
                                <td>
                                    <input id="membershipPolicy" name="membershipPolicy" type="text" class="form_comboBox" required data-name="<spring:message code="global.lbl.membershipPolicy" />" data-bind="value:data.membershipPolicy" />
                                </td>
                                <th scope="row"><spring:message code="crm.lbl.membershipGradeNoneAutoYn" /><!-- 회원등급 수동 변경여부 --></th>
                                <td>
                                    <input id="membershipGradeNoneAutoYn" name="membershipGradeNoneAutoYn" type="text" class="form_comboBox" required data-name="<spring:message code="crm.lbl.membershipGradeNoneAutoYn" />" data-bind="value:data.membershipGradeNoneAutoYn" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.membershipPointPeriod" /><!-- 멤버십 포인트 유효기간 --></th>
                                <td>
                                    <input id="membershipPointPeriod" name="membershipPointPeriod" type="number" class="form_numeric ar" required data-name="<spring:message code="global.lbl.membershipPointPeriod" />" data-bind="value:data.membershipPointPeriod" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.membershipPointUseMaxPoint" /><!-- 딜러 멤버십 포인트 사용 상한치 --></th>
                                <td>
                                    <input id="membershipPointUseMaxPoint" name="membershipPointUseMaxPoint" type="number" class="form_numeric ar" required data-name="<spring:message code="global.lbl.membershipPointUseMaxPoint" />" data-bind="value:data.membershipPointUseMaxPoint" />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.membershipPointExchgPolicy" /><!-- 멤버십 포인트환산 기준 --></th>
                                <td colspan="3">
                                    <input id="membershipPointExchgPoint" name="membershipPointExchgPoint" type="number" class="form_numeric ar" required data-name="<spring:message code="global.lbl.membershipPointExchgPoint" />" data-bind="value:data.membershipPointExchgPoint" style="width:97px;" /> Point =
                                    <input id="membershipPointExchgMoney" name="membershipPointExchgMoney" type="number" class="form_numeric ar" required data-name="<spring:message code="global.lbl.membershipPointExchgMoney" />" data-bind="value:data.membershipPointExchgMoney" style="width:97px;" /> ￥
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- 포인트 옵션 -->
                <div class="header_area">
                    <h2 class="title_basic"><spring:message code="crm.title.pointAccuRate" /><!-- 포인트 적립률 ( 100위엔 = 포인트  --></h2>
                </div>
                <div class="table_form">
                    <table>
                        <caption></caption>
                        <colgroup>
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row"><spring:message code="crm.lbl.rcptAmtsRate" /><!-- 영수증가격 --></th>
                                <td>
                                    <input id="rcptAmtsRate" name="rcptAmtsRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.rcptAmtsRate" />" data-bind="value:data.rcptAmtsRate" />
                                </td>
                                <th scope="row"><spring:message code="crm.lbl.goodsRate" /><!-- 용품 --></th>
                                <td>
                                    <input id="goodsRate" name="goodsRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.goodsRate" />" data-bind="value:data.goodsRate" />
                                </td>
                                <th scope="row"><spring:message code="crm.lbl.insuranceNewRate" /><!-- 보험(신규) --></th>
                                <td>
                                    <input id="insuranceNewRate" name="insuranceNewRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.insuranceNewRate" />" data-bind="value:data.insuranceNewRate" />
                                </td>
                                <th scope="row"><spring:message code="crm.lbl.insuranceExtendedRate" /><!-- 보험(연장) --></th>
                                <td>
                                    <input id="insuranceExtendedRate" name="insuranceExtendedRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.insuranceExtendedRate" />" data-bind="value:data.insuranceExtendedRate" />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="crm.lbl.fincRate" /><!-- 금융(수수료) --></th>
                                <td>
                                    <input id="fincRate" name="fincRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.fincRate" />" data-bind="value:data.fincRate" />
                                </td>
                                <th scope="row"><spring:message code="crm.lbl.executionRate" /><!-- 대행 --></th>
                                <td>
                                    <input id="executionRate" name="executionRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.executionRate" />" data-bind="value:data.executionRate" />
                                </td>
                                <th scope="row"><spring:message code="crm.lbl.revPartsRate" /><!-- 부품판매 --></th>
                                <td>
                                    <input id="revPartsRate" name="revPartsRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.revPartsRate" />" data-bind="value:data.revPartsRate" />
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="crm.lbl.gnlRteRate" /><!-- RO유형-일반 --></th>
                                <td>
                                    <input id="gnlRteRate" name="gnlRteRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.gnlRteRate" />" data-bind="value:data.gnlRteRate" />
                                </td>
                                <th scope="row"><spring:message code="crm.lbl.wartRteRate" /><!-- RO유형-보증 --></th>
                                <td>
                                    <input id="wartRteRate" name="wartRteRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.wartRteRate" />" data-bind="value:data.wartRteRate" />
                                </td>
                                <th scope="row"><spring:message code="crm.lbl.incRteRate" /><!-- RO유형-보험현황 --></th>
                                <td>
                                    <input id="incRteRate" name="incRteRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.incRteRate" />" data-bind="value:data.incRteRate" />
                                </td>
                                <th scope="row"><spring:message code="crm.lbl.intRteRate" /><!-- RO유형-내부 --></th>
                                <td>
                                    <input id="intRteRate" name="intRteRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.intRteRate" />" data-bind="value:data.intRteRate" />
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><spring:message code="crm.lbl.rwrkRteRate" /><!-- RO유형-리워크 --></th>
                                <td>
                                    <input id="rwrkRteRate" name="rwrkRteRate" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.rwrkRteRate" />" data-bind="value:data.rwrkRteRate" />
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div style="padding:5px 0 3px 3px; text-align:right;"><spring:message code='crm.info.pointSave'/></div>
                <!-- 판매기회 옵션 -->
                <div class="header_area">
                    <h2 class="title_basic"><spring:message code="crm.title.opportunityMng" /><!-- 판매기회 관리 --></h2>
                </div>
                <div class="table_form mt5">
                    <table>
                        <caption></caption>
                        <colgroup>
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row"><spring:message code="crm.lbl.autoAssignStandard" /><!-- 자동배정기준 --></th>
                                <td>
                                    <input id="autoAssignCd" name="autoAssignCd" type="text" class="form_comboBox" required data-name="<spring:message code="crm.lbl.autoAssignStandard" />" data-bind="value:data.autoAssignCd" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.obAssignAutoYn" /><!-- OB 배정 자동여부 --></th>
                                <td>
                                    <input id="obAssignAutoYn" name="obAssignAutoYn" type="text" class="form_comboBox" required data-name="<spring:message code="global.lbl.obAssignAutoYn" />" data-bind="value:data.obAssignAutoYn" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.autoTrsfConf" /><!-- 자동전출설정(일) --></th>
                                <td>
                                    <input id="autoTrsfConf" name="autoTrsfConf" type="number" class="form_numeric ar" data-name="<spring:message code="global.lbl.autoTrsfConf" />" data-bind="value:data.autoTrsfConf" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.salesOpptPwYn" /><!-- 판매기회 비밀번호 설정여부 --></th>
                                <td>
                                    <input id="salesOpptPwYn" name="salesOpptPwYn" type="text" class="form_comboBox" required data-name="<spring:message code="global.lbl.salesOpptPwYn" />" data-bind="value:data.salesOpptPwYn" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- 콜센터 옵션 -->
                <div class="header_area">
                    <h2 class="title_basic"><spring:message code="crm.title.callcenterMng" /><!-- OB 관리 --></h2>
                </div>
                <div class="table_form mt5">
                    <table>
                        <caption></caption>
                        <colgroup>
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.callcenterMaxCall" /><!-- 딜러 콜센터 Max 콜수 --></th>
                                <td>
                                    <input id="callcenterMaxCall" name="callcenterMaxCall" type="number" class="form_numeric ar" required data-name="<spring:message code="global.lbl.callcenterMaxCall" />" data-bind="value:data.callcenterMaxCall" />
                                </td>
                                <th scope="row"><spring:message code="crm.lbl.validCheckCallSecond" /><!-- 유효통화시간(초) --></th>
                                <td>
                                    <input id="validCheckCallSecond" name="validCheckCallSecond" type="number" class="form_numeric ar" required data-name="<spring:message code="crm.lbl.validCheckCallSecond" />" data-bind="value:data.validCheckCallSecond" />
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                </section>
            </div>
            <!-- //CRM 옵션 설정 -->

            <!-- 판매 옵션 설정 -->
            <div clas="mt10">
                <section class="group">
                <div class="header_area"></div>
                <div class="table_form">
                    <table>
                        <caption></caption>
                        <colgroup>
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.termSpecie" /><!-- 정금용어 --></th>
                                <td>
                                    <input id="termSpecie01" name="termSpecie" type="radio" value="01" data-name="<spring:message code="global.lbl.termSpecie" />" data-bind="checked:data.termSpecie" /><spring:message code="global.lbl.termSpecie01" />
                                    <input id="termSpecie02" name="termSpecie" type="radio" value="02" data-name="<spring:message code="global.lbl.termSpecie" />" data-bind="checked:data.termSpecie" /><spring:message code="global.lbl.termSpecie02" />
                                </td>
                                <th scope="row"><spring:message code="sal.lbl.contractPayChk" /><!-- 계약수납 --></th>
                                <td>
                                    <input type="checkbox" id="allowContractSaleYn" name="allowContractSaleYn" data-name="<spring:message code='sal.lbl.contractPayChk' />" data-bind="checked:isAllowContractSaleYn, events:{change:changeAllowContractSaleYn}" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.allowSubscriptionSaleYn" /><!-- 예판수납 --></th>
                                <td>
                                    <input type="checkbox" id="allowSubscriptionSaleYn" name="allowSubscriptionSaleYn" data-name="<spring:message code='global.lbl.allowSubscriptionSaleYn' />" data-bind="checked:isAllowSubscriptionSaleYn, events:{change:changeAllowSubscriptionSaleYn}" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.insExpAlarmDay" /><!-- 보험만료알람 --></th>
                                <td>
                                    <input id="insExpAlarmDay" name="insExpAlarmDay" type="number" class="form_numeric ar" required data-name="<spring:message code="global.lbl.insExpAlarmDay" />" data-bind="value:data.insExpAlarmDay" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="header_area">
                    <h2 class="title_basic"><spring:message code="cmm.title.saleContractText" /><!-- 판매계약서 문구 --></h2>
                </div>

                <div class="table_form">
                    <table>
                        <caption></caption>
                        <tbody>
                            <tr>
                                <td>
                                    <textarea id="saleContractText" name="saleContractText" rows="5" data-name="<spring:message code="global.lbl.saleContractText" />" data-bind="value:data.saleContractText" class="form_textarea"></textarea>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="header_area">
                    <h2 class="title_basic"><spring:message code="global.lbl.saleInsuranceText" /><!-- 보험계약서 문구 --></h2>
                </div>

                <div class="table_form">
                    <table>
                        <caption></caption>
                        <tbody>
                            <tr>
                                <td>
                                    <textarea id="saleInsuranceText" name="saleInsuranceText" rows="5" data-name="<spring:message code="global.lbl.saleInsuranceText" />" data-bind="value:data.saleInsuranceText" class="form_textarea"></textarea>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="header_area">
                    <h2 class="title_basic"><spring:message code="global.lbl.preSaleText" /><!-- 예약판매비고 --></h2>
                </div>

                <div class="table_form">
                    <table>
                        <caption></caption>
                        <tbody>
                            <tr>
                                <td>
                                    <textarea id="preSaleText" name="preSaleText" rows="5" data-name="<spring:message code="global.lbl.preSaleText" />" data-bind="value:data.preSaleText" class="form_textarea"></textarea>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="header_area">
                    <h2 class="title_basic"><spring:message code="global.lbl.usedCarText" /><!-- 중고차비고 --></h2>
                </div>

                <div class="table_form">
                    <table>
                        <caption></caption>
                        <tbody>
                            <tr>
                                <td>
                                    <textarea id="usedCarText" name="usedCarText" rows="5" data-name="<spring:message code="global.lbl.usedCarText" />" data-bind="value:data.usedCarText" class="form_textarea"></textarea>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                </section>
            </div>
            <!-- //판매 옵션 설정 -->

            <!-- 부품 옵션 설정 -->
            <div clas="mt10">
                <section class="group">
                <div class="header_area"></div>
                <div class="table_form">
                    <table>
                        <caption></caption>
                        <colgroup>
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col style="width:10%;">
                            <col style="width:15%;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row"><spring:message code="global.lbl.bmpBpCd" /><!-- BMP거래처코드 --></th>
                                <td>
                                    <input id="bmpBpCd" name="bmpBpCd" type="text" class="form_input" data-name="<spring:message code="global.lbl.bmpBpCd" />" data-bind="value:data.bmpBpCd" />
                                </td>
                                <th scope="row"><spring:message code="global.lbl.prefixCustNo" /><!-- Prefix고객번호 --></th>
                                <td>
                                    <input id="prefixCustNo" name="prefixCustNo" type="text" class="form_input" data-name="<spring:message code="global.lbl.prefixCustNo" />" data-bind="value:data.prefixCustNo" />
                                </td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                </section>
            </div>
            <!-- //부품 옵션 설정 -->
        </div>
        <!-- //탭메뉴 전체 영역 -->
    </form>
</section>

<script type="text/javascript">

//멤버쉽 운영기준 코드
var membershipPolicyList = [];
<c:forEach var="obj" items="${membershipPolicyList}">
membershipPolicyList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
</c:forEach>

//자동배정기준 코드
var autoAssignCdList = [];
<c:forEach var="obj" items="${autoAssignCdList}">
autoAssignCdList.push({"cmmCd":"${obj.cmmCd}", "cmmCdNm":"${obj.cmmCdNm}", "useYn":"${obj.useYn}"});
</c:forEach>

$(document).ready(function() {
    var viewModel;

    //탭설정
    $("#tabstrip").kendoExtTabStrip({
        animation:false
    });

    //메인딜러여부
    $("#mainDlrYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    //정비딜러여부
    $("#serDlrYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    //판매딜러여부
    $("#salDlrYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    //부품딜러여부
    $("#parDlrYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    //삭제여부
    $("#delYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    //동일그룹딜러코드
    $("#groupDealers").kendoExtDropDownList({
        dataSource:[{"dlrCd":"", "dlrNm":""}]
        ,template:"# if(data.dlrCd != '') { # [#:data.dlrCd#] #:data.dlrNm# #}#"
        ,dataValueField:"dlrCd"
        ,dataTextField:"dlrNm"
    });

    /************************************************************
     * 시스템 옵션
     ************************************************************/
    //시스템 딜러여부
    $("#sysOwnerYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    //센터 DMS 사용딜러 여부
    $("#useCenterDmsYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    //DMS 사용여부
    $("#dmsUseYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    /************************************************************
     * CRM 옵션
     ************************************************************/
    //멤버쉽 옵션
    //멤버쉽 운영기준
    $("#membershipPolicy").kendoExtDropDownList({
        dataSource:membershipPolicyList
        ,dataValueField:"cmmCd"
        ,dataTextField:"cmmCdNm"
        ,optionLabel:" "
        ,index:0
    });
    $("#membershipPolicy").data("kendoExtDropDownList").readonly(true);
    $("#membershipPolicy").parent().addClass("readonly_area");

    //멤버쉽 포인트 유효기간
    $("#membershipPointPeriod").kendoExtNumericTextBox({
        decimals:0
        ,format:"n0"
        ,min:0
        ,max:999999
    });

    //딜러 멤버십 포인트 사용 상한치
    $("#membershipPointUseMaxPoint").kendoExtNumericTextBox({
        decimals:0
        ,format:"n0"
        ,min:0
    });

    //딜러 멤버십 포인트환산 기준포인트
    $("#membershipPointExchgPoint").kendoExtNumericTextBox({
        decimals:0
        ,format:"n0"
        ,min:0
    });

    //딜러 멤버십 포인트환산 기준금액
    $("#membershipPointExchgMoney").kendoExtNumericTextBox({
        decimals:0
        ,format:"n0"
        ,min:0
    });

    //회원등급 수동 변경 여부
    $("#membershipGradeNoneAutoYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    //포인트 적립율 - 영수증가격
    $("#rcptAmtsRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - 용품
    $("#goodsRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - 보험(신규)
    $("#insuranceNewRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - 보험(연장)
    $("#insuranceExtendedRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - 금융(수수료)
    $("#fincRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - 대행
    $("#executionRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - 부품판매
    $("#revPartsRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - RO유형 - 일반
    $("#gnlRteRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - RO유형 - 보증
    $("#wartRteRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - RO유형 - 보험현황
    $("#incRteRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - RO유형 - 내부
    $("#intRteRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //포인트 적립율 - RO유형 - 리워크
    $("#rwrkRteRate").kendoExtNumericTextBox({
        decimals:1
        ,format:"n1"
        ,min:0
        ,max:100
        ,restrictDecimals:true
        ,step:0.1
    });

    //판매기회 옵션
    //자동배정기준
    $("#autoAssignCd").kendoExtDropDownList({
        dataSource:autoAssignCdList
        ,dataValueField:"cmmCd"
        ,dataTextField:"cmmCdNm"
        ,optionLabel:" "
        ,index:0
    });

    //OB 배정 자동여부
    $("#obAssignAutoYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    //자동전출설정(일)
    $("#autoTrsfConf").kendoExtNumericTextBox({
        decimals:0
        ,format:"n0"
        ,min:0
    });

    //판매기회 비밀번호 설정여부
    $("#salesOpptPwYn").kendoExtDropDownList({
        dataSource:["", "Y", "N"]
    });

    //콜센터 옵션
    //딜러 콜센터 Max 콜수
    $("#callcenterMaxCall").kendoExtNumericTextBox({
        decimals:0
        ,format:"n0"
        ,min:0
    });

    //유효통과시간(초)
    $("#validCheckCallSecond").kendoExtNumericTextBox({
        decimals:0
        ,format:"n0"
        ,min:1
        ,max:10000
    });

    /************************************************************
     * 판매 옵션
     ************************************************************/
    //보험만료알람
    $("#insExpAlarmDay").kendoExtNumericTextBox({
        decimals:0
        ,format:"n0"
        ,min:0
    });

    var validator = $("#dealerForm").kendoExtValidator().data("kendoExtValidator");
   
       //下载功能数据库备份文件  贾明 2019-6-20 start 
       var contractFileClass = $("#contractFile").attr("class");
       //console.log("数据",contractFileClass);
       if("btn_m hidden" === contractFileClass){
            $("#contractFileTh").attr("class","hidden")
       } else {
            $("#contractFileTh").attr("class","")
       }
     
       $("#contractFile").kendoButton({
            click:function(e) {
             
             var distChar = "E";
             var fileCatalogue ="/Backup/tibero/backupset/";
             var tDate = kendo.toString(new Date(), "yyyy-MM-dd");
             var fileName = 'DMSDB_' + tDate + '-70000.zip';
            
             /**
             var distChar = "E";
             var fileCatalogue ="/119/";
             var tDate = kendo.toString(new Date(), "yyyy-MM-dd");
             var fileName = 'DMSDB_2019-08-02-70000.zip';
              **/
             //fileCatalogue=F:/Backup/tibero&fileName=DMSDB_2019-06-20-70000.zip
             var params = "fileCatalogue="+ fileCatalogue +"&fileName="+fileName +"&distChar="+distChar ;
        
               $.ajax({
                    url:"<c:url value='/cmm/cmp/dealer/checkWhetherFileExists.do' />?"+params,
                    type:'GET',
                    dataType:'json',
                    error:function(jqXHR,status,error) {
                        dms.notification.error(jqXHR.responseJSON.errors);
                    },
                    success:function(jqXHR, textStatus) {
                          if(jqXHR.doesFileExist){
                             //location.href = "<c:url value='/cmm/cmp/dealer/selectFileDownload.do' />?"+params
                             location.href = "<c:url value='/cmm/cmp/dealer/download.do' />?"+params
                          } else {
                               dms.notification.warning("<spring:message code='global.error.fileDownloadTips' />");
                          } 
                    }
                });
                 
                 
            	 //location.href = "<c:url value='/cmm/cmp/dealer/selectFileDownload.do' />";

            }
      });
   //下载功能数据库备份文件 贾明 2019-6-20 end 


    // 저장
    $("#btnSave").kendoButton({
        click:function(e) {

            if (dms.string.isEmpty(viewModel.data.dlrCd)) {
                dms.notification.info("<spring:message code='global.lbl.dealer' var='dealerMsg' /><spring:message code='global.info.validation.select' arguments='${dealerMsg}' />");
                return false;
            }

            if (validator.validate()) {

//                 var data = $("#dealerForm").serializeObject();
//                 delete data["groupDealers"];

                $.ajax({
                    url:"<c:url value='/cmm/cmp/dealer/updateDealer.do' />"
                    ,data:JSON.stringify(viewModel.data)
                    ,type:'POST'
                    ,dataType:'json'
                    ,contentType:'application/json'
                    ,beforeSend:function(jqXHR, settings){
                        dms.loading.show();
                    }
                    ,complete:function(jqXHR, textStatus){
                        dms.loading.hide();
                    }
                    ,error:function(jqXHR,status,error){
                        dms.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
                    }
                }).done(function(result) {
                    //정상적으로 반영 되었습니다.
                    dms.notification.success("<spring:message code='global.info.success'/>");
                });
            }
        }
    });

    $.ajax({
        url:"<c:url value='/cmm/cmp/dealer/selectDealer.do' />",
        data:JSON.stringify({sDlrCd:"${dlrCd}"}),
        type:"POST",
        dataType:"json",
        contentType:"application/json",
        error:function(jqXHR,status,error){
            dms.notification.error(jqXHR.responseJSON.errors[0].errorMessage);
        }

    }).done(function(result) {
        viewModel = new kendo.observable({
            "data":result.dealer
            ,"groupDealerList":result.groupDealerList
            ,"isAllowSubscriptionSaleYn":function(){
                return this.data.allowSubscriptionSaleYn === "Y"? true:false;
            }
            ,"changeAllowSubscriptionSaleYn":function(e){
                if(e.target.checked){
                    this.data.allowSubscriptionSaleYn = "Y";
                }else{
                    this.data.allowSubscriptionSaleYn = "N";
                }
            }
            ,"isAllowContractSaleYn":function(){
                return this.data.allowContractSaleYn === "Y"? true:false;
            }
            ,"changeAllowContractSaleYn":function(e){
                if(e.target.checked){
                    this.data.allowContractSaleYn = "Y";
                }else{
                    this.data.allowContractSaleYn = "N";
                }
            }

        });

        kendo.bind($("#dealerForm"), viewModel);
    });
});
</script>