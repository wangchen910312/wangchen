package chn.bhmc.dms.sal.rcp.service.dao;

import java.util.List;

import able.com.mybatis.Mapper;

import org.apache.ibatis.annotations.Param;

import chn.bhmc.dms.core.datatype.BlobVO;
import chn.bhmc.dms.sal.rcp.vo.SalesVhclCbinRcitSearchVO;
import chn.bhmc.dms.sal.rcp.vo.SalesVhclCbinRcitVO;
/**
 * <pre>
 * 영수증관리 > 기동차통일영수증관리
 * </pre>
 *
 * @ClassName   : SalesVhclCbinRcitDAO.java
 * @Description : 영수증관리 > 기동차통일영수증관리
 * @author chibeom.song
 * @since 2017. 2. 17.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since          author              description
 *  ===========    =============    ===========================
 *  2017. 2. 17.     chibeom.song     최초 생성
 * </pre>
 */
@Mapper("salesVhclCbinRcitDAO")
public interface SalesVhclCbinRcitDAO {

    /**
     * 조회 조건에 해당하는 영수증관리 > 기동차통일영수증관리 정보를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitSearchVO
     * @return 조회 목록
     */
    public List<SalesVhclCbinRcitVO> selectSalesVehicleCombineReceiptSearchData(SalesVhclCbinRcitSearchVO searchVO);

    /**
     * 조회 조건에 해당하는 영수증관리 > 기동차통일영수증관리 총 갯수를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitSearchVO
     * @return
     */
    public int selectSalesVehicleCombineReceiptSearchCnt(SalesVhclCbinRcitSearchVO searchVO);

    /**
     * 성(우편번호) 목록을 조회한다.
     *
     * @param searchVO
     * @param provinceCd
     * @return
     */
    public List<SalesVhclCbinRcitVO> selectProvinceInfoList(SalesVhclCbinRcitSearchVO searchVO);

    /**
     * 성(우편번호) 목록을 조회한다.
     *
     * @param searchVO
     * @param provinceCd
     * @return
     */
    public List<SalesVhclCbinRcitVO> selectCityInfoList(SalesVhclCbinRcitSearchVO searchVO);

    /**
     * 기동차통일영수증관리 > 영수증 업로드 > 영수증 데이터 갯수를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitSearchVO
     * @return
     */
    public int selectSaleVehicleCombineReceiptCnt(SalesVhclCbinRcitVO searchVO);

    /**
     * 영수증관리 > 기동차통일영수증관리 데이터를 등록한다.
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitVO
     * @return
     */
    public int insertSalesVehicleCombineReceiptSave(SalesVhclCbinRcitVO salesVhclCbinRcitVO);
    
    /**
     * R19111100817 一台车提交了两个不同号的发票，应该显示两行，目前只显示了一行。同时希望可以像<新能源补贴申请审核>页面类似的，可显示全部和最新的数据 贾明 2019-11-11
     * 写入发票信息 SA_0501T 表
     * @param salesVhclCbinRcitVO
     * @return
     */
    
    public int insertSalesInvoiceInformationSave(SalesVhclCbinRcitVO salesVhclCbinRcitVO);
    /**
     * R19111100817 一台车提交了两个不同号的发票，应该显示两行，目前只显示了一行。同时希望可以像<新能源补贴申请审核>页面类似的，可显示全部和最新的数据 贾明 2019-11-11
     * @param salesVhclCbinRcitVO
     * @return
     */
    public int updateSalesInvoiceInformationImg(SalesVhclCbinRcitVO salesVhclCbinRcitVO);
    
    /**
     * R19111100817 一台车提交了两个不同号的发票，应该显示两行，目前只显示了一行。同时希望可以像<新能源补贴申请审核>页面类似的，可显示全部和最新的数据 贾明 2019-11-11
     * 修改时重新上传
     * @param salesVhclCbinRcitVO
     * @return
     */
    public SalesVhclCbinRcitVO selectSalesInvoiceInformationInfo(SalesVhclCbinRcitVO salesVhclCbinRcitVO);
    
    /**
     * R19080700284 初审回传结果有审核通过/不通过两种，在界面显示为“通过”或“不通过”。当为“不通过”时，进入发票明细界面可进行修改再提交的操作。 贾明2019-8-12 
     * @param salesVhclCbinRcitVO
     * @return
     */
    public int updateVehicleUnifiedInvoiceinfo(SalesVhclCbinRcitVO salesVhclCbinRcitVO);

    /**
     * 영수증관리 > 기동차통일영수증관리 이력 데이터를 등록한다.
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitVO
     * @return
     */
    public int insertSalesVehicleCombineReceiptHistSave(SalesVhclCbinRcitVO salesVhclCbinRcitVO);

    /**
     * 영수증관리 > 기동차통일영수증관리 데이터를 등록한다.
     * @param targetYearAllRegVO - 등록할 정보가 담긴 SalesVhclCbinRcitVO
     * @return 등록된 목록수
     */
    public int insertSalesVehicleCombineReceiptGridSave(SalesVhclCbinRcitVO salesVhclCbinRcitVO) throws Exception;

    /**
     * 영수증관리 > 기동차통일영수증관리 데이터를 수정한다.
     * @param targetYearAllRegVO - 수정할 정보가 담긴 SalesVhclCbinRcitVO
     * @return 수정된 목록수
     */
    public int updateSalesVehicleCombineReceiptGridSave(SalesVhclCbinRcitVO salesVhclCbinRcitVO) throws Exception;

