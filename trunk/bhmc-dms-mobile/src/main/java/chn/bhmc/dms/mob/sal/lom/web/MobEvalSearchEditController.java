package chn.bhmc.dms.mob.sal.lom.web;

import javax.annotation.Resource;

import able.com.web.HController;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import chn.bhmc.dms.cmm.sci.service.CommonCodeService;
import chn.bhmc.dms.core.datatype.SearchResult;
import chn.bhmc.dms.core.util.DateUtil;
import chn.bhmc.dms.mob.cmm.util.MobUtil;
import chn.bhmc.dms.mob.cmm.vo.MobLoginVO;
import chn.bhmc.dms.sal.lom.service.EvalSearchEditService;
import chn.bhmc.dms.sal.lom.vo.EvalSearchEditSaveVO;
import chn.bhmc.dms.sal.lom.vo.EvalSearchEditSearchVO;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : EvalSearchEditController
 * @Description : 클래스 설명을 기술합니다.
 * @author Park Sung Sin
 * @since 2016. 5. 02.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 5. 02.       Park Sung Sin        최초 생성
 * </pre>
 */
@Controller
@RequestMapping(value = "/mob/sal/lom/evalSearchEdit")
public class MobEvalSearchEditController extends HController {
    /**
     * 평가정보 다운로드 서비스
     */
    @Resource(name="evalSearchEditService")
    EvalSearchEditService evalSearchEditService;

    /**
     * 공통코드 관리 서비스
     */
    @Resource(name="commonCodeService")
    CommonCodeService commonCodeService;

    /**
     * 평가조회 및 수정 View 을 출력한다.
     * @return
     */
    @RequestMapping(value = "/selectEvalSearchEditMain.do", method = RequestMethod.GET)
    public String selectEvalSearchEditConditionMain(Model model) throws Exception {

        String langCd = LocaleContextHolder.getLocale().getLanguage();

        MobLoginVO mobLoginVO = MobUtil.getLoginVO();
        model.addAttribute("userId", mobLoginVO.getUserId());
        model.addAttribute("userNm", mobLoginVO.getUserNm());
        model.addAttribute("dlrCd", mobLoginVO.getDlrCd());
        model.addAttribute("dlrNm", mobLoginVO.getDlrNm());

        // 현재일자 DateUtil
        String sysDate = DateUtil.getDate("yyyy-MM-dd");
        String oneDay  = DateUtil.getDate("yyyy-MM") + "-01";
        model.addAttribute("toDay", sysDate);
        model.addAttribute("oneDay", oneDay);

        // 물류 서비스 평가 SAL030
        model.addAttribute("dstbSerEvalInfo", commonCodeService.selectCommonCodesByCmmGrpCd("SAL030", null, langCd));
        // 기사만족도 SAL031
        model.addAttribute("driverStsfInfo", commonCodeService.selectCommonCodesByCmmGrpCd("SAL031", null, langCd));
        // 차량교부시간 SAL032
        model.addAttribute("carIssueHmInfo", commonCodeService.selectCommonCodesByCmmGrpCd("SAL032", null, langCd));
        // 차량교부질량 SAL033
        model.addAttribute("carIssueMassInfo", commonCodeService.selectCommonCodesByCmmGrpCd("SAL033", null, langCd));

        model.addAttribute("carStatCdInfo", commonCodeService.selectCommonCodesByCmmGrpCd("SAL001", null, langCd));

        return "/mob/sal/lom/evalSearchEdit/selectEvalSearchEditMain";
    }


    /**
     * 평가조회 목록
     * @param Model
     * @return
     */
    @RequestMapping(value = "/selectEvalSearchEditList.do", method = RequestMethod.GET)
    public String selectEvalSearchEditList(Model model) throws Exception {
        model.addAttribute("carStatCdInfo", commonCodeService.selectCommonCodesByCmmGrpCd("SAL001", null, LocaleContextHolder.getLocale().getLanguage()));
        return "/mob/sal/lom/evalSearchEdit/selectEvalSearchEditList";
    }
    
     /**
     * 이력조회 목록
     * @param Model
     * @return
     */
    @RequestMapping(value = "/selectEvalSearchEditSubList.do", method = RequestMethod.GET)
    public String selectEvalSearchEditSubList(Model model) throws Exception {
        return "/mob/sal/lom/evalSearchEdit/selectEvalSearchEditSubList";
    }
    
    @RequestMapping(value = "/selectEvalSearchEditSubListSearch.do", method = RequestMethod.POST)
    @ResponseBody
    public SearchResult selectEvalHistorySrchCondition(@RequestBody EvalSearchEditSearchVO searchVO) throws Exception {

        SearchResult result = new SearchResult();
        searchVO.setsLangCd(LocaleContextHolder.getLocale().getLanguage());

        result.setTotal(evalSearchEditService.selectEvalHistorySrchConditionCnt(searchVO));  //Result, Row Count

        if(result.getTotal() != 0){
            result.setData(evalSearchEditService.selectEvalHistorySrchCondition(searchVO));  //Result, Search
        }

        return result;
    }


    /**
     * 평가정보 목록을 조회한다.
     * @param searchVO - 조회 조건을 포함하는 EvalSearchEditSearchVO
     * @return
     */
    @RequestMapping(value = "/selectEvalSearchEdit.do", method = RequestMethod.POST)
    @ResponseBody
    public SearchResult selectEvalSearchEditCondition(@RequestBody EvalSearchEditSearchVO searchVO) throws Exception {

        SearchResult result = new SearchResult();
        MobLoginVO mobLoginVO = MobUtil.getLoginVO();
        searchVO.setsLangCd(LocaleContextHolder.getLocale().getLanguage());
        searchVO.setsDlrCd(mobLoginVO.getDlrCd());

        result.setTotal(evalSearchEditService.selectEvalSearchEditConditionCnt(searchVO));  //Result, Row Count

        if(result.getTotal() != 0){
            result.setData(evalSearchEditService.selectEvalSearchEditCondition(searchVO));  //Result, Search
        }

        return result;
    }






    /**
     * 평가정보 수정 처리를 한다.
     * @param saveVO - 수정 목록을 포함하는 EvalSearchEditSaveVO
     * @param
     * @return
     */
    @RequestMapping(value = "/updateEvalSearchEdit.do", method = RequestMethod.POST)
    @ResponseBody
    public boolean updateEvalSearchEdit(@Validated @RequestBody EvalSearchEditSaveVO saveVO) throws Exception {

        evalSearchEditService.updateEvalSearchEdit(saveVO);
        return true;
    }

}
