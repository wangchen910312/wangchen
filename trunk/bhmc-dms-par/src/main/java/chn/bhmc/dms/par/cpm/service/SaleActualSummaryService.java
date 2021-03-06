package chn.bhmc.dms.par.cpm.service;

import java.util.List;

import chn.bhmc.dms.par.cpm.vo.SaleActualSummaryVO;
import chn.bhmc.dms.par.cpm.vo.SalePlanSearchVO;

/**
 * 판매집계실적 서비스
 *
 * @author In Bo Shim
 * @since 2016. 7. 15.
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *      수정일                     수정자                     수정내용
 *  ===========    =============    ===========================
 *  2016. 7. 15.     In Bo Shim      최초 생성
 * </pre>
 */

public interface SaleActualSummaryService {

    /**
     * 판매집계실적  정보를 등록한다.
     * @param saleActualSummaryVO 등록할 정보가 담긴 SaleActualSummaryVO
     * @return 등록된 목록수
     */
    public int insertSaleActualSummary(SaleActualSummaryVO saleActualSummaryVO) throws Exception;

    /**
     * 판매집계실적  정보를 수정한다.
     * @param saleActualSummaryVO - 수정할 정보가 담긴 SaleActualSummaryVO
     * @return 수정된 목록수
     */
    public int updateSaleActualSummary(SaleActualSummaryVO saleActualSummaryVO) throws Exception;

    /**
     * 판매집계실적  정보를 삭제한다.
     * @param saleActualSummaryVO - 삭제할 정보가 담긴 SaleActualSummaryVO
     * @return 삭제된 목록수
     */
    public int deleteSaleActualSummary(SaleActualSummaryVO saleActualSummaryVO) throws Exception;

    /**
     * 판매집계실적  정보를 등록/수정/삭제한다.
     * @param saleActualSummaryVO - 삭제할 정보가 담긴 SaleActualSummaryVO
     * @return 등록/수정/삭제 목록수
     */
    //public void multiSaleActualSummary(SaleActualSummarySaveVO saleActualSummarySaveVO) throws Exception;

    /**
     * Key에 해당하는 판매집계실적  정보를 조회한다.
     * @param dlrCd - 딜러코드
     * @param itemCd - 부품번호
     * @return 조회한 판매집계실적  정보
     */
    public SaleActualSummaryVO selectSaleActualSummaryByKey(String dlrCd, String itemCd) throws Exception;

    /**
     * 조회 조건에 해당하는 판매집계실적  정보를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 SaleActualSummarySearchVO
     * @return 조회 목록
     */
    public List<SaleActualSummaryVO> selectSaleActualSummarysByCondition(SalePlanSearchVO searchVO) throws Exception;

    /**
     * 조회 조건에 해당하는 판매집계실적  총 갯수를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 SaleActualSummarySearchVO
     * @return 조회 목록 수
     */
    public int selectSaleActualSummarysByConditionCnt(SalePlanSearchVO searchVO) throws Exception;
}
