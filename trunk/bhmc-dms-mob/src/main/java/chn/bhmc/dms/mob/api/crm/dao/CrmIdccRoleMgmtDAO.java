package chn.bhmc.dms.mob.api.crm.dao;

import java.util.List;

import able.com.mybatis.Mapper;

import chn.bhmc.dms.mob.api.crm.vo.IdccRoleMgmtSearchVO;
import chn.bhmc.dms.mob.api.crm.vo.IdccRoleMgmtVO;

/**
 * 판매기회유입유형 관리에 관한 데이터처리 매퍼 클래스
 *
 * @author kyo jin lee
 * @since 2016.03.07.
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *       수정일                            수정자                                 수정내용
 *  ----------------    ------------    ---------------------------
 *   2016.03.07         kyo jin lee            최초 생성
 * </pre>
 */

@Mapper("CrmidccRoleMgmtDAO")
public interface CrmIdccRoleMgmtDAO {



    public List<IdccRoleMgmtVO> selectIdccRoleMgmtsByCondition(IdccRoleMgmtSearchVO searchVO) throws Exception;


    public List<IdccRoleMgmtVO> selectIdccRoleMgmtsByRole(IdccRoleMgmtSearchVO searchVO) throws Exception;


}
