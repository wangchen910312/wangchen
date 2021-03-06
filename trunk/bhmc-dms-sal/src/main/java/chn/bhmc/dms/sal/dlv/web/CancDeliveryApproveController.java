package chn.bhmc.dms.sal.dlv.web;


import javax.annotation.Resource;

import able.com.web.HController;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import chn.bhmc.dms.cmm.sci.service.CommonCodeService;
import chn.bhmc.dms.core.datatype.SearchResult;
import chn.bhmc.dms.core.util.DateUtil;
import chn.bhmc.dms.core.util.LoginUtil;
import chn.bhmc.dms.sal.dlv.service.CancDeliveryService;
import chn.bhmc.dms.sal.dlv.vo.CancDeliverySearchVO;
import chn.bhmc.dms.sal.dlv.vo.CancDeliveryVO;
import chn.bhmc.dms.sal.veh.service.CarInfoService;
import chn.bhmc.dms.sal.veh.vo.CarInfoSearchVO;



/**
 * 이월판매취소승인
 *
 * @author Kim yewon
 * @since 2016. 5. 20
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *       수정일                           수정자                              수정내용
 *  ----------------    ------------    ---------------------------
 *   2016.05.20           Kim yewon            최초 생성
 * </pre>
 */

@Controller
@RequestMapping(value = "/sal/dlv/cancDeliveryApprove")
public class CancDeliveryApproveController extends HController {


    /**
     * 공통코드 관리 서비스
     */
    @Resource(name="commonCodeService")
    CommonCodeService commonCodeService;

    /**
     * 차량,모델,OCN, 로컬옵션 정보 서비스
     */
    @Resource(name="carInfoService")
    CarInfoService carInfoService;

    /**
     * 고객인도 서비스
     */
    @Resource(name="cancDeliveryService")
    CancDeliveryService cancDeliveryService;



    /**
     * 이월판매취소결과조회  Main View 을 출력한다.
     * @return
     */
    @RequestMapping(value = "/selectCancDeliveryApproveMain.do", method = RequestMethod.GET)
    public String selectCancDeliveryApproveMain(Model model) throws Exception {
        String langCd = LocaleContextHolder.getLocale().getLanguage();
        String oneDay  = DateUtil.getDate("yyyy-MM") + "-01";
        String lastDay = DateUtil.getDate("yyyy-MM") +"-"+ DateUtil.getMaximumDateOfMonth(Integer.parseInt(DateUtil.getDate("yyyy")), Integer.parseInt(DateUtil.getDate("MM")));
        model.addAttribute("oneDay", oneDay);
        model.addAttribute("lastDay", lastDay);

        //차종
        CarInfoSearchVO carInfoSearchVO = new CarInfoSearchVO();
        model.addAttribute("carLineCdInfo", carInfoService.selectCarListsByCondition(carInfoSearchVO));

        //판매취소사유 공통코드 목록
        model.addAttribute("cancReasonCdList", commonCodeService.selectCommonCodesByCmmGrpCd("SAL129", null, langCd));
        //강제판매처리신청상태 SAL154 - 상태값이 동일함으로 준용
        model.addAttribute("reqStatCdList", commonCodeService.selectCommonCodesByCmmGrpCd("SAL154", null, langCd));
        //승인여부 SAL131
        model.addAttribute("approveYnList", commonCodeService.selectCommonCodesByCmmGrpCd("SAL131", null, langCd));
        //오더유형 SAL138
        model.addAttribute("ordTpList", commonCodeService.selectCommonCodesByCmmGrpCd("SAL138", null, langCd));

        return "/sal/dlv/cancDeliveryApprove/selectCancDeliveryApproveMain";
    }


    /**
     * 이월판매취소결과조회 목록 데이터를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 DeliverySearchVO
     * @return
     */
    @RequestMapping(value = "/selectCancDeliveryApprove.do", method = RequestMethod.POST)
    @ResponseBody
    public SearchResult selectCancDeliveryApprove(@RequestBody CancDeliverySearchVO searchVO) throws Exception {
        SearchResult result = new SearchResult();
        //searchVO.setsDlrCd(LoginUtil.getDlrCd());      // 딜러코드

        result.setTotal(cancDeliveryService.selectCancDeliveryByConditionCnt(searchVO));

        if(result.getTotal() != 0){
            result.setData(cancDeliveryService.selectCancDeliveryByCondition(searchVO));
        }

        return result;
    }

    /**
     * 이월판매취소 승인
     * @param <DeliveryVO>
     * @param DeliveryVO deliveryVO
     * @return SearchResult result
     */
    @RequestMapping(value = "/approveCancDelivery.do", method = RequestMethod.POST)
    public @ResponseBody boolean approveCancDelivery(@RequestBody CancDeliveryVO cancDeliveryVO) throws Exception {

        cancDeliveryVO.setUpdtUsrId(LoginUtil.getUserId());      // 사용자ID

        cancDeliveryService.updateApproveCancDelivery(cancDeliveryVO);

        return true;
    }



}
