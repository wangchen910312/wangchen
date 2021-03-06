package chn.bhmc.dms.crm.cso.web;

import javax.annotation.Resource;

import able.com.web.HController;

import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import chn.bhmc.dms.cmm.ath.service.UserService;
import chn.bhmc.dms.cmm.sci.service.CommonCodeService;
import chn.bhmc.dms.core.datatype.SearchResult;
import chn.bhmc.dms.crm.cso.service.SalesActiveMgmtService;
import chn.bhmc.dms.crm.cso.vo.SalesActiveSearchVO;
import chn.bhmc.dms.crm.cso.vo.SalesActiveVO;

/**
 * 영업활동 관리 컨트롤러
 *
 * @author in moon lee
 * @since 2016.04.27.
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *       수정일                            수정자                                 수정내용
 *  ----------------    ------------    ---------------------------
 *   2016.04.27         in moon lee            최초 생성
 * </pre>
 */

@RequestMapping("/crm/cso/salesActive")
@Controller
public class SalesActiveMgmtController extends HController {

    /**
     * 영업활동 관리 서비스
     */
    @Resource(name="salesActiveMgmtService")
    SalesActiveMgmtService salesActiveMgmtService;

    /**
     * 공통코드 관리 서비스
     */
    @Resource(name="commonCodeService")
    CommonCodeService commonCodeService;

    /**
     * 사용자 관리 서비스
     */
    @Resource(name="userService")
    UserService userService;

    /**
     * 영업활동 관리 메인 화면을 출력한다.
     * @return
     */
//    @RequestMapping(value = "/selectSalesActiveMgmtMain.do", method = RequestMethod.GET)
//    public String selectSalesActiveCalMain(Model model ) throws Exception {
//
//        String langCd = LocaleContextHolder.getLocale().getLanguage();
//
//        List<UserVO> users = userService.selectUsersByRoleId(LoginUtil.getDlrCd(), "ROLE_CRM", Constants.SYS_CD_DLR);
//        model.addAttribute("users", users);     // 판매고문
//
//        model.addAttribute("commMthCdList", commonCodeService.selectCommonCodesByCmmGrpCd("CRM321", null, langCd));           // 연락방식코드
//        model.addAttribute("salesActiveTpCdList", commonCodeService.selectCommonCodesByCmmGrpCd("CRM322", null, langCd));     // 영업활동유형코드
//        model.addAttribute("salesActiveStatCdList", commonCodeService.selectCommonCodesByCmmGrpCd("CRM323", null, langCd));   // 영업활동상태코드
//
//        model.addAttribute("custCdList", commonCodeService.selectCommonCodesByCmmGrpCd("CRM023", null, langCd)); // 고객유형 ( 보유 : 01 / 잠재 : 02 )
//
//        return "/crm/cso/salesActive/selectSalesActiveMgmtMain";
//    }

    /**
     * 영업활동 관리 목록 데이터를 조회한다.
     * @param SalesActiveSearchVO - 판매고문, 고객명, 영업활동유형코드
     * @return
     */
    @RequestMapping(value = "/selectSalesActiveMgmts.do", method = RequestMethod.POST)
    @ResponseBody
    public SearchResult selectSalesActiveMgmts(@RequestBody SalesActiveSearchVO searchVO) throws Exception {

        SearchResult result = new SearchResult();

        result.setTotal(salesActiveMgmtService.selectSalesActiveMgmtsByConditionCnt(searchVO));

        if(result.getTotal() != 0){
            result.setData(salesActiveMgmtService.selectSalesActiveMgmtsByCondition(searchVO));
        }

        return result;

    }

    /**
     * 영업활동 상세 정보를 조회한다.
     * @param SalesActiveSearchVO - 영업활동번호
     * @return
     */
    @RequestMapping(value = "/selectSalesActiveMgmtByKey.do", method = RequestMethod.POST)
    @ResponseBody
    public SalesActiveVO selectSalesActiveMgmtByKey(@RequestBody SalesActiveSearchVO searchVO) throws Exception {

        SalesActiveVO vo = salesActiveMgmtService.selectSalesActiveMgmtByKey(searchVO);
        return vo;

    }

    /**
     * 영업활동 관리 정보를 저장 한다.
     * @param SalesActiveVO - 영업활동 정보
     * @param bindingResult
     * @return
     */
    @RequestMapping(value = "/multiSalesActiveMgmts.do", method = RequestMethod.POST)
    @ResponseBody
    public String multiSalesActiveMgmts(@Validated @RequestBody SalesActiveVO salesActiveVO)throws Exception {

        // 영업활동관리에서 등록후 영업활동 번호를 return
        String salesActiveNo;
        salesActiveNo = salesActiveMgmtService.multiSalesActiveMgmts(salesActiveVO);
        return salesActiveNo;
    }

}