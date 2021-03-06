<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="dms" uri="/WEB-INF/tlds/taglibs-dms"%>
<!-- content -->
<section id="content">
    <!-- 판매순위관리  영역 -->
    <section class="group">
        <div class="header_area">
            <h1 class="title_basic"><!-- 销量排行管理 --><!-- 판매순위관리 --></h1>
            <div class="btn_right">
                <button id="btnSearch" class="btn_m btn_search"><spring:message code="par.btn.search" /><!-- btnSearch --></button>
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
                        <th scope="row"><span class="bu_required"><spring:message code="par.lbl.dlrCd" /></span></th>
                        <td>
                            <input id="sDlrCd" type="text" value="" class="form_input form_required" />
                        </td class="required_area">
                        <th scope="row"><spring:message code="par.lbl.dt" /></th>
                        <td>
                            <div class="form_float">
                                <div class="date_left">
                                    <input id="dtpStartDt" class="form_datepicker">
                                    <span class="txt_from">~</span>
                                </div>
                                <div class="date_right">
                                    <input id="dtpEndDt" class="form_datepicker">
                                </div>
                            </div>
                        </td>
                        <th scope="row"><spring:message code="par.lbl.check" /></th>
                        <td>
                            <label class="label_check"><input type="checkbox" name="" class="form_check"><spring:message code="par.lbl.saleRankAmt" /></label>
                            <label class="label_check"><input type="checkbox" name="" class="form_check"><spring:message code="par.lbl.qty" /></label>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><spring:message code="par.lbl.saleType" /></th>
                        <td>
                            <input id="txtSaleType" class="form_comboBox" />
                        </td>
                        <th scope="row"><spring:message code="par.lbl.partItemGrp" /></th>
                        <td>
                            <input id="txtPartItemGrp" class="form_comboBox" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="table_grid mt10">

            <div class="grid"></div>

            <%-- <table class="grid">
                <caption></caption>
                <thead>
                    <tr>
                        <th scope="col" data-field="data1">顺序<!-- 순위 --></th>
                        <th scope="col" data-field="data2">配件编号<!-- 부번 --></th>
                        <th scope="col" data-field="data3">配件名称<!-- 품명 --></th>
                        <th scope="col" data-field="data4">销售业绩<!-- 판매실적 --></th>
                        <th scope="col" data-field="data5">销售占比<!-- 판매비율 --></th>
                        <th scope="col" data-field="data6">销售累计<!-- 판매누계 --></th>
                        <th scope="col" data-field="data7">销售累计占比<!-- 누계비율 --></th>
                        <th scope="col" data-field="data8">MOS</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table> --%>
        </div>

    </section>
    <!-- // 판매순위관리 영역 -->

</section>
<!-- //content -->

<!-- script -->
<script>
    $(document).ready(function() {
        //btnSearch
        $("#btnSearch").kendoButton({
            click:function(e){
                // ready message
                dms.notification.success("<spring:message code='global.info.ready'/>");
            }
        });

        $(".tab_area").kendoExtTabStrip({
            animation:false
        });
        $(".form_datepicker").kendoDatePicker({
            format:"yyyy-MM-dd"
        });
        $(".form_comboBox").kendoExtDropDownList();

        $(".grid").kendoGrid({
            height:500
            ,columns:
                [
                    {field:"saleOrdetRank", title:"<spring:message code='par.lbl.sortOrder'/>", width:70}
                    ,{field:"itemCd", title:"<spring:message code='par.lbl.itemCd'/>", width:100}
                    ,{field:"itemNm", title:"<spring:message code='par.lbl.itemNm'/>", width:100}
                    ,{field:"saleRecord", title:"<spring:message code='par.lbl.saleRecord'/>", width:100}
                    ,{field:"salePercentage", title:"<spring:message code='par.lbl.salePercentage'/>", width:100}
                    ,{field:"saleTotSum", title:"<spring:message code='par.lbl.saleTotSum'/>", width:100}
                    ,{field:"saleTotSumPercentage", title:"<spring:message code='par.lbl.saleTotSumPercentage'/>", width:100}
                    ,{field:"mos", title:"<spring:message code='par.lbl.saleMos'/>", width:100}
                ]
        });

    });
</script>
<!-- //script -->