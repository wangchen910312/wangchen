package chn.bhmc.dms.sal.aap.vo;

import java.util.Date;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

import chn.bhmc.dms.core.datatype.SearchVO;
import chn.bhmc.dms.core.support.databind.JsonDateDeserializer;

/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : AapMngSearchVO.java
 * @Description : 클래스 설명을 기술합니다.
 * @author Kim yewon
 * @since 2016. 4. 14.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 4. 14.      Kim yewon              최초 생성
 * </pre>
 */

public class AapMngSearchVO extends SearchVO {

    /**
     * Statements
     * (long)serialVersionUID
     */
    private static final long serialVersionUID = 2924692645434750515L;

    @JsonDeserialize(using=JsonDateDeserializer.class)
    private Date sStartDt;                                   //대행일자 - 시작일자
    @JsonDeserialize(using=JsonDateDeserializer.class)
    private Date sEndDt;                                     //대행일자 - 종료일자
    private String sVinNo;                                   //VIN NO
    private String sAapWrkDstinCd;                           //대행업무구분
    private String sAapEmpNm;                                //대행자명
    private String sCarRegNo;                                //차량번호

    private String sCustNo;                                  //고객번호
    private String sCustNm;                                  //고객명

    private String sDlrCd;
    private int    sSeq;

    private String sContractNo;                              //계약번호

    /**
     * @return the sStartDt
     */
    public Date getsStartDt() {
        return sStartDt;
    }
    /**
     * @param sStartDt the sStartDt to set
     */
    public void setsStartDt(Date sStartDt) {
        this.sStartDt = sStartDt;
    }
    /**
     * @return the sEndDt
     */
    public Date getsEndDt() {
        return sEndDt;
    }
    /**
     * @param sEndDt the sEndDt to set
     */
    public void setsEndDt(Date sEndDt) {
        this.sEndDt = sEndDt;
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
     * @return the sAapWrkDstinCd
     */
    public String getsAapWrkDstinCd() {
        return sAapWrkDstinCd;
    }
    /**
     * @param sAapWrkDstinCd the sAapWrkDstinCd to set
     */
    public void setsAapWrkDstinCd(String sAapWrkDstinCd) {
        this.sAapWrkDstinCd = sAapWrkDstinCd;
    }
    /**
     * @return the sAapEmpNm
     */
    public String getsAapEmpNm() {
        return sAapEmpNm;
    }
    /**
     * @param sAapEmpNm the sAapEmpNm to set
     */
    public void setsAapEmpNm(String sAapEmpNm) {
        this.sAapEmpNm = sAapEmpNm;
    }
    /**
     * @return the sCarRegNo
     */
    public String getsCarRegNo() {
        return sCarRegNo;
    }
    /**
     * @param sCarRegNo the sCarRegNo to set
     */
    public void setsCarRegNo(String sCarRegNo) {
        this.sCarRegNo = sCarRegNo;
    }
    /**
     * @return the sCustNo
     */
    public String getsCustNo() {
        return sCustNo;
    }
    /**
     * @param sCustNo the sCustNo to set
     */
    public void setsCustNo(String sCustNo) {
        this.sCustNo = sCustNo;
    }
    /**
     * @return the sCustNm
     */
    public String getsCustNm() {
        return sCustNm;
    }
    /**
     * @param sCustNm the sCustNm to set
     */
    public void setsCustNm(String sCustNm) {
        this.sCustNm = sCustNm;
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
     * @return the sSeq
     */
    public int getsSeq() {
        return sSeq;
    }
    /**
     * @param sSeq the sSeq to set
     */
    public void setsSeq(int sSeq) {
        this.sSeq = sSeq;
    }
    /**
     * @return the sContractNo
     */
    public String getsContractNo() {
        return sContractNo;
    }
    /**
     * @param sContractNo the sContractNo to set
     */
    public void setsContractNo(String sContractNo) {
        this.sContractNo = sContractNo;
    }
    /**
     * @return the serialversionuid
     */
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
}