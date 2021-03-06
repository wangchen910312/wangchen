package chn.bhmc.dms.mob.api.sales.service;

import java.util.List;

import chn.bhmc.dms.mob.api.sales.vo.CarInfoSearchVO;
import chn.bhmc.dms.mob.api.sales.vo.CarInfoVO;







/**
 * 차종, 모델, 옵션 정보 관리 서비스
 *
 * @author Kang Seok Han
 * @since 2016. 1. 11.
 * @version 1.0
 * @see <pre>
 *
 *       수정일               수정자                                 수정내용
 *  ----------------    ------------    ---------------------------
 *   2016.01.05         Kim Jin Suk            최초 생성
 * </pre>
 */

public interface SalesCarInfoService {

    
   
    public List<CarInfoVO> selectCarListsByCondition(CarInfoSearchVO searchVO) throws Exception;
    public List<CarInfoVO> selectBarcodeCarVinsByCondition(CarInfoSearchVO searchVO) throws Exception;
    
    public List<CarInfoVO> selectBarcodeCarNmByCondition(CarInfoSearchVO searchVO) throws Exception;
}
