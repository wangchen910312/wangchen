package chn.bhmc.dms.par.cpm.service.impl;

import chn.bhmc.dms.core.support.idgen.TableNameStrategy;

/**
 * 기술자문 문제번호 구현 클래스
 *
 * @author In Bo Shim
 * @since 2016. 8. 24.
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *      수정일                     수정자                     수정내용
 *  ===========    =============    ===========================
 *  2016. 8. 24.     In Bo Shim      최초 생성
 * </pre>
 */
public class PblmDocNoTableNameStrategy implements TableNameStrategy {

    /*
     * @see chn.bhmc.dms.core.support.idgen.TableNameStrategy#makeTableName(java.lang.String)
     */
    @Override
    public String makeTableName(String originalTableName) {
        return originalTableName;
    }


}
