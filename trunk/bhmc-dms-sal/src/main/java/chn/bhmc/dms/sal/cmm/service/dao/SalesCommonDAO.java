package chn.bhmc.dms.sal.cmm.service.dao;

import java.util.List;

import able.com.mybatis.Mapper;

import org.apache.ibatis.annotations.Param;

import chn.bhmc.dms.cmm.cmp.vo.DealerSearchVO;
import chn.bhmc.dms.cmm.cmp.vo.DealerVO;
import chn.bhmc.dms.sal.cmm.vo.MobileSumSrchVO;
import chn.bhmc.dms.sal.cmm.vo.MobileSumVO;
import chn.bhmc.dms.sal.veh.vo.CarInfoSearchVO;
import chn.bhmc.dms.sal.veh.vo.CarInfoVO;
/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : SalesCommonDAO
 * @Description : 판매공통 DAO
 * @author KIM YEWON
 * @since 2016. 9. 26.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 9. 26.     KIM YEWON              최초 생성
 * </pre>
 */

@Mapper("salesCommonDAO")
public interface SalesCommonDAO {

    /**
     * 로그인된 딜러로 사업부,사업소,성,시를 조회.
     */
    public DealerVO selectDealerInfo(DealerSearchVO searchVO) throws Exception;


    /**
     * 딜러마스터에서 사업부를 그룹핑하여 조회.
     */
    public int selectDealerSdptCnt(DealerSearchVO searchVO) throws Exception;
    public List<DealerVO> selectDealerSdpt(DealerSearchVO searchVO) throws Exception;


    /**
     * 딜러마스터에서 사무소를 그룹핑하여 조회.
     */
    public int selectDealerOfficeCnt(DealerSearchVO searchVO) throws Exception;
    public List<DealerVO> selectDealerOffice(DealerSearchVO searchVO) throws Exception;


    /**
     * 딜러마스터에서 성을 그룹핑하여 조회.
     */
    public int selectDealerSungCnt(DealerSearchVO searchVO) throws Exception;
    public List<DealerVO> selectDealerSung(DealerSearchVO searchVO) throws Exception;



    /**
     * 딜러마스터에서 도시를 그룹핑하여 조회.
     */
    public int selectDealerCityCnt(DealerSearchVO searchVO) throws Exception;
    public List<DealerVO> selectDealerCity(DealerSearchVO searchVO) throws Exception;

    //로그인한 USER의 심사등급을 가져온다.
    public String selectUserEvalGrade(@Param("dlrCd") String dlrCd,@Param("usrId") String usrId, @Param("wrkDstinCd") String wrkDstinCd) throws Exception;

    /**
     * 딜러마스터에서 딜러를 조회.
     */
    public int selectDealerCnt(DealerSearchVO searchVO) throws Exception;
    public List<DealerVO> selectDealer(DealerSearchVO searchVO) throws Exception;

    /**
     * 모바일 총경리용 조회
     */
    public List<MobileSumVO> selectMobileMainSum(MobileSumSrchVO searchVO) throws Exception;

    /**
     * 차종 조건으로 차관(모델명) 검색
     */
    public List<CarInfoVO> selectCarLooksFscListForCom(CarInfoSearchVO searchVO) throws Exception;

    /**
     * 모델 조건으로 OCN 검색 - 전체
     */
    public List<CarInfoVO> selectOcnListForCom(CarInfoSearchVO searchVO) throws Exception;

    /**
     * 모델 조건으로 OCN 검색 - 정규오더
     */
    public List<CarInfoVO> selectBtoOcnListForCom(CarInfoSearchVO searchVO) throws Exception;

    /**
     * 모델 조건으로 OCN 검색 - 전략오더
     */
    public List<CarInfoVO> selectStrOcnListForCom(CarInfoSearchVO searchVO) throws Exception;

    /**
     * OCN 조건으로 외장색 검색
     */
    public List<CarInfoVO> selectExtColorListForCom(CarInfoSearchVO searchVO) throws Exception;

    /**
     * 외장색 조건으로 내장색 검색
     */
    public List<CarInfoVO> selectIntColorListForCom(CarInfoSearchVO searchVO) throws Exception;

}
