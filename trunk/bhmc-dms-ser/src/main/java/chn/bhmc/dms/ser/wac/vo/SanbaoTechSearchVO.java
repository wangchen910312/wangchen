package chn.bhmc.dms.ser.wac.vo;

import java.util.Date;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

import chn.bhmc.dms.core.datatype.SearchVO;
import chn.bhmc.dms.core.support.databind.JsonDateDeserializer;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : SanbaoTechSearchVO.java
 * @Description : 클래스 설명을 기술합니다.
 * @author Kwon Ki Hyun
 * @since 2016. 5. 10.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 5. 10.     Kwon Ki Hyun     최초 생성
 * </pre>
 */

public class SanbaoTechSearchVO extends SearchVO{

    /**
     * Statements
     * (long)serialVersionUID
     */
    private static final long serialVersionUID = 2238246895300761740L;

    /**
     * 딜러코드
     */
    private String sDlrCd;

    /**
     * 조회 시작일자
     */
    @JsonDeserialize(using=JsonDateDeserializer.class)
    private Date sFromDt;

    /**
     * 조회 종료일자
     */
    @JsonDeserialize(using=JsonDateDeserializer.class)
    private Date sToDt;

    /**
     * 차대번호
     */
    private String sVinNo;

    /**
     * 삼보요청 상태
     */
    private String sStatCd;

    /**
     * 문서번호
     */
    private String sDocNo;

    /**
     * 사용여부
     */
    private String sUseYn;

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
     * @return the sFromDt
     */
    public Date getsFromDt() {
        return sFromDt;
    }

    /**
     * @param sFromDt the sFromDt to set
     */
    public void setsFromDt(Date sFromDt) {
        this.sFromDt = sFromDt;
    }

    /**
     * @return the sToDt
     */
    public Date getsToDt() {
        return sToDt;
    }

    /**
     * @param sToDt the sToDt to set
     */
    public void setsToDt(Date sToDt) {
        this.sToDt = sToDt;
    }

    /**
     * @return the sVinNo
     */
    public String getsVinNo() {
        return sVinNo;
    }

    /**
     * @param sVinNo the sVinNo to set
     */
    public void setsVinNo(String sVinNo) {
        this.sVinNo = sVinNo;
    }

    /**
     * @return the sStatCd
     */
    public String getsStatCd() {
        return sStatCd;
    }

    /**
     * @param sStatCd the sStatCd to set
     */
    public void setsStatCd(String sStatCd) {
        this.sStatCd = sStatCd;
    }

    /**
     * @return the sDocNo
     */
    public String getsDocNo() {
        return sDocNo;
    }

    /**
     * @param sDocNo the sDocNo to set
     */
    public void setsDocNo(String sDocNo) {
        this.sDocNo = sDocNo;
    }

    /**
     * @return the sUseYn
     */
    public String getsUseYn() {
        return sUseYn;
    }

    /**
     * @param sUseYn the sUseYn to set
     */
    public void setsUseYn(String sUseYn) {
        this.sUseYn = sUseYn;
    }





}
