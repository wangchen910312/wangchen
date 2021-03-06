package chn.bhmc.dms.ser.svi.vo;

import chn.bhmc.dms.core.datatype.SearchVO;

/**
 * <pre>
 * 작업package master 조회 SearchVO
 * </pre>
 *
 * @ClassName   : PackageMasterSearchVO.java
 * @Description : 작업package master 조회 SearchVO.
 * @author Yin Xueyuan
 * @since 2016. 2. 17.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2016. 2. 17.     Yin Xueyuan     최초 생성
 * </pre>
 */

public class PackageMasterSearchVO extends SearchVO {


    /**
     * Statements
     * (long)serialVersionUID
     */
    private static final long serialVersionUID = 5973522523239589304L;

    /**
     * 조회조건 - 딜러코드
     */
    private String sDlrCd;

    /**
     * 조회조건 - package품목코드
     */
    private String sPkgItemCd;

    /**
     * package명
     */
    private String sPkgItemNm;

    /**
     * LTS MODEL 코드
     */
    private String sLtsModelCd;
    /**
     * 공임코드
     */
    private String sLbrCd;
    /**
     * 공임코드명
     */
    private String sLbrNm;
    /**
     * 부품코드
     */
    private String sItemCd;
    /**
     * 부품코드명
     */
    private String sItemNm;

    /**
     * 브랜드
     */
    private String sBrandCd;

    /**
     * 패키지부품비용
     */
    private Double sPkgDcTotAmt;

    /**
     * 부품유형
     */
    private String sItemDstinCd;


    /**
     * 패키지번호
     */
    private int sPkgDocNo;

    /**
     * 패키지유형(01:정비, 02:부품, 03:용품)
     */
    private String sPkgTp;

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
     * @return the sPkgItemCd
     */
    public String getsPkgItemCd() {
        return sPkgItemCd;
    }

    /**
     * @param sPkgItemCd the sPkgItemCd to set
     */
    public void setsPkgItemCd(String sPkgItemCd) {
        this.sPkgItemCd = sPkgItemCd;
    }

    /**
     * @return the sPkgItemNm
     */
    public String getsPkgItemNm() {
        return sPkgItemNm;
    }

    /**
     * @param sPkgItemNm the sPkgItemNm to set
     */
    public void setsPkgItemNm(String sPkgItemNm) {
        this.sPkgItemNm = sPkgItemNm;
    }

    /**
     * @return the sLtsModelCd
     */
    public String getsLtsModelCd() {
        return sLtsModelCd;
    }

    /**
     * @param sLtsModelCd the sLtsModelCd to set
     */
    public void setsLtsModelCd(String sLtsModelCd) {
        this.sLtsModelCd = sLtsModelCd;
    }

    /**
     * @return the sLbrCd
     */
    public String getsLbrCd() {
        return sLbrCd;
    }

    /**
     * @param sLbrCd the sLbrCd to set
     */
    public void setsLbrCd(String sLbrCd) {
        this.sLbrCd = sLbrCd;
    }

    /**
     * @return the sLbrNm
     */
    public String getsLbrNm() {
        return sLbrNm;
    }

    /**
     * @param sLbrNm the sLbrNm to set
     */
    public void setsLbrNm(String sLbrNm) {
        this.sLbrNm = sLbrNm;
    }

    /**
     * @return the sItemCd
     */
    public String getsItemCd() {
        return sItemCd;
    }

    /**
     * @param sItemCd the sItemCd to set
     */
    public void setsItemCd(String sItemCd) {
        this.sItemCd = sItemCd;
    }

    /**
     * @return the sItemNm
     */
    public String getsItemNm() {
        return sItemNm;
    }

    /**
     * @param sItemNm the sItemNm to set
     */
    public void setsItemNm(String sItemNm) {
        this.sItemNm = sItemNm;
    }

    /**
     * @return the sBrandCd
     */
    public String getsBrandCd() {
        return sBrandCd;
    }

    /**
     * @param sBrandCd the sBrandCd to set
     */
    public void setsBrandCd(String sBrandCd) {
        this.sBrandCd = sBrandCd;
    }

    /**
     * @return the sPkgDcTotAmt
     */
    public Double getsPkgDcTotAmt() {
        return sPkgDcTotAmt;
    }

    /**
     * @param sPkgDcTotAmt the sPkgDcTotAmt to set
     */
    public void setsPkgDcTotAmt(Double sPkgDcTotAmt) {
        this.sPkgDcTotAmt = sPkgDcTotAmt;
    }

    /**
     * @return the sItemDstinCd
     */
    public String getsItemDstinCd() {
        return sItemDstinCd;
    }

    /**
     * @param sItemDstinCd the sItemDstinCd to set
     */
    public void setsItemDstinCd(String sItemDstinCd) {
        this.sItemDstinCd = sItemDstinCd;
    }

    /**
     * @return the sPkgDocNo
     */
    public int getsPkgDocNo() {
        return sPkgDocNo;
    }

    /**
     * @param sPkgDocNo the sPkgDocNo to set
     */
    public void setsPkgDocNo(int sPkgDocNo) {
        this.sPkgDocNo = sPkgDocNo;
    }

    /**
     * @return the sPkgTp
     */
    public String getsPkgTp() {
        return sPkgTp;
    }

    /**
     * @param sPkgTp the sPkgTp to set
     */
    public void setsPkgTp(String sPkgTp) {
        this.sPkgTp = sPkgTp;
    }

}
