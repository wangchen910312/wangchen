package chn.bhmc.dms.crm.css.vo;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;

import chn.bhmc.dms.core.datatype.SearchVO;

/**
 * 설문 보기 관리 SearchVO
 *
 * @ClassName   : SurveyAnswerSearchVO.java
 * @Description : SurveyAnswerSearchVO Class
 * @author hyun ho kim
 * @since 2016. 3. 4.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 3. 4.     hyun ho kim     최초 생성
 * </pre>
 */

public class SurveyAnswerSearchVO extends SearchVO {

    /**
     * Statements
     * (long)serialVersionUID
     */
    private static final long serialVersionUID = -3240584106733969765L;

    /**
     * 딜러코드
     **/
    private  String                sDlrCd;

    /**
     * 사업장코드
     **/
    private  String                sPltCd;

    /**
     * 설문템플릿일련번호
     **/
     private  int      sSubyTmplSeq;

     /**
     * 설문템플릿질문일련번호
     **/
     private  int      sSubyTmplQestSeq;



    /**
     * @return the sSubyTmplSeq
     */
    public int getsSubyTmplSeq() {
        return sSubyTmplSeq;
    }



    /**
     * @param sSubyTmplSeq the sSubyTmplSeq to set
     */
    public void setsSubyTmplSeq(int sSubyTmplSeq) {
        this.sSubyTmplSeq = sSubyTmplSeq;
    }



    /**
     * @return the sSubyTmplQestSeq
     */
    public int getsSubyTmplQestSeq() {
        return sSubyTmplQestSeq;
    }



    /**
     * @param sSubyTmplQestSeq the sSubyTmplQestSeq to set
     */
    public void setsSubyTmplQestSeq(int sSubyTmplQestSeq) {
        this.sSubyTmplQestSeq = sSubyTmplQestSeq;
    }



    /**
     * @return the sDlrCd
     */
    public String getsDlrCd() {
        return sDlrCd;
    }



    /**
     * @param sDlrCd the sDlrCd to set
     */
    public void setsDlrCd(String sDlrCd) {
        this.sDlrCd = sDlrCd;
    }



    /**
     * @return the sPltCd
     */
    public String getsPltCd() {
        return sPltCd;
    }



    /**
     * @param sPltCd the sPltCd to set
     */
    public void setsPltCd(String sPltCd) {
        this.sPltCd = sPltCd;
    }



    /*
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return ReflectionToStringBuilder.toString(this);
    }

}