    /**
     * Key에 해당하는 영수증관리 > 기동차통일영수증관리 데이터를 조회한다.
     * @param
     * @return
     */
    public SalesVhclCbinRcitVO selectSalesVehicleCombineReceiptGridSaveByKey(@Param("vinNo") String vinNo);

    /**
     * 기동차통일영수증관리 > 영수증 업로드 > VIN 정보를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitSearchVO
     * @return 조회 목록
     */
    public List<SalesVhclCbinRcitVO> selectVinNoSearchPopupSearchData(SalesVhclCbinRcitSearchVO searchVO);

    /**
     * 기동차통일영수증관리 > 영수증 업로드 > VIN 총 갯수를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitSearchVO
     * @return
     */
    public int selectVinNoSearchPopupSearchCnt(SalesVhclCbinRcitSearchVO searchVO);

    /**
     * 기동차통일영수증관리 > 영수증 업로드 > 2급딜러 정보 cnt 조회
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitSearchVO
     * @return
     */
    public int selectSecondDealerSearchCnt(SalesVhclCbinRcitSearchVO searchVO);

    /**
     * 기동차통일영수증관리 > 영수증 업로드 > 2급딜러 정보 조회
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitSearchVO
     * @return 조회 목록
     */
    public List<SalesVhclCbinRcitVO> selectSecondDealerSearchData(SalesVhclCbinRcitSearchVO searchVO);


    /**
     * 기동차통일영수증관리 > 영수증 관리 > 영수증 명세를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitSearchVO
     * @return 조회 목록
     */
    public SalesVhclCbinRcitVO selectReceiptDetailPopupSearchData(SalesVhclCbinRcitSearchVO searchVO);

    /**
     * 기동차통일영수증관리 > 영수증 관리 > 영수증 명세를 조회한다.
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitSearchVO
     * @return 조회 목록
     */
    public SalesVhclCbinRcitVO selectReceiptImageSearchData(SalesVhclCbinRcitSearchVO searchVO);

    /**
     * 기동차통일영수증관리 > 영수증 관리 > 영수증 이미지를 조회한다.
     * @param carId
     * @return
     */
    public BlobVO selectSalesVehicleCombineReceiptImg(String carId);

    /**
     * 기동차통일영수증관리 > 영수증관리 > 기동차통일영수증 스캔파일을 등록한다.
     * @param salesVhclCbinRcitVO
     * @return
     */
    public int updateSalesVehicleCombineReceiptImg(SalesVhclCbinRcitVO salesVhclCbinRcitVO);

    /**
     * 기동차통일영수증관리 > 영수증 관리 > 차량마스터의 보증시작일자 수정구분을 조회한다.
     * @param salesVhclCbinRcitVO
     * @return 수정구분값
     */
    public String selectVehicleMasterUpdtCd(SalesVhclCbinRcitVO salesVhclCbinRcitVO);

    /**
     * 기동차통일영수증관리 > 영수증관리 > 차량마스터의 보증시작일자를 수정한다.
     * @param salesVhclCbinRcitVO
     * @return
     */
    public int updateSalesVehicleMasterSave(SalesVhclCbinRcitVO salesVhclCbinRcitVO);

    public String selectDealerSungStr(SalesVhclCbinRcitSearchVO searchVO);

    /**
     * 영수증관리 > 기동차통일영수증관리 데이터를 Is테이블에 등록한다.
     * @param searchVO - 조회 조건을 포함하는 SalesVhclCbinRcitVO
     * @return
     */
    public int insertSalesVehicleCombineReceiptSaveIs(SalesVhclCbinRcitVO salesVhclCbinRcitVO);

    /**
     * 기동차통일영수증관리 > 영수증관리 > 기동차통일영수증 스캔파일을 Is테이블에 등록한다.
     * @param salesVhclCbinRcitVO
     * @return
     */
    public int updateSalesVehicleCombineReceiptImgIs(SalesVhclCbinRcitVO salesVhclCbinRcitVO);
    
    /**
     * NO 31 DMS端车辆主信息的发票展示逻辑确定如下：1、车辆对应的发票，只有初审通过状态，没有复核通过的情况，那就以最新审核通过展示；2、有复核通过的发票，那就展示最新复核通过的。
     * 贾明 2019-11-28 
     * @param searchVO -  SalesVhclCbinRcitSearchVO
     * @return 조회 목록
     */
    public SalesVhclCbinRcitVO selectVehicleInfoMotorVehInvo(SalesVhclCbinRcitSearchVO searchVO);
    
    /**
     * crs 37 发票上传扫描信息显示的画面，在“证件号码”后面增加“手机号码”，取合同上的客户手机号，允许修改，校验手机号为11位数字。提交给发票系统，发票初审不通过时可修 贾明 2019-12-11 查找合同客户表的电话
     * @param searchVO
     * @return
     */
    public SalesVhclCbinRcitVO selectContractNoSearchTelData(SalesVhclCbinRcitSearchVO searchVO);
    
    /**
     * CSR 67 发票提交时对（ 发票代码+发票号码）进行唯一性校验  贾明 2020-3-19 
     * @param searchVO 
     * @return
     */
    public int selectSaleVehicleCombineReceiptNOCnt(SalesVhclCbinRcitVO searchVO);
}
