package chn.bhmc.dms.bat.crm.cif.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.context.i18n.LocaleContextHolder;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

import chn.bhmc.dms.bat.crm.cmm.vo.BatAddressInfoVO;
import chn.bhmc.dms.core.support.databind.JsonDateDeserializer;
import chn.bhmc.dms.core.support.excel.AbstractExcelDataBinder;
import chn.bhmc.dms.core.support.excel.ExcelDataBindContext;
import chn.bhmc.dms.core.support.excel.ExcelDataBinderUtil;
import chn.bhmc.dms.core.support.excel.ExcelDataBindingException;
import chn.bhmc.dms.core.support.excel.ExcelUploadError;


/**
 * <pre>
 * Statements
 * </pre>
 *
 * @ClassName   : BatBatCustomerInfoVO
 * @Description : 클래스 설명을 기술합니다.
 * @author Kyo Jin Lee
 * @since 2016. 1. 29.
 * @version 1.0
 * @see
 * @Modification Information
 * <pre>
 *     since     author    description
 *  ===========    =============    ===========================
 *  2016. 1. 29.     Kyo Jin Lee     최초 생성
 * </pre>
 */



public class BatCustomerInfoVO extends AbstractExcelDataBinder {

    /**
     * Customer Information Management Service
     */
//    @Resource(name = "customerInfoService")
//    CustomerInfoService customerInfoService;

    /**
     * Statements
     * (long)serialVersionUID
     */
    private static final long serialVersionUID = 2017422493415415568L;


  /**
   * 딜러코드
   **/
  @NotEmpty
  private String dlrCd;

  /**
   * 사업장코드
   **/
  private String pltCd;

  /**
   * 고객번호
   **/
  // @NotEmpty
  private String custNo;

  /**
   * 고객명
   **/
  //CUST_NM
  private String custNm;

  /**
   * 고객코드
   **/
  //CUST_CD
  private String custCd;

  /**
   * 주민사업자등록번호
   **/
  //SSN_CRN_NO
  private String ssnCrnNo;

  /**
   * 고객유형
   **/
  //CUST_TP
  private String custTp;

  /**
   * 관리SCID
   **/
  //MNG_SC_ID
  private String mngScId;
  private String mngScNm;

  /**
   * 판매SCID
   **/
  //SALE_SC_ID
  private String saleScId;

  /**
   * 관리TechManID
   **/
  //MNG_TEC_ID
  private String mngTecId;
  private String mngTecNm;

  /**
   * 이메일명
   **/
  //EMAIL_NM
  private String emailNm;

  /**
   * 이메일도메인명
   **/
  //EMAIL_DOMAIN_NM
  private String emailDomainNm;

  /**
   * 위쳇ID
   **/
  //WECHAT_ID
  private String wechatId;

  /**
   * QQ ID
   **/
  //QQ_ID
  private String qqId;

  /**
   * 페이스북ID
   **/
  //FACEBOOK_ID
  private String facebookId;

  /**
   * 트위터ID
   **/
  //TWITTER_ID
  private String twitterId;

  /**
   * 선호연락방법코드
   **/
  //PREF_COMM_MTH_CD
  private String prefCommMthCd;

  /**
   * 선호연락번호
   **/
  //PREF_COMM_NO
  private String prefCommNo;

  /**
   * 우선연락방법
   **/
  //PREF_CONTACT_MTH_CD
  private String prefContactMthCd;

  /**
   * 우선연락시간
   **/
  //PREF_CONTACT_TIME_CD
  private String prefContactTimeCd;

  /**
   * 블루멤버쉽
   **/
  //BLUE_MEMBER_CD
  private String blueMemberCd;

  /**
   * 전화번호
   **/
  //TEL_NO
  private String telNo;

  /**
   * 휴대폰번호
   **/
  //HP_NO
  private String hpNo;

  /**
   * 우편번호
   **/
  //ZIP_CD
  private String zipCd;

  /**
   * 주소-성
   **/
  //SUNG_CD
  private String sungCd;
  private String sungNm;

  /**
   * 주소-시
   **/
  //CITY_CD
  private String cityCd;
  private String cityNm;

  /**
   * 주소-구
   **/
  //REGION_CD
  private String regionCd;
  private String distNm;

  /**
   * 주소1
   **/
  //ADDR1
  private String addr1;

  /**
   * 주소2
   **/
  //ADDR2
  private String addr2;

  private String addrDetlCont;

  /**
   * 직업코드
   **/
  //JOB_CD
  private String jobCd;

  /**
   * 직업상세코드
   **/
  //JOB_DETL_CD
  private String jobDetlCd;

  /**
   * 직장명
   **/
  //OFFICE_NM
  private String officeNm;

  /**
   * 부서명
   **/
  //DEPT_NM
  private String deptNm;

  /**
   * 직위명
   **/
  //PSIT_NM
  private String psitNm;

  /**
   * 직장전화번호
   **/
  //OFFICE_TEL_NO
  private String officeTelNo;

  /**
   * 직장팩스번호
   **/
  //OFFICE_FAX_NO
  private String officeFaxNo;

  /**
   * 직장우편번호
   **/
  //OFFICE_ZIP_CD
  private String officeZipCd;

  /**
   * 회사주소-성
   **/
  //OFFICE_SUNG_CD
  private String officeSungCd;

  /**
   * 회사주소-시
   **/
  //OFFICE_CITY_CD
  private String officeCityCd;

  /**
   * 회사주소-구
   **/
  //OFFICE_REGION_CD
  private String officeRegionCd;

  /**
   * 직장주소1
   **/
  //OFFICE_ADDR1
  private String officeAddr1;

  /**
   * 직장주소2
   **/
  //OFFICE_ADDR2
  private String officeAddr2;

  /**
   * 업종코드
   **/
  //BIZCOND_CD
  private String bizcondCd;

  /**
   * 업종명
   **/
  //BIZCOND_NM
  private String bizcondNm;

  /**
   * 업태명
   **/
  //BIZTP_NM
  private String biztpNm;

  /**
   * 대표자주민등록번호
   **/
  //OWN_RGST_SSN_NO
  private String ownRgstSsnNo;

  /**
   * 대표자명
   **/
  //OWN_RGST_NM
  private String ownRgstNm;

  /**
   * 회사유형
   **/
  //CMP_TP
  private String cmpTp;

  /**
   * 회사규모내용
   **/
  //CMP_SCALE_CONT
  private String cmpScaleCont;

  /**
   * 주요인증문서유형
   **/
  //MATH_DOC_TP
  private String mathDocTp;

  /**
   * ID카드번호
   **/
  //ID_CARD_NO
  private String idCardNo;

  /**
   * 운전면허증번호
   **/
  //DRIVING_NO
  private String drivingNo;

  /**
   * 관증번호
   **/
  //OFFICE_NO
  private String officeNo;

  /**
   * 기타번호
   **/
  //OTHER_NO
  private String otherNo;

  /**
   * ID우편번호
   **/
  //ID_ZIP_CD
  private String idZipCd;

  /**
   * ID 주소-성
   **/
  //ID_SUNG_CD
  private String idSungCd;

  /**
   * ID 주소-시
   **/
  //ID_CITY_CD
  private String idCityCd;

  /**
   * ID 주소-구
   **/
  //ID_REGION_CD
  private String idRegionCd;

  /**
   * ID주소1
   **/
  //ID_ADDR1
  private String idAddr1;

  /**
   * ID주소2
   **/
  //ID_ADDR2
  private String idAddr2;

  /**
   * DM장소코드
   **/
  //DM_PLACE_CD
  private String dmPlaceCd;

  /**
   * DM명
   **/
  //DM_NM
  private String dmNm;

  /**
   * SMS수신여부
   **/
  @NotEmpty
  private String smsReceiveYn;

  /**
   * 전화수신여부
   **/
  @NotEmpty
  private String telReceiveYn;

  /**
   * DM수신여부
   **/
  @NotEmpty
  private String dmDeceiveYn;

  /**
   * 이메일수신여부
   **/
  @NotEmpty
  private String emailReceiveYn;

  /**
   * FAX수신여부
   **/
  @NotEmpty
  private String faxReceiveYn;

  /**
   * DM반송여부
   **/
  @NotEmpty
  private String dmReturnYn;

  /**
   * 이메일반송여부
   **/
  @NotEmpty
  private String emailReturnYn;

  /**
   * 출고여부
   **/
  @NotEmpty
  private String giYn;

  /**
   * 폐기여부
   **/
  @NotEmpty
  private String disuseYn;

  /**
   * VIP 여부
   **/
  @NotEmpty
  private String vipYn;

  /**
   * 폐기코드
   **/
  //DISUSE_CD
  private String disuseCd;

  /**
   * 법인등록번호
   **/
  //CORP_REG_NO
  private String corpRegNo;

  /**
   * 고객등급코드
   **/
  //CUST_GRADE_CD
  private String custGradeCd;

  /**
   * 고객서비스관리등급코드
   **/
  //CUST_SER_MNG_GRADE_CD
  private String custSerMngGradeCd;

  /**
   * 관리유형
   **/
  //MNG_TP
  private String mngTp;

  /**
   * 관리유형변경일자
   **/
  //MNG_TP_CHG_DT
  private String mngTpChgDt;

  /**
   * 고객확보유형
   **/
  //CUST_HOLD_TP
  private String custHoldTp;

  /**
   * 고객확보유형상세
   **/
  //CUST_HOLD_TP
  private String custHoldTpDtl;

  /**
   * 고객확보일자
   **/
  //CUST_HOLD_DT
  private String custHoldDt;

  /**
   * 성별코드
   **/
  //SEX_CD
  private String sexCd;

  /**
   * BIRTH_DT
   **/
  //BIRTH_DT
  private String birthDt;

  /**
   * 결혼일자
   **/
  //MARRY_DT
  @JsonDeserialize(using=JsonDateDeserializer.class)
  private Date marryDt;

  /**
   * 결혼코드
   **/
  //MARRY_CD
  private String marryCd;

  /**
   * 관심차종명1
   **/
  //INTR_CARLINE_NM1
  private String intrCarlineNm1;

  /**
   * 관심차종명2
   **/
  //INTR_CARLINE_NM2
  private String intrCarlineNm2;

  /**
   * 취미코드
   **/
  //HOBBY_CD
  private String hobbyCd;

  /**
   * 기타취미명
   **/
  //OTHER_HOBBY_NM
  private String otherHobbyNm;

  /**
   * 타사관심차종명
   **/
  //OCMP_INTR_CARLINE_NM
  private String ocmpIntrCarlineNm;

  /**
   * 이전관리SCID
   **/
  //BEF_MNG_SC_ID
  private String befMngScId;

  /**
   * 이벤트번호
   **/
  //EVENT_NO
  private String eventNo;

  /**
   * 연락할사람명
   **/
  //PCONTACT_NM
  private String pcontactNm;

  /**
   * 연락할사람고객번호
   **/
  //PCONTACT_CUST_NO
  private String pcontactCustNo;

  /**
   * 개인정보동의여부
   **/
  @NotEmpty
  private String perInfoAgreeYn;

  /**
   * 개인정보사용여부
   **/
  @NotEmpty
  private String perInfoUseYn;

  /**
   * 실명확인여부
   **/
  @NotEmpty
  private String nameChkYn;

  /**
   * 전자세금계산서이메일명
   **/
  //INVOICE_EMAIL_NM
  private String invoiceEmailNm;

  /**
   * 학력코드
   **/
  //AC_CAREER_CD
  private String acCareerCd;

  /**
   * 소득레벨코드
   **/
  //INCOME_LVL_CD
  private String incomeLvlCd;

  /**
   * 나이코드
   **/
  //AGE_CD
  private String ageCd;

  /**
   * 가족수
   **/
  //FAMILY_CNT
  private  int    familyCnt;

  /**
   * 운전자유형
   **/
  //DRIVER_TP
  private String driverTp;

  /**
   * 소개횟수
   **/
  //INTRO_CNT
  private String introCnt;

  /**
   * 구매사유코드
   **/
  //PURC_REASON_CD
  private String purcReasonCd;

  /**
   * 등록차량브랜드코드
   **/
  //REG_CAR_BRAND_CD
  private String regCarBrandCd;

  /**
   * 등록차량브랜드모델코드
   **/
  //REG_CAR_BRAND_MODEL_CD
  private String regCarBrandModelCd;

  /**
   * 이전소유자처분채널코드
   **/
  //BEF_OWNER_SELL_CHN_CD
  private String befOwnerSellChnCd;

  /**
   * 이전소유자보유기간
   **/
  //BEF_OWNER_HOLD_PRID
  private String befOwnerHoldPrid;

  /**
   * 차량구매형식코드
   **/
  //CAR_PURC_CLASS_CD
  private String carPurcClassCd;

  /**
   * 소개자유형
   **/
  //PINTRO_TP
  private String pintroTp;

  /**
   * 소개자명
   **/
  //PINTRO_NM
  private String pintroNm;

  /**
   * 이메일도메인코드
   **/
  //EMAIL_DOMAIN_CD
  private String emailDomainCd;

  /**
   * 비교차량브랜드코드
   **/
  //COMPARE_CAR_BRAND_CD
  private String compareCarBrandCd;

  /**
   * 비교차량모델코드
   **/
  //COMPARE_CAR_MODEL_CD
  private String compareCarModelCd;

  /**
   * 구매전차량브랜드코드
   **/
  //PURC_BEF_CAR_BRAND_CD
  private String purcBefCarBrandCd;

  /**
   * 구매전차량모델코드
   **/
  //PURC_BEF_CAR_MODEL_CD
  private String purcBefCarModelCd;

  /**
   * 병합여부
   **/
  @NotEmpty
  private String mergeYn;

  /**
   * 삭제여부
   **/
  @NotEmpty
  private String delYn;

  /**
   * BHMC여부
   **/
  @NotEmpty
  private String bhmcYn;

  /**
   * SIEBEL ROW ID
   **/
  //SIEBEL_ROW_ID
  private String siebelRowId;

  /**
   * 등록자ID
   **/
  //REG_USR_ID
  private String regUsrId;
  private String regUsrNm;

  /**
   * 등록일자
   **/
  //REG_DT
  @JsonDeserialize(using=JsonDateDeserializer.class)
  private Date regDt;

  /**
   * 수정자ID
   **/
  //UPDT_USR_ID
  private String updtUsrId;

  /**
   * 수정일자
   **/
  //UPDT_DT
  @JsonDeserialize(using=JsonDateDeserializer.class)
  private Date updtDt;

  private String itemCd;
  private String itemNm;
  private String pconTp;     // 인증문서 종류
  private String certiNum;   // 인증서 번호
  private String pageMode;   // 화면모드 (insertMode / updateMode)
  private String regionCdRead;
  private String officeRegionCdRead;
  private String idRegionCdRead;
  private String marryYn;
  private String avgCarChgCd;
  private String groupTxt;
  private String tagTxt;
  private String dmReceiveYn;
  private String oldCustNm;
  private String oldHpNo;
  private String oldMathDocTp;
  private String oldSsnCrnNo;
  private String passportNo;
  private int custRelSeq;

  @NotEmpty
  private String hpNoInvldYn;

  @NotEmpty
  private String hpNoAddImposYn;
  private String buyCnt;

  @NotEmpty
  private String chgBuyYn;
  private String purcCarBrandCd;
  private String purcCarModelNm;
  private String ageDtl;
  private String chinaZodiacSignCd;
  private String zodiacSignCd;
  private String bloodTp;
  private String childrenCnt;
  private String dutyCd;

  private String commandTp; // 고개정보 업데이트 구분값.
  private String docId; // 문서번호


  // 이인문 : 최근 활동/내방/시승일 가져오기 VO 추가
  private String preVsitDt;
  private String preActiveDt;
  private String preTdrvDt;
  private String saleOpptStepCd;

  private List<BatCustomerGroupVO> groupDS = new ArrayList<BatCustomerGroupVO>();
  private List<BatCustomerGroupVO> tagDS = new ArrayList<BatCustomerGroupVO>();
  private List<BatCustomerGroupVO> hobbyDS = new ArrayList<BatCustomerGroupVO>();
  private List<BatCustomerInfoVO> custInfoDS = new ArrayList<BatCustomerInfoVO>();
  private List<BatAddressInfoVO> addressDS = new ArrayList<BatAddressInfoVO>();

  // 법인 고객을 위한 필드
  private String bhmcYnC;
  private String custTpC;
  private String custNmC;
  private String custNoC;
  private String custCdC;
  private String mathDocTpC;
  private String ssnCrnNoC;
  private String mngScIdC;
  private String mngTecIdC;
  private String custHoldTpC;
  private String custHoldTpDtlC;
  private String officeTelNoC;
  private String officeFaxNoC;
  private String emailNmC;
  private String bizcondCdC;
  private String cmpScaleContC;
  private String cmpTpC;
  private String siebelRowIdC;

  private String addrFull;

  // BlueMemberShip Field
  private String blueMembershipJoinDlrCd;

  //blueMembershipJoinDt
  @JsonDeserialize(using=JsonDateDeserializer.class)
  private Date blueMembershipJoinDt;
  private String blueMembershipNo;

  //보유차량
  private String carlineNmHC; //차종명
  private String modelNmHC; //모델
  private String carRegNoHC; //번호판
  private Date custSaleDtHC; //구매일자

  //정비이력
  private String dlrCdLH;   //딜러
  private String carRegNoLH; //차량번호
  private String driverNmLH; //방문자
  private int runDistValLH; //주행거리
  private Date roDtLH; //정비일자

  //딜러멤버십
  private String gradeCdDMS;
  private int usePointDMS;
  private int chargeUsePointDMS;
  private Date joinDtDMS;

  //log_dt 확인
  /**
   * 로그 등록일
   **/
  //REG_DT
  @JsonDeserialize(using=JsonDateDeserializer.class)
  private Date logDt;

  private String logId;


  // 이력 필드 시작
  /**
   * 이전딜러코드
   **/
  //BEF_DLR_CD

  private  String                     befDlrCd;

  /**
   * 이전고객번호
   **/
  //BEF_CUST_NO

  private  String                     befCustNo;

  /**
   * 이전고객명
   **/
  //BEF_CUST_NM

  private  String                     befCustNm;

  /**
   * 이전고객코드
   **/
  //BEF_CUST_CD

  private  String                     befCustCd;

  /**
   * 이전주민사업자등록번호
   **/
  //BEF_SSN_CRN_NO

  private  String                     befSsnCrnNo;

  /**
   * 이전고객유형
   **/
  //BEF_CUST_TP

  private  String                     befCustTp;

  /**
   * 이전판매SCID
   **/
  //BEF_SALE_SC_ID

  private  String                     befSaleScId;

  /**
   * 이전관리TechManID
   **/
  //BEF_MNG_TEC_ID

  private  String                     befMngTecId;

  /**
   * 이전이메일명
   **/
  //BEF_EMAIL_NM

  private  String                     befEmailNm;

  /**
   * 이전위쳇ID
   **/
  //BEF_WECHAT_ID

  private  String                     befWechatId;

  /**
   * 이전QQ ID
   **/
  //BEF_QQ_ID

  private  String                     befQqId;

  /**
   * 이전페이스북ID
   **/
  //BEF_FACEBOOK_ID

  private  String                     befFacebookId;

  /**
   * 이전트위터ID
   **/
  //BEF_TWITTER_ID

  private  String                     befTwitterId;

  /**
   * 이전선호연락방법코드 (CRM022)
   **/
  //BEF_PREF_COMM_MTH_CD

  private  String                     befPrefCommMthCd;

  /**
   * 이전선호연락번호
   **/
  //BEF_PREF_COMM_NO

  private  String                     befPrefCommNo;

  /**
   * 이전우선연락방법 (CRM038)
   **/
  //BEF_PREF_CONTACT_MTH_CD

  private  String                     befPrefContactMthCd;

  /**
   * 이전우선연락시간 (CRM027)
   **/
  //BEF_PREF_CONTACT_TIME_CD

  private  String                     befPrefContactTimeCd;

  /**
   * 이전전화번호
   **/
  //BEF_TEL_NO

  private  String                     befTelNo;

  /**
   * 이전휴대폰번호
   **/
  //BEF_HP_NO

  private  String                     befHpNo;

  /**
   * 이전휴대폰번호무효여부
   **/
  //BEF_HP_NO_INVLD_YN

  private  String                     befHpNoInvldYn;

  /**
   * 이전휴대폰번호수정불가여부
   **/
  //BEF_HP_NO_ADD_IMPOS_YN

  private  String                     befHpNoAddImpos;

  /**
   * 이전직업코드
   **/
  //BEF_JOB_CD

  private  String                     befJobCd;

  /**
   * 이전직무코드
   **/
  //BEF_DUTY_CD

  private  String                     befDutyCd;

  /**
   * 이전직장명
   **/
  //BEF_OFFICE_NM

  private  String                     befOfficeNm;

  /**
   * 이전부서명
   **/
  //BEF_DEPT_NM

  private  String                     befDeptNm;

  /**
   * 이전직장전화번호
   **/
  //BEF_OFFICE_TEL_NO

  private  String                     befOfficeTelNo;

  /**
   * 이전직장팩스번호
   **/
  //BEF_OFFICE_FAX_NO

  private  String                     befOfficeFaxNo;

  /**
   * 이전대표자명
   **/
  //BEF_OWN_RGST_NM

  private  String                     befOwnRgstNm;

  /**
   * 이전회사유형
   **/
  //BEF_CMP_TP

  private  String                     befCmpTp;

  /**
   * 이전회사규모내용
   **/
  //BEF_CMP_SCALE_CONT

  private  String                     befCmpScaleCont;

  /**
   * 이전주요인증문서유형
   **/
  //BEF_MATH_DOC_TP

  private  String                     befMathDocTp;

  /**
   * 이전관증번호
   **/
  //BEF_OFFICE_NO

  private  String                     befOfficeNo;

  /**
   * 이전DM장소코드
   **/
  //BEF_DM_PLACE_CD

  private  String                     befDmPlaceCd;

  /**
   * 이전DM명
   **/
  //BEF_DM_NM

  private  String                     befDmNm;

  /**
   * 이전SMS수신여부
   **/
  //BEF_SMS_RECEIVE_YN

  private  String                     befSmsReceiveYn;

  /**
   * 이전전화수신여부
   **/
  //BEF_TEL_RECEIVE_YN

  private  String                     befTelReceiveYn;

  /**
   * 이전DM수신여부
   **/
  //BEF_DM_RECEIVE_YN

  private  String                     befDmReceiveYn;

  /**
   * 이전이메일수신여부
   **/
  //BEF_EMAIL_RECEIVE_YN

  private  String                     befEmailReceiveYn;

  /**
   * 이전FAX수신여부
   **/
  //BEF_FAX_RECEIVE_YN

  private  String                     befFaxReceiveYn;

  /**
   * 이전DM반송여부
   **/
  //BEF_DM_RETURN_YN

  private  String                     befDmReturnYn;

  /**
   * 이전이메일반송여부
   **/
  //BEF_EMAIL_RETURN_YN

  private  String                     befEmailReturnYn;

  /**
   * 이전폐기여부
   **/
  //BEF_DISUSE_YN

  private  String                     befDisuseYn;

  /**
   * 이전VIP 여부
   **/
  //BEF_VIP_YN

  private  String                     befVipYn;

  /**
   * 이전교환구매여부
   **/
  //BEF_CHG_BUY_YN

  private  String                     befChgBuyYn;

  /**
   * 이전폐기코드
   **/
  //BEF_DISUSE_CD

  private  String                     befDisuseCd;

  /**
   * 이전추가구매수량
   **/
  //BEF_BUY_CNT

  private  String                     befBuyCnt;

  /**
   * 이전고객확보유형 (CRM008)
   **/
  //BEF_CUST_HOLD_TP

  private  String                     befCustHoldTp;

  /**
   * 이전정보출처상세
   **/
  //BEF_CUST_HOLD_TP_DTL

  private  String                     befCustHoldTpDtl;

  /**
   * 이전성별코드 (COM017)
   **/
  //BEF_SEX_CD

  private  String                     befSexCd;

  /**
   * 이전생일
   **/
  //BEF_BIRTH_DT

  private  String                     befBirthDt;

  /**
   * 이전결혼일자
   **/
  //BEF_MARRY_DT
  private  Date                       befMarryDt;

  /**
   * 이전결혼코드
   **/
  //BEF_MARRY_CD

  private  String                     befMarryCd;

  /**
   * 이전이전관리SCID
   **/
  //BEF_BEF_MNG_SC_ID

  private  String                     befBefMngScId;

  /**
   * 이전개인정보동의여부
   **/
  //BEF_PER_INFO_AGREE_YN

  private  String                     befPerInfoAgreeYn;

  /**
   * 이전개인정보사용여부
   **/
  //BEF_PER_INFO_USE_YN

  private  String                     befPerInfoUseYn;

  /**
   * 이전학력코드
   **/
  //BEF_AC_CAREER_CD

  private  String                     befAcCareerCd;

  /**
   * 이전소득레벨코드
   **/
  //BEF_INCOME_LVL_CD

  private  String                     befIncomeLvlCd;

  /**
   * 이전나이상세
   **/
  //BEF_AGE_DTL

  private  String                     befAgeDtl;

  /**
   * 이전중국띠코드
   **/
  //BEF_CHINA_ZODIAC_SIGN_CD

  private  String                     befChinaZodiacSignCd;

  /**
   * 이전띠코드
   **/
  //BEF_ZODIAC_SIGN_CD

  private  String                     befZodiacSignCd;

  /**
   * 이전자녀수
   **/
  //BEF_CHILDREN_CNT

  private  String                     befChildrenCnt;

  /**
   * 이전혈액형유형
   **/
  //BEF_BLOOD_TP

  private  String                     befBloodTp;

  /**
   * 이전나이코드
   **/
  //BEF_AGE_CD

  private  String                     befAgeCd;

  /**
   * 이전구매차량
   **/
  //BEF_PURC_CAR_BRAND_CD

  private  String                     befPurcCarBrandCd;

  /**
   * 이전구매모델
   **/
  //BEF_PURC_CAR_MODEL_NM

  private  String                     befPurcCarModelNm;

  /**
   * 이전병합여부
   **/
  //BEF_MERGE_YN

  private  String                     befMergeYn;

  /**
   * 이전삭제여부
   **/
  //BEF_DEL_YN

  private  String                     befDelYn;

  /**
   * 이전BHMC여부
   **/
  //BEF_BHMC_YN

  private  String                     befBhmcYn;

  /**
   * 이전SIEBEL ROW ID
   **/
  //BEF_SIEBEL_ROW_ID

  private  String                     befSiebelRowId;

  /**
   * 이전등록자ID
   **/
  //BEF_REG_USR_ID

  private  String                     befRegUsrId;

  /**
   * 이전등록일자
   **/
  //BEF_REG_DT
  private  Date                       befRegDt;

  /**
   * 이전수정자ID
   **/
  //BEF_UPDT_USR_ID

  private  String                     befUpdtUsrId;

  /**
   * 이전수정일자
   **/
  //BEF_UPDT_DT
  private  Date                       befUpdtDt;

  /**
   * 이전문서ID
   **/
  //BEF_DOC_ID

  private  String                     befDocId;

  /**
   * 이전업종코드
   **/
  //BEF_BIZCOND_CD

  private  String                     befBizcondCd;

  /**
   * 이전블루멤버쉽번호
   **/
  //BEF_BLUE_MEMBERSHIP_NO

  private  String                     befBlueMembershipNo;

  /**
   * 이전블루멤버쉽가입일자bef
   **/
  //BEF_BLUE_MEMBERSHIP_JOIN_DT
  private Date befBlueMembershipJoinDt;
  // 이력 필드 끝


  /**
   * 인터페이스 배치 필드
   */
  private String batYn;
  private String ifresult;
  private String iffailmsg;
  private String createdate;
  private String updatedate;
  private Date ifRegDt;
  private String batStatCd;
  private Date batRsltDt;
  private String batMesgCont;


    /**
     * @ return the dlrCd
     */
    public String getDlrCd() {
        return dlrCd;
    }
    /**
     * @param dlrCd the dlrCd to set
     */
    public void setDlrCd(String dlrCd) {
        this.dlrCd = dlrCd;
    }
    /**
     * @ return the pltCd
     */
    public String getPltCd() {
        return pltCd;
    }
    /**
     * @param pltCd the pltCd to set
     */
    public void setPltCd(String pltCd) {
        this.pltCd = pltCd;
    }
    /**
     * @ return the custNo
     */
    public String getCustNo() {
        return custNo;
    }
    /**
     * @param custNo the custNo to set
     */
    public void setCustNo(String custNo) {
        this.custNo = custNo;
    }
    /**
     * @ return the custNm
     */
    public String getCustNm() {
        return custNm;
    }
    /**
     * @param custNm the custNm to set
     */
    public void setCustNm(String custNm) {
        this.custNm = custNm;
    }
    /**
     * @ return the custCd
     */
    public String getCustCd() {
        return custCd;
    }
    /**
     * @param custCd the custCd to set
     */
    public void setCustCd(String custCd) {
        this.custCd = custCd;
    }
    /**
     * @ return the ssnCrnNo
     */
    public String getSsnCrnNo() {
        return ssnCrnNo;
    }
    /**
     * @param ssnCrnNo the ssnCrnNo to set
     */
    public void setSsnCrnNo(String ssnCrnNo) {
        this.ssnCrnNo = ssnCrnNo;
    }
    /**
     * @ return the custTp
     */
    public String getCustTp() {
        return custTp;
    }
    /**
     * @param custTp the custTp to set
     */
    public void setCustTp(String custTp) {
        this.custTp = custTp;
    }
    /**
     * @ return the mngScId
     */
    public String getMngScId() {
        return mngScId;
    }
    /**
     * @param mngScId the mngScId to set
     */
    public void setMngScId(String mngScId) {
        this.mngScId = mngScId;
    }
    /**
     * @ return the mngScNm
     */
    public String getMngScNm() {
        return mngScNm;
    }
    /**
     * @param mngScNm the mngScNm to set
     */
    public void setMngScNm(String mngScNm) {
        this.mngScNm = mngScNm;
    }
    /**
     * @ return the saleScId
     */
    public String getSaleScId() {
        return saleScId;
    }
    /**
     * @param saleScId the saleScId to set
     */
    public void setSaleScId(String saleScId) {
        this.saleScId = saleScId;
    }
    /**
     * @ return the mngTecId
     */
    public String getMngTecId() {
        return mngTecId;
    }
    /**
     * @param mngTecId the mngTecId to set
     */
    public void setMngTecId(String mngTecId) {
        this.mngTecId = mngTecId;
    }
    /**
     * @ return the emailNm
     */
    public String getEmailNm() {
        return emailNm;
    }
    /**
     * @param emailNm the emailNm to set
     */
    public void setEmailNm(String emailNm) {
        this.emailNm = emailNm;
    }
    /**
     * @ return the emailDomainNm
     */
    public String getEmailDomainNm() {
        return emailDomainNm;
    }
    /**
     * @param emailDomainNm the emailDomainNm to set
     */
    public void setEmailDomainNm(String emailDomainNm) {
        this.emailDomainNm = emailDomainNm;
    }
    /**
     * @ return the wechatId
     */
    public String getWechatId() {
        return wechatId;
    }
    /**
     * @param wechatId the wechatId to set
     */
    public void setWechatId(String wechatId) {
        this.wechatId = wechatId;
    }
    /**
     * @ return the qqId
     */
    public String getQqId() {
        return qqId;
    }
    /**
     * @param qqId the qqId to set
     */
    public void setQqId(String qqId) {
        this.qqId = qqId;
    }
    /**
     * @ return the facebookId
     */
    public String getFacebookId() {
        return facebookId;
    }
    /**
     * @param facebookId the facebookId to set
     */
    public void setFacebookId(String facebookId) {
        this.facebookId = facebookId;
    }
    /**
     * @ return the twitterId
     */
    public String getTwitterId() {
        return twitterId;
    }
    /**
     * @param twitterId the twitterId to set
     */
    public void setTwitterId(String twitterId) {
        this.twitterId = twitterId;
    }
    /**
     * @ return the prefCommMthCd
     */
    public String getPrefCommMthCd() {
        return prefCommMthCd;
    }
    /**
     * @param prefCommMthCd the prefCommMthCd to set
     */
    public void setPrefCommMthCd(String prefCommMthCd) {
        this.prefCommMthCd = prefCommMthCd;
    }
    /**
     * @ return the prefCommNo
     */
    public String getPrefCommNo() {
        return prefCommNo;
    }
    /**
     * @param prefCommNo the prefCommNo to set
     */
    public void setPrefCommNo(String prefCommNo) {
        this.prefCommNo = prefCommNo;
    }
    /**
     * @ return the prefContactMthCd
     */
    public String getPrefContactMthCd() {
        return prefContactMthCd;
    }
    /**
     * @param prefContactMthCd the prefContactMthCd to set
     */
    public void setPrefContactMthCd(String prefContactMthCd) {
        this.prefContactMthCd = prefContactMthCd;
    }
    /**
     * @ return the prefContactTimeCd
     */
    public String getPrefContactTimeCd() {
        return prefContactTimeCd;
    }
    /**
     * @param prefContactTimeCd the prefContactTimeCd to set
     */
    public void setPrefContactTimeCd(String prefContactTimeCd) {
        this.prefContactTimeCd = prefContactTimeCd;
    }
    /**
     * @ return the blueMemberCd
     */
    public String getBlueMemberCd() {
        return blueMemberCd;
    }
    /**
     * @param blueMemberCd the blueMemberCd to set
     */
    public void setBlueMemberCd(String blueMemberCd) {
        this.blueMemberCd = blueMemberCd;
    }
    /**
     * @ return the telNo
     */
    public String getTelNo() {
        return telNo;
    }
    /**
     * @param telNo the telNo to set
     */
    public void setTelNo(String telNo) {
        this.telNo = telNo;
    }
    /**
     * @ return the hpNo
     */
    public String getHpNo() {
        return hpNo;
    }
    /**
     * @param hpNo the hpNo to set
     */
    public void setHpNo(String hpNo) {
        this.hpNo = hpNo;
    }
    /**
     * @ return the zipCd
     */
    public String getZipCd() {
        return zipCd;
    }
    /**
     * @param zipCd the zipCd to set
     */
    public void setZipCd(String zipCd) {
        this.zipCd = zipCd;
    }
    /**
     * @ return the sungCd
     */
    public String getSungCd() {
        return sungCd;
    }
    /**
     * @param sungCd the sungCd to set
     */
    public void setSungCd(String sungCd) {
        this.sungCd = sungCd;
    }
    /**
     * @ return the cityCd
     */
    public String getCityCd() {
        return cityCd;
    }
    /**
     * @param cityCd the cityCd to set
     */
    public void setCityCd(String cityCd) {
        this.cityCd = cityCd;
    }
    /**
     * @ return the regionCd
     */
    public String getRegionCd() {
        return regionCd;
    }
    /**
     * @param regionCd the regionCd to set
     */
    public void setRegionCd(String regionCd) {
        this.regionCd = regionCd;
    }
    /**
     * @ return the addr1
     */
    public String getAddr1() {
        return addr1;
    }
    /**
     * @param addr1 the addr1 to set
     */
    public void setAddr1(String addr1) {
        this.addr1 = addr1;
    }
    /**
     * @ return the addr2
     */
    public String getAddr2() {
        return addr2;
    }
    /**
     * @param addr2 the addr2 to set
     */
    public void setAddr2(String addr2) {
        this.addr2 = addr2;
    }
    /**
     * @ return the jobCd
     */
    public String getJobCd() {
        return jobCd;
    }
    /**
     * @param jobCd the jobCd to set
     */
    public void setJobCd(String jobCd) {
        this.jobCd = jobCd;
    }
    /**
     * @ return the jobDetlCd
     */
    public String getJobDetlCd() {
        return jobDetlCd;
    }
    /**
     * @param jobDetlCd the jobDetlCd to set
     */
    public void setJobDetlCd(String jobDetlCd) {
        this.jobDetlCd = jobDetlCd;
    }
    /**
     * @ return the officeNm
     */
    public String getOfficeNm() {
        return officeNm;
    }
    /**
     * @param officeNm the officeNm to set
     */
    public void setOfficeNm(String officeNm) {
        this.officeNm = officeNm;
    }
    /**
     * @ return the deptNm
     */
    public String getDeptNm() {
        return deptNm;
    }
    /**
     * @param deptNm the deptNm to set
     */
    public void setDeptNm(String deptNm) {
        this.deptNm = deptNm;
    }
    /**
     * @ return the psitNm
     */
    public String getPsitNm() {
        return psitNm;
    }
    /**
     * @param psitNm the psitNm to set
     */
    public void setPsitNm(String psitNm) {
        this.psitNm = psitNm;
    }
    /**
     * @ return the officeTelNo
     */
    public String getOfficeTelNo() {
        return officeTelNo;
    }
    /**
     * @param officeTelNo the officeTelNo to set
     */
    public void setOfficeTelNo(String officeTelNo) {
        this.officeTelNo = officeTelNo;
    }
    /**
     * @ return the officeFaxNo
     */
    public String getOfficeFaxNo() {
        return officeFaxNo;
    }
    /**
     * @param officeFaxNo the officeFaxNo to set
     */
    public void setOfficeFaxNo(String officeFaxNo) {
        this.officeFaxNo = officeFaxNo;
    }
    /**
     * @ return the officeZipCd
     */
    public String getOfficeZipCd() {
        return officeZipCd;
    }
    /**
     * @param officeZipCd the officeZipCd to set
     */
    public void setOfficeZipCd(String officeZipCd) {
        this.officeZipCd = officeZipCd;
    }
    /**
     * @ return the officeSungCd
     */
    public String getOfficeSungCd() {
        return officeSungCd;
    }
    /**
     * @param officeSungCd the officeSungCd to set
     */
    public void setOfficeSungCd(String officeSungCd) {
        this.officeSungCd = officeSungCd;
    }
    /**
     * @ return the officeCityCd
     */
    public String getOfficeCityCd() {
        return officeCityCd;
    }
    /**
     * @param officeCityCd the officeCityCd to set
     */
    public void setOfficeCityCd(String officeCityCd) {
        this.officeCityCd = officeCityCd;
    }
    /**
     * @ return the officeRegionCd
     */
    public String getOfficeRegionCd() {
        return officeRegionCd;
    }
    /**
     * @param officeRegionCd the officeRegionCd to set
     */
    public void setOfficeRegionCd(String officeRegionCd) {
        this.officeRegionCd = officeRegionCd;
    }
    /**
     * @ return the officeAddr1
     */
    public String getOfficeAddr1() {
        return officeAddr1;
    }
    /**
     * @param officeAddr1 the officeAddr1 to set
     */
    public void setOfficeAddr1(String officeAddr1) {
        this.officeAddr1 = officeAddr1;
    }
    /**
     * @ return the officeAddr2
     */
    public String getOfficeAddr2() {
        return officeAddr2;
    }
    /**
     * @param officeAddr2 the officeAddr2 to set
     */
    public void setOfficeAddr2(String officeAddr2) {
        this.officeAddr2 = officeAddr2;
    }
    /**
     * @ return the bizcondCd
     */
    public String getBizcondCd() {
        return bizcondCd;
    }
    /**
     * @param bizcondCd the bizcondCd to set
     */
    public void setBizcondCd(String bizcondCd) {
        this.bizcondCd = bizcondCd;
    }
    /**
     * @ return the bizcondNm
     */
    public String getBizcondNm() {
        return bizcondNm;
    }
    /**
     * @param bizcondNm the bizcondNm to set
     */
    public void setBizcondNm(String bizcondNm) {
        this.bizcondNm = bizcondNm;
    }
    /**
     * @ return the biztpNm
     */
    public String getBiztpNm() {
        return biztpNm;
    }
    /**
     * @param biztpNm the biztpNm to set
     */
    public void setBiztpNm(String biztpNm) {
        this.biztpNm = biztpNm;
    }
    /**
     * @ return the ownRgstSsnNo
     */
    public String getOwnRgstSsnNo() {
        return ownRgstSsnNo;
    }
    /**
     * @param ownRgstSsnNo the ownRgstSsnNo to set
     */
    public void setOwnRgstSsnNo(String ownRgstSsnNo) {
        this.ownRgstSsnNo = ownRgstSsnNo;
    }
    /**
     * @ return the ownRgstNm
     */
    public String getOwnRgstNm() {
        return ownRgstNm;
    }
    /**
     * @param ownRgstNm the ownRgstNm to set
     */
    public void setOwnRgstNm(String ownRgstNm) {
        this.ownRgstNm = ownRgstNm;
    }
    /**
     * @ return the cmpTp
     */
    public String getCmpTp() {
        return cmpTp;
    }
    /**
     * @param cmpTp the cmpTp to set
     */
    public void setCmpTp(String cmpTp) {
        this.cmpTp = cmpTp;
    }
    /**
     * @ return the cmpScaleCont
     */
    public String getCmpScaleCont() {
        return cmpScaleCont;
    }
    /**
     * @param cmpScaleCont the cmpScaleCont to set
     */
    public void setCmpScaleCont(String cmpScaleCont) {
        this.cmpScaleCont = cmpScaleCont;
    }
    /**
     * @ return the mathDocTp
     */
    public String getMathDocTp() {
        return mathDocTp;
    }
    /**
     * @param mathDocTp the mathDocTp to set
     */
    public void setMathDocTp(String mathDocTp) {
        this.mathDocTp = mathDocTp;
    }
    /**
     * @ return the idCardNo
     */
    public String getIdCardNo() {
        return idCardNo;
    }
    /**
     * @param idCardNo the idCardNo to set
     */
    public void setIdCardNo(String idCardNo) {
        this.idCardNo = idCardNo;
    }
    /**
     * @ return the drivingNo
     */
    public String getDrivingNo() {
        return drivingNo;
    }
    /**
     * @param drivingNo the drivingNo to set
     */
    public void setDrivingNo(String drivingNo) {
        this.drivingNo = drivingNo;
    }
    /**
     * @ return the officeNo
     */
    public String getOfficeNo() {
        return officeNo;
    }
    /**
     * @param officeNo the officeNo to set
     */
    public void setOfficeNo(String officeNo) {
        this.officeNo = officeNo;
    }
    /**
     * @ return the otherNo
     */
    public String getOtherNo() {
        return otherNo;
    }
    /**
     * @param otherNo the otherNo to set
     */
    public void setOtherNo(String otherNo) {
        this.otherNo = otherNo;
    }
    /**
     * @ return the idZipCd
     */
    public String getIdZipCd() {
        return idZipCd;
    }
    /**
     * @param idZipCd the idZipCd to set
     */
    public void setIdZipCd(String idZipCd) {
        this.idZipCd = idZipCd;
    }
    /**
     * @ return the idSungCd
     */
    public String getIdSungCd() {
        return idSungCd;
    }
    /**
     * @param idSungCd the idSungCd to set
     */
    public void setIdSungCd(String idSungCd) {
        this.idSungCd = idSungCd;
    }
    /**
     * @ return the idCityCd
     */
    public String getIdCityCd() {
        return idCityCd;
    }
    /**
     * @param idCityCd the idCityCd to set
     */
    public void setIdCityCd(String idCityCd) {
        this.idCityCd = idCityCd;
    }
    /**
     * @ return the idRegionCd
     */
    public String getIdRegionCd() {
        return idRegionCd;
    }
    /**
     * @param idRegionCd the idRegionCd to set
     */
    public void setIdRegionCd(String idRegionCd) {
        this.idRegionCd = idRegionCd;
    }
    /**
     * @ return the idAddr1
     */
    public String getIdAddr1() {
        return idAddr1;
    }
    /**
     * @param idAddr1 the idAddr1 to set
     */
    public void setIdAddr1(String idAddr1) {
        this.idAddr1 = idAddr1;
    }
    /**
     * @ return the idAddr2
     */
    public String getIdAddr2() {
        return idAddr2;
    }
    /**
     * @param idAddr2 the idAddr2 to set
     */
    public void setIdAddr2(String idAddr2) {
        this.idAddr2 = idAddr2;
    }
    /**
     * @ return the dmPlaceCd
     */
    public String getDmPlaceCd() {
        return dmPlaceCd;
    }
    /**
     * @param dmPlaceCd the dmPlaceCd to set
     */
    public void setDmPlaceCd(String dmPlaceCd) {
        this.dmPlaceCd = dmPlaceCd;
    }
    /**
     * @ return the dmNm
     */
    public String getDmNm() {
        return dmNm;
    }
    /**
     * @param dmNm the dmNm to set
     */
    public void setDmNm(String dmNm) {
        this.dmNm = dmNm;
    }
    /**
     * @ return the smsReceiveYn
     */
    public String getSmsReceiveYn() {
        return smsReceiveYn;
    }
    /**
     * @param smsReceiveYn the smsReceiveYn to set
     */
    public void setSmsReceiveYn(String smsReceiveYn) {
        this.smsReceiveYn = smsReceiveYn;
    }
    /**
     * @ return the telReceiveYn
     */
    public String getTelReceiveYn() {
        return telReceiveYn;
    }
    /**
     * @param telReceiveYn the telReceiveYn to set
     */
    public void setTelReceiveYn(String telReceiveYn) {
        this.telReceiveYn = telReceiveYn;
    }
    /**
     * @ return the dmDeceiveYn
     */
    public String getDmDeceiveYn() {
        return dmDeceiveYn;
    }
    /**
     * @param dmDeceiveYn the dmDeceiveYn to set
     */
    public void setDmDeceiveYn(String dmDeceiveYn) {
        this.dmDeceiveYn = dmDeceiveYn;
    }
    /**
     * @ return the emailReceiveYn
     */
    public String getEmailReceiveYn() {
        return emailReceiveYn;
    }
    /**
     * @param emailReceiveYn the emailReceiveYn to set
     */
    public void setEmailReceiveYn(String emailReceiveYn) {
        this.emailReceiveYn = emailReceiveYn;
    }
    /**
     * @ return the faxReceiveYn
     */
    public String getFaxReceiveYn() {
        return faxReceiveYn;
    }
    /**
     * @param faxReceiveYn the faxReceiveYn to set
     */
    public void setFaxReceiveYn(String faxReceiveYn) {
        this.faxReceiveYn = faxReceiveYn;
    }
    /**
     * @ return the dmReturnYn
     */
    public String getDmReturnYn() {
        return dmReturnYn;
    }
    /**
     * @param dmReturnYn the dmReturnYn to set
     */
    public void setDmReturnYn(String dmReturnYn) {
        this.dmReturnYn = dmReturnYn;
    }
    /**
     * @ return the emailreturnYn
     */
    public String getEmailReturnYn() {
        return emailReturnYn;
    }
    /**
     * @param emailreturnYn the emailreturnYn to set
     */
    public void setEmailReturnYn(String emailReturnYn) {
        this.emailReturnYn = emailReturnYn;
    }
    /**
     * @ return the giYn
     */
    public String getGiYn() {
        return giYn;
    }
    /**
     * @param giYn the giYn to set
     */
    public void setGiYn(String giYn) {
        this.giYn = giYn;
    }
    /**
     * @ return the disuseYn
     */
    public String getDisuseYn() {
        return disuseYn;
    }
    /**
     * @param disuseYn the disuseYn to set
     */
    public void setDisuseYn(String disuseYn) {
        this.disuseYn = disuseYn;
    }
    /**
     * @ return the vipYn
     */
    public String getVipYn() {
        return vipYn;
    }
    /**
     * @param vipYn the vipYn to set
     */
    public void setVipYn(String vipYn) {
        this.vipYn = vipYn;
    }
    /**
     * @ return the disuseCd
     */
    public String getDisuseCd() {
        return disuseCd;
    }
    /**
     * @param disuseCd the disuseCd to set
     */
    public void setDisuseCd(String disuseCd) {
        this.disuseCd = disuseCd;
    }
    /**
     * @ return the corpRegNo
     */
    public String getCorpRegNo() {
        return corpRegNo;
    }
    /**
     * @param corpRegNo the corpRegNo to set
     */
    public void setCorpRegNo(String corpRegNo) {
        this.corpRegNo = corpRegNo;
    }
    /**
     * @ return the custGradeCd
     */
    public String getCustGradeCd() {
        return custGradeCd;
    }
    /**
     * @param custGradeCd the custGradeCd to set
     */
    public void setCustGradeCd(String custGradeCd) {
        this.custGradeCd = custGradeCd;
    }
    /**
     * @ return the custSerMngGradeCd
     */
    public String getCustSerMngGradeCd() {
        return custSerMngGradeCd;
    }
    /**
     * @param custSerMngGradeCd the custSerMngGradeCd to set
     */
    public void setCustSerMngGradeCd(String custSerMngGradeCd) {
        this.custSerMngGradeCd = custSerMngGradeCd;
    }
    /**
     * @ return the mngTp
     */
    public String getMngTp() {
        return mngTp;
    }
    /**
     * @param mngTp the mngTp to set
     */
    public void setMngTp(String mngTp) {
        this.mngTp = mngTp;
    }
    /**
     * @ return the mngTpChgDt
     */
    public String getMngTpChgDt() {
        return mngTpChgDt;
    }
    /**
     * @param mngTpChgDt the mngTpChgDt to set
     */
    public void setMngTpChgDt(String mngTpChgDt) {
        this.mngTpChgDt = mngTpChgDt;
    }
    /**
     * @ return the custHoldTp
     */
    public String getCustHoldTp() {
        return custHoldTp;
    }
    /**
     * @param custHoldTp the custHoldTp to set
     */
    public void setCustHoldTp(String custHoldTp) {
        this.custHoldTp = custHoldTp;
    }
    /**
     * @ return the custHoldDt
     */
    public String getCustHoldDt() {
        return custHoldDt;
    }
    /**
     * @param custHoldDt the custHoldDt to set
     */
    public void setCustHoldDt(String custHoldDt) {
        this.custHoldDt = custHoldDt;
    }
    /**
     * @ return the sexCd
     */
    public String getSexCd() {
        return sexCd;
    }
    /**
     * @param sexCd the sexCd to set
     */
    public void setSexCd(String sexCd) {
        this.sexCd = sexCd;
    }
    /**
     * @ return the birthDt
     */
    public String getBirthDt() {
        return birthDt;
    }
    /**
     * @param birthDt the birthDt to set
     */
    public void setBirthDt(String birthDt) {
        this.birthDt = birthDt;
    }

    /**
     * @ return the marryCd
     */
    public String getMarryCd() {
        return marryCd;
    }
    /**
     * @param marryCd the marryCd to set
     */
    public void setMarryCd(String marryCd) {
        this.marryCd = marryCd;
    }
    /**
     * @ return the intrCarlineNm1
     */
    public String getIntrCarlineNm1() {
        return intrCarlineNm1;
    }
    /**
     * @param intrCarlineNm1 the intrCarlineNm1 to set
     */
    public void setIntrCarlineNm1(String intrCarlineNm1) {
        this.intrCarlineNm1 = intrCarlineNm1;
    }
    /**
     * @ return the intrCarlineNm2
     */
    public String getIntrCarlineNm2() {
        return intrCarlineNm2;
    }
    /**
     * @param intrCarlineNm2 the intrCarlineNm2 to set
     */
    public void setIntrCarlineNm2(String intrCarlineNm2) {
        this.intrCarlineNm2 = intrCarlineNm2;
    }
    /**
     * @ return the hobbyCd
     */
    public String getHobbyCd() {
        return hobbyCd;
    }
    /**
     * @param hobbyCd the hobbyCd to set
     */
    public void setHobbyCd(String hobbyCd) {
        this.hobbyCd = hobbyCd;
    }
    /**
     * @ return the otherHobbyNm
     */
    public String getOtherHobbyNm() {
        return otherHobbyNm;
    }
    /**
     * @param otherHobbyNm the otherHobbyNm to set
     */
    public void setOtherHobbyNm(String otherHobbyNm) {
        this.otherHobbyNm = otherHobbyNm;
    }
    /**
     * @ return the ocmpIntrCarlineNm
     */
    public String getOcmpIntrCarlineNm() {
        return ocmpIntrCarlineNm;
    }
    /**
     * @param ocmpIntrCarlineNm the ocmpIntrCarlineNm to set
     */
    public void setOcmpIntrCarlineNm(String ocmpIntrCarlineNm) {
        this.ocmpIntrCarlineNm = ocmpIntrCarlineNm;
    }
    /**
     * @ return the befMngScId
     */
    public String getBefMngScId() {
        return befMngScId;
    }
    /**
     * @param befMngScId the befMngScId to set
     */
    public void setBefMngScId(String befMngScId) {
        this.befMngScId = befMngScId;
    }
    /**
     * @ return the eventNo
     */
    public String getEventNo() {
        return eventNo;
    }
    /**
     * @param eventNo the eventNo to set
     */
    public void setEventNo(String eventNo) {
        this.eventNo = eventNo;
    }
    /**
     * @ return the pcontactNm
     */
    public String getPcontactNm() {
        return pcontactNm;
    }
    /**
     * @param pcontactNm the pcontactNm to set
     */
    public void setPcontactNm(String pcontactNm) {
        this.pcontactNm = pcontactNm;
    }
    /**
     * @ return the pcontactCustNo
     */
    public String getPcontactCustNo() {
        return pcontactCustNo;
    }
    /**
     * @param pcontactCustNo the pcontactCustNo to set
     */
    public void setPcontactCustNo(String pcontactCustNo) {
        this.pcontactCustNo = pcontactCustNo;
    }
    /**
     * @ return the perInfoAgreeYn
     */
    public String getPerInfoAgreeYn() {
        return perInfoAgreeYn;
    }
    /**
     * @param perInfoAgreeYn the perInfoAgreeYn to set
     */
    public void setPerInfoAgreeYn(String perInfoAgreeYn) {
        this.perInfoAgreeYn = perInfoAgreeYn;
    }
    /**
     * @ return the perInfoUseYn
     */
    public String getPerInfoUseYn() {
        return perInfoUseYn;
    }
    /**
     * @param perInfoUseYn the perInfoUseYn to set
     */
    public void setPerInfoUseYn(String perInfoUseYn) {
        this.perInfoUseYn = perInfoUseYn;
    }
    /**
     * @ return the nameChkYn
     */
    public String getNameChkYn() {
        return nameChkYn;
    }
    /**
     * @param nameChkYn the nameChkYn to set
     */
    public void setNameChkYn(String nameChkYn) {
        this.nameChkYn = nameChkYn;
    }
    /**
     * @ return the invoiceEmailNm
     */
    public String getInvoiceEmailNm() {
        return invoiceEmailNm;
    }
    /**
     * @param invoiceEmailNm the invoiceEmailNm to set
     */
    public void setInvoiceEmailNm(String invoiceEmailNm) {
        this.invoiceEmailNm = invoiceEmailNm;
    }
    /**
     * @ return the acCareerCd
     */
    public String getAcCareerCd() {
        return acCareerCd;
    }
    /**
     * @param acCareerCd the acCareerCd to set
     */
    public void setAcCareerCd(String acCareerCd) {
        this.acCareerCd = acCareerCd;
    }
    /**
     * @ return the incomeLvlCd
     */
    public String getIncomeLvlCd() {
        return incomeLvlCd;
    }
    /**
     * @param incomeLvlCd the incomeLvlCd to set
     */
    public void setIncomeLvlCd(String incomeLvlCd) {
        this.incomeLvlCd = incomeLvlCd;
    }
    /**
     * @ return the ageCd
     */
    public String getAgeCd() {
        return ageCd;
    }
    /**
     * @param ageCd the ageCd to set
     */
    public void setAgeCd(String ageCd) {
        this.ageCd = ageCd;
    }
    /**
     * @ return the familyCnt
     */
    public int getFamilyCnt() {
        return familyCnt;
    }
    /**
     * @param familyCnt the familyCnt to set
     */
    public void setFamilyCnt(int familyCnt) {
        this.familyCnt = familyCnt;
    }
    /**
     * @ return the driverTp
     */
    public String getDriverTp() {
        return driverTp;
    }
    /**
     * @param driverTp the driverTp to set
     */
    public void setDriverTp(String driverTp) {
        this.driverTp = driverTp;
    }
    /**
     * @ return the introCnt
     */
    public String getIntroCnt() {
        return introCnt;
    }
    /**
     * @param introCnt the introCnt to set
     */
    public void setIntroCnt(String introCnt) {
        this.introCnt = introCnt;
    }
    /**
     * @ return the purcReasonCd
     */
    public String getPurcReasonCd() {
        return purcReasonCd;
    }
    /**
     * @param purcReasonCd the purcReasonCd to set
     */
    public void setPurcReasonCd(String purcReasonCd) {
        this.purcReasonCd = purcReasonCd;
    }
    /**
     * @ return the regCarBrandCd
     */
    public String getRegCarBrandCd() {
        return regCarBrandCd;
    }
    /**
     * @param regCarBrandCd the regCarBrandCd to set
     */
    public void setRegCarBrandCd(String regCarBrandCd) {
        this.regCarBrandCd = regCarBrandCd;
    }
    /**
     * @ return the regCarBrandModelCd
     */
    public String getRegCarBrandModelCd() {
        return regCarBrandModelCd;
    }
    /**
     * @param regCarBrandModelCd the regCarBrandModelCd to set
     */
    public void setRegCarBrandModelCd(String regCarBrandModelCd) {
        this.regCarBrandModelCd = regCarBrandModelCd;
    }
    /**
     * @ return the befOwnerSellChnCd
     */
    public String getBefOwnerSellChnCd() {
        return befOwnerSellChnCd;
    }
    /**
     * @param befOwnerSellChnCd the befOwnerSellChnCd to set
     */
    public void setBefOwnerSellChnCd(String befOwnerSellChnCd) {
        this.befOwnerSellChnCd = befOwnerSellChnCd;
    }
    /**
     * @ return the befOwnerHoldPrid
     */
    public String getBefOwnerHoldPrid() {
        return befOwnerHoldPrid;
    }
    /**
     * @param befOwnerHoldPrid the befOwnerHoldPrid to set
     */
    public void setBefOwnerHoldPrid(String befOwnerHoldPrid) {
        this.befOwnerHoldPrid = befOwnerHoldPrid;
    }
    /**
     * @ return the carPurcClassCd
     */
    public String getCarPurcClassCd() {
        return carPurcClassCd;
    }
    /**
     * @param carPurcClassCd the carPurcClassCd to set
     */
    public void setCarPurcClassCd(String carPurcClassCd) {
        this.carPurcClassCd = carPurcClassCd;
    }
    /**
     * @ return the pintroTp
     */
    public String getPintroTp() {
        return pintroTp;
    }
    /**
     * @param pintroTp the pintroTp to set
     */
    public void setPintroTp(String pintroTp) {
        this.pintroTp = pintroTp;
    }
    /**
     * @ return the pintroNm
     */
    public String getPintroNm() {
        return pintroNm;
    }
    /**
     * @param pintroNm the pintroNm to set
     */
    public void setPintroNm(String pintroNm) {
        this.pintroNm = pintroNm;
    }
    /**
     * @ return the emailDomainCd
     */
    public String getEmailDomainCd() {
        return emailDomainCd;
    }
    /**
     * @param emailDomainCd the emailDomainCd to set
     */
    public void setEmailDomainCd(String emailDomainCd) {
        this.emailDomainCd = emailDomainCd;
    }
    /**
     * @ return the compareCarBrandCd
     */
    public String getCompareCarBrandCd() {
        return compareCarBrandCd;
    }
    /**
     * @param compareCarBrandCd the compareCarBrandCd to set
     */
    public void setCompareCarBrandCd(String compareCarBrandCd) {
        this.compareCarBrandCd = compareCarBrandCd;
    }
    /**
     * @ return the compareCarModelCd
     */
    public String getCompareCarModelCd() {
        return compareCarModelCd;
    }
    /**
     * @param compareCarModelCd the compareCarModelCd to set
     */
    public void setCompareCarModelCd(String compareCarModelCd) {
        this.compareCarModelCd = compareCarModelCd;
    }
    /**
     * @ return the purcBefCarBrandCd
     */
    public String getPurcBefCarBrandCd() {
        return purcBefCarBrandCd;
    }
    /**
     * @param purcBefCarBrandCd the purcBefCarBrandCd to set
     */
    public void setPurcBefCarBrandCd(String purcBefCarBrandCd) {
        this.purcBefCarBrandCd = purcBefCarBrandCd;
    }
    /**
     * @ return the purcBefCarModelCd
     */
    public String getPurcBefCarModelCd() {
        return purcBefCarModelCd;
    }
    /**
     * @param purcBefCarModelCd the purcBefCarModelCd to set
     */
    public void setPurcBefCarModelCd(String purcBefCarModelCd) {
        this.purcBefCarModelCd = purcBefCarModelCd;
    }
    /**
     * @ return the mergeYn
     */
    public String getMergeYn() {
        return mergeYn;
    }
    /**
     * @param mergeYn the mergeYn to set
     */
    public void setMergeYn(String mergeYn) {
        this.mergeYn = mergeYn;
    }
    /**
     * @ return the delYn
     */
    public String getDelYn() {
        return delYn;
    }
    /**
     * @param delYn the delYn to set
     */
    public void setDelYn(String delYn) {
        this.delYn = delYn;
    }
    /**
     * @ return the bhmcYn
     */
    public String getBhmcYn() {
        return bhmcYn;
    }
    /**
     * @param bhmcYn the bhmcYn to set
     */
    public void setBhmcYn(String bhmcYn) {
        this.bhmcYn = bhmcYn;
    }
    /**
     * @ return the siebelRowId
     */
    public String getSiebelRowId() {
        return siebelRowId;
    }
    /**
     * @param siebelRowId the siebelRowId to set
     */
    public void setSiebelRowId(String siebelRowId) {
        this.siebelRowId = siebelRowId;
    }
    /**
     * @ return the regUsrId
     */
    public String getRegUsrId() {
        return regUsrId;
    }
    /**
     * @param regUsrId the regUsrId to set
     */
    public void setRegUsrId(String regUsrId) {
        this.regUsrId = regUsrId;
    }
    /**
     * @ return the regUsrNm
     */
    public String getRegUsrNm() {
        return regUsrNm;
    }
    /**
     * @param regUsrNm the regUsrNm to set
     */
    public void setRegUsrNm(String regUsrNm) {
        this.regUsrNm = regUsrNm;
    }
    /**
     * @ return the regDt
     */
    public Date getRegDt() {
        return regDt;
    }
    /**
     * @param regDt the regDt to set
     */
    public void setRegDt(Date regDt) {
        this.regDt = regDt;
    }
    /**
     * @ return the updtUsrId
     */
    public String getUpdtUsrId() {
        return updtUsrId;
    }
    /**
     * @param updtUsrId the updtUsrId to set
     */
    public void setUpdtUsrId(String updtUsrId) {
        this.updtUsrId = updtUsrId;
    }
    /**
     * @ return the updtDt
     */
    public Date getUpdtDt() {
        return updtDt;
    }
    /**
     * @param updtDt the updtDt to set
     */
    public void setUpdtDt(Date updtDt) {
        this.updtDt = updtDt;
    }
    /**
     * @ return the pconTp
     */
    public String getPconTp() {
        return pconTp;
    }
    /**
     * @param pconTp the pconTp to set
     */
    public void setPconTp(String pconTp) {
        this.pconTp = pconTp;
    }
    /**
     * @ return the certiNum
     */
    public String getCertiNum() {
        return certiNum;
    }
    /**
     * @param certiNum the certiNum to set
     */
    public void setCertiNum(String certiNum) {
        this.certiNum = certiNum;
    }
    /**
     * @ return the pageMode
     */
    public String getPageMode() {
        return pageMode;
    }
    /**
     * @param pageMode the pageMode to set
     */
    public void setPageMode(String pageMode) {
        this.pageMode = pageMode;
    }
    /**
     * @ return the itemCd
     */
    public String getItemCd() {
        return itemCd;
    }
    /**
     * @param itemCd the itemCd to set
     */
    public void setItemCd(String itemCd) {
        this.itemCd = itemCd;
    }
    /**
     * @ return the itemNm
     */
    public String getItemNm() {
        return itemNm;
    }
    /**
     * @param itemNm the itemNm to set
     */
    public void setItemNm(String itemNm) {
        this.itemNm = itemNm;
    }
    /**
     * @ return the regionCdRead
     */
    public String getRegionCdRead() {
        return regionCdRead;
    }
    /**
     * @param regionCdRead the regionCdRead to set
     */
    public void setRegionCdRead(String regionCdRead) {
        this.regionCdRead = regionCdRead;
    }
    /**
     * @ return the officeRegionCdRead
     */
    public String getOfficeRegionCdRead() {
        return officeRegionCdRead;
    }
    /**
     * @param officeRegionCdRead the officeRegionCdRead to set
     */
    public void setOfficeRegionCdRead(String officeRegionCdRead) {
        this.officeRegionCdRead = officeRegionCdRead;
    }
    /**
     * @ return the idRegionCdRead
     */
    public String getIdRegionCdRead() {
        return idRegionCdRead;
    }
    /**
     * @param idRegionCdRead the idRegionCdRead to set
     */
    public void setIdRegionCdRead(String idRegionCdRead) {
        this.idRegionCdRead = idRegionCdRead;
    }
    /**
     * @ return the marryYn
     */
    public String getMarryYn() {
        return marryYn;
    }
    /**
     * @param marryYn the marryYn to set
     */
    public void setMarryYn(String marryYn) {
        this.marryYn = marryYn;
    }
    /**
     * @ return the avgCarChgCd
     */
    public String getAvgCarChgCd() {
        return avgCarChgCd;
    }
    /**
     * @param avgCarChgCd the avgCarChgCd to set
     */
    public void setAvgCarChgCd(String avgCarChgCd) {
        this.avgCarChgCd = avgCarChgCd;
    }
    /**
     * @ return the groupTxt
     */
    public String getGroupTxt() {
        return groupTxt;
    }
    /**
     * @param groupTxt the groupTxt to set
     */
    public void setGroupTxt(String groupTxt) {
        this.groupTxt = groupTxt;
    }
    /**
     * @ return the tagTxt
     */
    public String getTagTxt() {
        return tagTxt;
    }
    /**
     * @param tagTxt the tagTxt to set
     */
    public void setTagTxt(String tagTxt) {
        this.tagTxt = tagTxt;
    }
    /**
     * @ return the dmReceiveYn
     */
    public String getDmReceiveYn() {
        return dmReceiveYn;
    }
    /**
     * @param dmReceiveYn the dmReceiveYn to set
     */
    public void setDmReceiveYn(String dmReceiveYn) {
        this.dmReceiveYn = dmReceiveYn;
    }
    /**
     * @ return the oldCustNm
     */
    public String getOldCustNm() {
        return oldCustNm;
    }
    /**
     * @param oldCustNm the oldCustNm to set
     */
    public void setOldCustNm(String oldCustNm) {
        this.oldCustNm = oldCustNm;
    }
    /**
     * @ return the oldHpNo
     */
    public String getOldHpNo() {
        return oldHpNo;
    }
    /**
     * @param oldHpNo the oldHpNo to set
     */
    public void setOldHpNo(String oldHpNo) {
        this.oldHpNo = oldHpNo;
    }
    /**
     * @ return the passportNo
     */
    public String getPassportNo() {
        return passportNo;
    }
    /**
     * @param passportNo the passportNo to set
     */
    public void setPassportNo(String passportNo) {
        this.passportNo = passportNo;
    }
    /**
     * @ return the groupDS
     */
    public List<BatCustomerGroupVO> getGroupDS() {
        return groupDS;
    }
    /**
     * @param groupDS the groupDS to set
     */
    public void setGroupDS(List<BatCustomerGroupVO> groupDS) {
        this.groupDS = groupDS;
    }
    /**
     * @ return the custInfoDS
     */
    public List<BatCustomerInfoVO> getCustInfoDS() {
        return custInfoDS;
    }
    /**
     * @param custInfoDS the custInfoDS to set
     */
    public void setCustInfoDS(List<BatCustomerInfoVO> custInfoDS) {
        this.custInfoDS = custInfoDS;
    }
    /**
     * @ return the tagDS
     */
    public List<BatCustomerGroupVO> getTagDS() {
        return tagDS;
    }
    /**
     * @param tagDS the tagDS to set
     */
    public void setTagDS(List<BatCustomerGroupVO> tagDS) {
        this.tagDS = tagDS;
    }
    /**
     * @ return the custRelSeq
     */
    public int getCustRelSeq() {
        return custRelSeq;
    }
    /**
     * @param custRelSeq the custRelSeq to set
     */
    public void setCustRelSeq(int custRelSeq) {
        this.custRelSeq = custRelSeq;
    }


    // 이인문 : 최근 활동/내방/시승일 가져오기 VO 추가
    public String getPreVsitDt() {
        return preVsitDt;
    }
    public void setPreVsitDt(String preVsitDt) {
        this.preVsitDt = preVsitDt;
    }
    public String getPreActiveDt() {
        return preActiveDt;
    }
    public void setPreActiveDt(String preActiveDt) {
        this.preActiveDt = preActiveDt;
    }
    public String getPreTdrvDt() {
        return preTdrvDt;
    }
    public void setPreTdrvDt(String preTdrvDt) {
        this.preTdrvDt = preTdrvDt;
    }
    public String getSaleOpptStepCd() {
        return saleOpptStepCd;
    }
    public void setSaleOpptStepCd(String saleOpptStepCd) {
        this.saleOpptStepCd = saleOpptStepCd;
    }
    /**
     * @ return the hobbyDS
     */
    public List<BatCustomerGroupVO> getHobbyDS() {
        return hobbyDS;
    }
    /**
     * @param hobbyDS the hobbyDS to set
     */
    public void setHobbyDS(List<BatCustomerGroupVO> hobbyDS) {
        this.hobbyDS = hobbyDS;
    }
    /**
     * @ return the custHoldTpDtl
     */
    public String getCustHoldTpDtl() {
        return custHoldTpDtl;
    }
    /**
     * @param custHoldTpDtl the custHoldTpDtl to set
     */
    public void setCustHoldTpDtl(String custHoldTpDtl) {
        this.custHoldTpDtl = custHoldTpDtl;
    }
    /**
     * @ return the commandTp
     */
    public String getCommandTp() {
        return commandTp;
    }
    /**
     * @param commandTp the commandTp to set
     */
    public void setCommandTp(String commandTp) {
        this.commandTp = commandTp;
    }
    /**
     * @return the hpNoInvldYn
     */
    public String getHpNoInvldYn() {
        return hpNoInvldYn;
    }
    /**
     * @param hpNoInvldYn the hpNoInvldYn to set
     */
    public void setHpNoInvldYn(String hpNoInvldYn) {
        this.hpNoInvldYn = hpNoInvldYn;
    }
    /**
     * @return the hpNoAddImposYn
     */
    public String getHpNoAddImposYn() {
        return hpNoAddImposYn;
    }
    /**
     * @param hpNoAddImposYn the hpNoAddImposYn to set
     */
    public void setHpNoAddImposYn(String hpNoAddImposYn) {
        this.hpNoAddImposYn = hpNoAddImposYn;
    }
    /**
     * @return the buyCnt
     */
    public String getBuyCnt() {
        return buyCnt;
    }
    /**
     * @param buyCnt the buyCnt to set
     */
    public void setBuyCnt(String buyCnt) {
        this.buyCnt = buyCnt;
    }
    /**
     * @return the chgBuyYn
     */
    public String getChgBuyYn() {
        return chgBuyYn;
    }
    /**
     * @param chgBuyYn the chgBuyYn to set
     */
    public void setChgBuyYn(String chgBuyYn) {
        this.chgBuyYn = chgBuyYn;
    }
    /**
     * @return the purcCarBrandCd
     */
    public String getPurcCarBrandCd() {
        return purcCarBrandCd;
    }
    /**
     * @param purcCarBrandCd the purcCarBrandCd to set
     */
    public void setPurcCarBrandCd(String purcCarBrandCd) {
        this.purcCarBrandCd = purcCarBrandCd;
    }
    /**
     * @return the ageDtl
     */
    public String getAgeDtl() {
        return ageDtl;
    }
    /**
     * @param ageDtl the ageDtl to set
     */
    public void setAgeDtl(String ageDtl) {
        this.ageDtl = ageDtl;
    }
    /**
     * @return the chinaZodiacSignCd
     */
    public String getChinaZodiacSignCd() {
        return chinaZodiacSignCd;
    }
    /**
     * @param chinaZodiacSignCd the chinaZodiacSignCd to set
     */
    public void setChinaZodiacSignCd(String chinaZodiacSignCd) {
        this.chinaZodiacSignCd = chinaZodiacSignCd;
    }
    /**
     * @return the zodiacSignCd
     */
    public String getZodiacSignCd() {
        return zodiacSignCd;
    }
    /**
     * @param zodiacSignCd the zodiacSignCd to set
     */
    public void setZodiacSignCd(String zodiacSignCd) {
        this.zodiacSignCd = zodiacSignCd;
    }
    /**
     * @return the bloodTp
     */
    public String getBloodTp() {
        return bloodTp;
    }
    /**
     * @param bloodTp the bloodTp to set
     */
    public void setBloodTp(String bloodTp) {
        this.bloodTp = bloodTp;
    }
    /**
     * @return the childrenCnt
     */
    public String getChildrenCnt() {
        return childrenCnt;
    }
    /**
     * @param childrenCnt the childrenCnt to set
     */
    public void setChildrenCnt(String childrenCnt) {
        this.childrenCnt = childrenCnt;
    }
    /**
     * @return the dutyCd
     */
    public String getDutyCd() {
        return dutyCd;
    }
    /**
     * @param dutyCd the dutyCd to set
     */
    public void setDutyCd(String dutyCd) {
        this.dutyCd = dutyCd;
    }
    /**
     * @return the purcCarModelNm
     */
    public String getPurcCarModelNm() {
        return purcCarModelNm;
    }
    /**
     * @param purcCarModelNm the purcCarModelNm to set
     */
    public void setPurcCarModelNm(String purcCarModelNm) {
        this.purcCarModelNm = purcCarModelNm;
    }
    /**
     * @return the marryDt
     */
    public Date getMarryDt() {
        return marryDt;
    }
    /**
     * @param marryDt the marryDt to set
     */
    public void setMarryDt(Date marryDt) {
        this.marryDt = marryDt;
    }
    /**
     * @return the addressDS
     */
    public List<BatAddressInfoVO> getAddressDS() {
        return addressDS;
    }
    /**
     * @param addressDS the addressDS to set
     */
    public void setAddressDS(List<BatAddressInfoVO> addressDS) {
        this.addressDS = addressDS;
    }
    /**
     * @return the docId
     */
    public String getDocId() {
        return docId;
    }
    /**
     * @param docId the docId to set
     */
    public void setDocId(String docId) {
        this.docId = docId;
    }

    /**
     * @return the addrDetlCont
     */
    public String getAddrDetlCont() {
        return addrDetlCont;
    }
    /**
     * @param addrDetlCont the addrDetlCont to set
     */
    public void setAddrDetlCont(String addrDetlCont) {
        this.addrDetlCont = addrDetlCont;
    }


    /*
     * @see chn.bhmc.dms.core.support.excel.ExcelDataBinder#bind(int, int, java.lang.Object)
     */
    @Override
    public void bind(int rowNo, int cellNo, Object value) throws ExcelDataBindingException {
        try{
            switch(cellNo){
                case 0 :this.setCustNm(ExcelDataBinderUtil.toString(value).trim()); break;
                case 1 :this.setSexCd(ExcelDataBinderUtil.toString(value).trim()); break;
                case 2 :this.setMathDocTp(ExcelDataBinderUtil.toString(value).trim()); break;
                case 3 :this.setSsnCrnNo(ExcelDataBinderUtil.toString(value).trim()); break;
                case 4 :this.setMngScId(ExcelDataBinderUtil.toString(value).trim()); break;
                case 5 :this.setCustHoldTp(ExcelDataBinderUtil.toString(value).trim()); break;
                case 6 :this.setCustHoldTpDtl(ExcelDataBinderUtil.toString(value).trim()); break;
                case 7 :this.setHpNo(ExcelDataBinderUtil.toString(value).trim()); break;
                case 8 :this.setTelNo(ExcelDataBinderUtil.toString(value).trim()); break;
                case 9 :this.setOfficeTelNo(ExcelDataBinderUtil.toString(value).trim()); break;
                case 10:this.setOfficeFaxNo(ExcelDataBinderUtil.toString(value).trim()); break;
                case 11:this.setEmailNm(ExcelDataBinderUtil.toString(value).trim()); break;
                case 12:this.setWechatId(ExcelDataBinderUtil.toString(value).trim()); break;
                case 13:this.setQqId(ExcelDataBinderUtil.toString(value).trim()); break;
                case 14:this.setPrefCommMthCd(ExcelDataBinderUtil.toString(value).trim()); break;
                case 15:this.setPrefCommNo(ExcelDataBinderUtil.toString(value).trim()); break;
                case 16:this.setPrefContactMthCd(ExcelDataBinderUtil.toString(value).trim()); break;
                case 17:this.setPrefContactTimeCd(ExcelDataBinderUtil.toString(value).trim()); break;
                case 18:this.setZipCd(ExcelDataBinderUtil.toString(value).trim()); break;
                case 19:this.setSungNm(ExcelDataBinderUtil.toString(value).trim()); break;
                case 20:this.setCityNm(ExcelDataBinderUtil.toString(value).trim()); break;
                case 21:this.setDistNm(ExcelDataBinderUtil.toString(value).trim()); break;
                case 22:this.setAddrDetlCont(ExcelDataBinderUtil.toString(value).trim()); break;
                case 23:this.setSmsReceiveYn(ExcelDataBinderUtil.toString(value).trim()); break;
                case 24:this.setTelReceiveYn(ExcelDataBinderUtil.toString(value).trim()); break;
                case 25:this.setDmReceiveYn(ExcelDataBinderUtil.toString(value).trim()); break;
                case 26:this.setEmailReceiveYn(ExcelDataBinderUtil.toString(value).trim()); break;
                case 27:this.setFaxReceiveYn(ExcelDataBinderUtil.toString(value).trim()); break;
                case 28:this.setPerInfoAgreeYn(ExcelDataBinderUtil.toString(value).trim()); break;
                case 29:this.setPerInfoUseYn(ExcelDataBinderUtil.toString(value).trim()); break;
            }
        }catch(Exception e){

            ExcelDataBindingException bindingException = new ExcelDataBindingException(messageSource.getMessage("global.err.excelUpload.dataExtract", null, LocaleContextHolder.getLocale()), e);
            bindingException.setRowNo(rowNo);
            bindingException.setColNo(cellNo);
            bindingException.setFieldValue(value.toString());

            throw bindingException;
        }

    }
    /*
     * @see chn.bhmc.dms.core.support.excel.ExcelDataBinder#validate(chn.bhmc.dms.core.support.excel.ExcelDataBindContext)
     */
    @Override
    public List<ExcelUploadError> validate(ExcelDataBindContext context) {
        List<ExcelUploadError> errors = new ArrayList<ExcelUploadError>();

         if (StringUtils.isBlank(this.getCustNm())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.custNm", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getCustNm(), msg));
         }
         if (StringUtils.isBlank(this.getSexCd())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.sex", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getSexCd(), msg));
         }
         if (StringUtils.isBlank(this.getMathDocTp())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.mathDocTp", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getMathDocTp(), msg));
         }
         if (StringUtils.isBlank(this.getSsnCrnNo())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.ssnCrnNo", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getSsnCrnNo(), msg));
         }
         if (StringUtils.isBlank(this.getMngScId())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.prsnSC", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getMngScId(), msg));
         }
         if (StringUtils.isBlank(this.getCustHoldTp())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.custHoldTp", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getCustHoldTp(), msg));
         }

         if (this.getCustHoldTp() == "01") {
             if (StringUtils.isBlank(this.getCustHoldTpDtl())){
                 String msg = messageSource.getMessage(
                         "global.info.required.field"
                         , new String[]{
                                 messageSource.getMessage("global.lbl.crNo", null, LocaleContextHolder.getLocale())
                         }
                         , LocaleContextHolder.getLocale()
                 );
                 errors.add(new ExcelUploadError(context.getRow(), 0, this.getCustHoldTpDtl(), msg));
             }
         }

         if (StringUtils.isBlank(this.getHpNo())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.hpNo", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getHpNo(), msg));
         }

         if (StringUtils.isBlank(this.getTelNo())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.homeTelNo", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getTelNo(), msg));
         }

         if (StringUtils.isBlank(this.getOfficeTelNo())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.officeTelNo", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getOfficeTelNo(), msg));
         }

         if (StringUtils.isBlank(this.getOfficeFaxNo())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.fax", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getOfficeFaxNo(), msg));
         }

         if (StringUtils.isBlank(this.getEmailNm())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.emailNm", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getEmailNm(), msg));
         }

         if (StringUtils.isBlank(this.getWechatId())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.wechatId", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getWechatId(), msg));
         }

         if (StringUtils.isBlank(this.getQqId())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.qq", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getQqId(), msg));
         }

         if (StringUtils.isBlank(this.getPrefCommMthCd())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.prefCommMthCd", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getPrefCommMthCd(), msg));
         }

         if (StringUtils.isBlank(this.getPrefCommNo())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.prefCommNo", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getPrefCommNo(), msg));
         }

         if (StringUtils.isBlank(this.getPrefContactMthCd())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.prefContactMthCd", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getPrefContactMthCd(), msg));
         }

         if (StringUtils.isBlank(this.getPrefContactTimeCd())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.prefContactTime", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getPrefContactTimeCd(), msg));
         }

         if (StringUtils.isBlank(this.getZipCd())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.zipCd", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getZipCd(), msg));
         }

         if (StringUtils.isBlank(this.getAddrDetlCont())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.detlAddr", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getAddrDetlCont(), msg));
         }

         if (StringUtils.isBlank(this.getSmsReceiveYn())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.hpNoRejectRecv", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getSmsReceiveYn(), msg));
         }

         if (StringUtils.isBlank(this.getTelReceiveYn())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.homeTelNoRejectRecv", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getTelReceiveYn(), msg));
         }

         if (StringUtils.isBlank(this.getDmReceiveYn())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.dmRejectRecv", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getDmReceiveYn(), msg));
         }

         if (StringUtils.isBlank(this.getEmailReceiveYn())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.emailNmRejectRecv", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getEmailReceiveYn(), msg));
         }

         if (StringUtils.isBlank(this.getFaxReceiveYn())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.faxNoRejectRecv", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getFaxReceiveYn(), msg));
         }

         if (StringUtils.isBlank(this.getPerInfoAgreeYn())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.infoAgreedocId", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getPerInfoAgreeYn(), msg));
         }

         if (StringUtils.isBlank(this.getPerInfoUseYn())){

            String msg = messageSource.getMessage(
                "global.info.required.field"
                , new String[]{
                        messageSource.getMessage("global.lbl.infoUsrYn", null, LocaleContextHolder.getLocale())
                }
                , LocaleContextHolder.getLocale()
            );

            errors.add(new ExcelUploadError(context.getRow(), 0, this.getPerInfoUseYn(), msg));
         }

        return errors;
    }
    /**
     * @return the sungNm
     */
    public String getSungNm() {
        return sungNm;
    }
    /**
     * @param sungNm the sungNm to set
     */
    public void setSungNm(String sungNm) {
        this.sungNm = sungNm;
    }
    /**
     * @return the cityNm
     */
    public String getCityNm() {
        return cityNm;
    }
    /**
     * @param cityNm the cityNm to set
     */
    public void setCityNm(String cityNm) {
        this.cityNm = cityNm;
    }
    /**
     * @return the distNm
     */
    public String getDistNm() {
        return distNm;
    }
    /**
     * @param distNm the distNm to set
     */
    public void setDistNm(String distNm) {
        this.distNm = distNm;
    }
    /**
     * @return the bhmcYnC
     */
    public String getBhmcYnC() {
        return bhmcYnC;
    }
    /**
     * @param bhmcYnC the bhmcYnC to set
     */
    public void setBhmcYnC(String bhmcYnC) {
        this.bhmcYnC = bhmcYnC;
    }
    /**
     * @return the custTpC
     */
    public String getCustTpC() {
        return custTpC;
    }
    /**
     * @param custTpC the custTpC to set
     */
    public void setCustTpC(String custTpC) {
        this.custTpC = custTpC;
    }
    /**
     * @return the custNmC
     */
    public String getCustNmC() {
        return custNmC;
    }
    /**
     * @param custNmC the custNmC to set
     */
    public void setCustNmC(String custNmC) {
        this.custNmC = custNmC;
    }
    /**
     * @return the custNoC
     */
    public String getCustNoC() {
        return custNoC;
    }
    /**
     * @param custNoC the custNoC to set
     */
    public void setCustNoC(String custNoC) {
        this.custNoC = custNoC;
    }
    /**
     * @return the custCdC
     */
    public String getCustCdC() {
        return custCdC;
    }
    /**
     * @param custCdC the custCdC to set
     */
    public void setCustCdC(String custCdC) {
        this.custCdC = custCdC;
    }
    /**
     * @return the mathDocTpC
     */
    public String getMathDocTpC() {
        return mathDocTpC;
    }
    /**
     * @param mathDocTpC the mathDocTpC to set
     */
    public void setMathDocTpC(String mathDocTpC) {
        this.mathDocTpC = mathDocTpC;
    }
    /**
     * @return the ssnCrnNoC
     */
    public String getSsnCrnNoC() {
        return ssnCrnNoC;
    }
    /**
     * @param ssnCrnNoC the ssnCrnNoC to set
     */
    public void setSsnCrnNoC(String ssnCrnNoC) {
        this.ssnCrnNoC = ssnCrnNoC;
    }
    /**
     * @return the mngScIdC
     */
    public String getMngScIdC() {
        return mngScIdC;
    }
    /**
     * @param mngScIdC the mngScIdC to set
     */
    public void setMngScIdC(String mngScIdC) {
        this.mngScIdC = mngScIdC;
    }
    /**
     * @return the mngTecIdC
     */
    public String getMngTecIdC() {
        return mngTecIdC;
    }
    /**
     * @param mngTecIdC the mngTecIdC to set
     */
    public void setMngTecIdC(String mngTecIdC) {
        this.mngTecIdC = mngTecIdC;
    }
    /**
     * @return the custHoldTpC
     */
    public String getCustHoldTpC() {
        return custHoldTpC;
    }
    /**
     * @param custHoldTpC the custHoldTpC to set
     */
    public void setCustHoldTpC(String custHoldTpC) {
        this.custHoldTpC = custHoldTpC;
    }
    /**
     * @return the custHoldTpDtlC
     */
    public String getCustHoldTpDtlC() {
        return custHoldTpDtlC;
    }
    /**
     * @param custHoldTpDtlC the custHoldTpDtlC to set
     */
    public void setCustHoldTpDtlC(String custHoldTpDtlC) {
        this.custHoldTpDtlC = custHoldTpDtlC;
    }
    /**
     * @return the officeTelNoC
     */
    public String getOfficeTelNoC() {
        return officeTelNoC;
    }
    /**
     * @param officeTelNoC the officeTelNoC to set
     */
    public void setOfficeTelNoC(String officeTelNoC) {
        this.officeTelNoC = officeTelNoC;
    }
    /**
     * @return the officeFaxNoC
     */
    public String getOfficeFaxNoC() {
        return officeFaxNoC;
    }
    /**
     * @param officeFaxNoC the officeFaxNoC to set
     */
    public void setOfficeFaxNoC(String officeFaxNoC) {
        this.officeFaxNoC = officeFaxNoC;
    }
    /**
     * @return the emailNmC
     */
    public String getEmailNmC() {
        return emailNmC;
    }
    /**
     * @param emailNmC the emailNmC to set
     */
    public void setEmailNmC(String emailNmC) {
        this.emailNmC = emailNmC;
    }
    /**
     * @return the bizcondCdC
     */
    public String getBizcondCdC() {
        return bizcondCdC;
    }
    /**
     * @param bizcondCdC the bizcondCdC to set
     */
    public void setBizcondCdC(String bizcondCdC) {
        this.bizcondCdC = bizcondCdC;
    }
    /**
     * @return the cmpScaleContC
     */
    public String getCmpScaleContC() {
        return cmpScaleContC;
    }
    /**
     * @param cmpScaleContC the cmpScaleContC to set
     */
    public void setCmpScaleContC(String cmpScaleContC) {
        this.cmpScaleContC = cmpScaleContC;
    }
    /**
     * @return the cmpTpC
     */
    public String getCmpTpC() {
        return cmpTpC;
    }
    /**
     * @param cmpTpC the cmpTpC to set
     */
    public void setCmpTpC(String cmpTpC) {
        this.cmpTpC = cmpTpC;
    }
    /**
     * @return the siebelRowIdC
     */
    public String getSiebelRowIdC() {
        return siebelRowIdC;
    }
    /**
     * @param siebelRowIdC the siebelRowIdC to set
     */
    public void setSiebelRowIdC(String siebelRowIdC) {
        this.siebelRowIdC = siebelRowIdC;
    }
    /**
     * @return the oldMathDocTp
     */
    public String getOldMathDocTp() {
        return oldMathDocTp;
    }
    /**
     * @param oldMathDocTp the oldMathDocTp to set
     */
    public void setOldMathDocTp(String oldMathDocTp) {
        this.oldMathDocTp = oldMathDocTp;
    }
    /**
     * @return the oldSsnCrnNo
     */
    public String getOldSsnCrnNo() {
        return oldSsnCrnNo;
    }
    /**
     * @param oldSsnCrnNo the oldSsnCrnNo to set
     */
    public void setOldSsnCrnNo(String oldSsnCrnNo) {
        this.oldSsnCrnNo = oldSsnCrnNo;
    }
    /**
     * @return the mngTecNm
     */
    public String getMngTecNm() {
        return mngTecNm;
    }
    /**
     * @param mngTecNm the mngTecNm to set
     */
    public void setMngTecNm(String mngTecNm) {
        this.mngTecNm = mngTecNm;
    }
    /**
     * @return the addrFull
     */
    public String getAddrFull() {
        return addrFull;
    }
    /**
     * @param addrFull the addrFull to set
     */
    public void setAddrFull(String addrFull) {
        this.addrFull = addrFull;
    }
    /**
     * @return the blueMembershipJoinDlrCd
     */
    public String getBlueMembershipJoinDlrCd() {
        return blueMembershipJoinDlrCd;
    }
    /**
     * @param blueMembershipJoinDlrCd the blueMembershipJoinDlrCd to set
     */
    public void setBlueMembershipJoinDlrCd(String blueMembershipJoinDlrCd) {
        this.blueMembershipJoinDlrCd = blueMembershipJoinDlrCd;
    }
    /**
     * @return the blueMembershipJoinDt
     */
    public Date getBlueMembershipJoinDt() {
        return blueMembershipJoinDt;
    }
    /**
     * @param blueMembershipJoinDt the blueMembershipJoinDt to set
     */
    public void setBlueMembershipJoinDt(Date blueMembershipJoinDt) {
        this.blueMembershipJoinDt = blueMembershipJoinDt;
    }
    /**
     * @return the blueMembershipNo
     */
    public String getBlueMembershipNo() {
        return blueMembershipNo;
    }
    /**
     * @param blueMembershipNo the blueMembershipNo to set
     */
    public void setBlueMembershipNo(String blueMembershipNo) {
        this.blueMembershipNo = blueMembershipNo;
    }
    /**
     * @return the logDt
     */
    public Date getLogDt() {
        return logDt;
    }
    /**
     * @param logDt the logDt to set
     */
    public void setLogDt(Date logDt) {
        this.logDt = logDt;
    }
    /**
     * @return the logId
     */
    public String getLogId() {
        return logId;
    }
    /**
     * @param logId the logId to set
     */
    public void setLogId(String logId) {
        this.logId = logId;
    }
    /**
     * @return the carlineNmHC
     */
    public String getCarlineNmHC() {
        return carlineNmHC;
    }
    /**
     * @param carlineNmHC the carlineNmHC to set
     */
    public void setCarlineNmHC(String carlineNmHC) {
        this.carlineNmHC = carlineNmHC;
    }
    /**
     * @return the modelNmHC
     */
    public String getModelNmHC() {
        return modelNmHC;
    }
    /**
     * @param modelNmHC the modelNmHC to set
     */
    public void setModelNmHC(String modelNmHC) {
        this.modelNmHC = modelNmHC;
    }
    /**
     * @return the carRegNoHC
     */
    public String getCarRegNoHC() {
        return carRegNoHC;
    }
    /**
     * @param carRegNoHC the carRegNoHC to set
     */
    public void setCarRegNoHC(String carRegNoHC) {
        this.carRegNoHC = carRegNoHC;
    }
    /**
     * @return the custSaleDtHC
     */
    public Date getCustSaleDtHC() {
        return custSaleDtHC;
    }
    /**
     * @param custSaleDtHC the custSaleDtHC to set
     */
    public void setCustSaleDtHC(Date custSaleDtHC) {
        this.custSaleDtHC = custSaleDtHC;
    }
    /**
     * @return the dlrCdLH
     */
    public String getDlrCdLH() {
        return dlrCdLH;
    }
    /**
     * @param dlrCdLH the dlrCdLH to set
     */
    public void setDlrCdLH(String dlrCdLH) {
        this.dlrCdLH = dlrCdLH;
    }
    /**
     * @return the carRegNoLH
     */
    public String getCarRegNoLH() {
        return carRegNoLH;
    }
    /**
     * @param carRegNoLH the carRegNoLH to set
     */
    public void setCarRegNoLH(String carRegNoLH) {
        this.carRegNoLH = carRegNoLH;
    }
    /**
     * @return the driverNmLH
     */
    public String getDriverNmLH() {
        return driverNmLH;
    }
    /**
     * @param driverNmLH the driverNmLH to set
     */
    public void setDriverNmLH(String driverNmLH) {
        this.driverNmLH = driverNmLH;
    }

    /**
     * @return the gradeCdDMS
     */
    public String getGradeCdDMS() {
        return gradeCdDMS;
    }
    /**
     * @param gradeCdDMS the gradeCdDMS to set
     */
    public void setGradeCdDMS(String gradeCdDMS) {
        this.gradeCdDMS = gradeCdDMS;
    }

    /**
     * @return the joinDtDMS
     */
    public Date getJoinDtDMS() {
        return joinDtDMS;
    }
    /**
     * @param joinDtDMS the joinDtDMS to set
     */
    public void setJoinDtDMS(Date joinDtDMS) {
        this.joinDtDMS = joinDtDMS;
    }
    /**
     * @return the runDistValLH
     */
    public int getRunDistValLH() {
        return runDistValLH;
    }
    /**
     * @param runDistValLH the runDistValLH to set
     */
    public void setRunDistValLH(int runDistValLH) {
        this.runDistValLH = runDistValLH;
    }
    /**
     * @return the usePointDMS
     */
    public int getUsePointDMS() {
        return usePointDMS;
    }
    /**
     * @param usePointDMS the usePointDMS to set
     */
    public void setUsePointDMS(int usePointDMS) {
        this.usePointDMS = usePointDMS;
    }
    /**
     * @return the chargeUsePointDMS
     */
    public int getChargeUsePointDMS() {
        return chargeUsePointDMS;
    }
    /**
     * @param chargeUsePointDMS the chargeUsePointDMS to set
     */
    public void setChargeUsePointDMS(int chargeUsePointDMS) {
        this.chargeUsePointDMS = chargeUsePointDMS;
    }
    /**
     * @return the roDtLH
     */
    public Date getRoDtLH() {
        return roDtLH;
    }
    /**
     * @param roDtLH the roDtLH to set
     */
    public void setRoDtLH(Date roDtLH) {
        this.roDtLH = roDtLH;
    }
    /**
     * @return the befDlrCd
     */
    public String getBefDlrCd() {
        return befDlrCd;
    }
    /**
     * @param befDlrCd the befDlrCd to set
     */
    public void setBefDlrCd(String befDlrCd) {
        this.befDlrCd = befDlrCd;
    }
    /**
     * @return the befCustNo
     */
    public String getBefCustNo() {
        return befCustNo;
    }
    /**
     * @param befCustNo the befCustNo to set
     */
    public void setBefCustNo(String befCustNo) {
        this.befCustNo = befCustNo;
    }
    /**
     * @return the befCustNm
     */
    public String getBefCustNm() {
        return befCustNm;
    }
    /**
     * @param befCustNm the befCustNm to set
     */
    public void setBefCustNm(String befCustNm) {
        this.befCustNm = befCustNm;
    }
    /**
     * @return the befCustCd
     */
    public String getBefCustCd() {
        return befCustCd;
    }
    /**
     * @param befCustCd the befCustCd to set
     */
    public void setBefCustCd(String befCustCd) {
        this.befCustCd = befCustCd;
    }
    /**
     * @return the befSsnCrnNo
     */
    public String getBefSsnCrnNo() {
        return befSsnCrnNo;
    }
    /**
     * @param befSsnCrnNo the befSsnCrnNo to set
     */
    public void setBefSsnCrnNo(String befSsnCrnNo) {
        this.befSsnCrnNo = befSsnCrnNo;
    }
    /**
     * @return the befCustTp
     */
    public String getBefCustTp() {
        return befCustTp;
    }
    /**
     * @param befCustTp the befCustTp to set
     */
    public void setBefCustTp(String befCustTp) {
        this.befCustTp = befCustTp;
    }
    /**
     * @return the befSaleScId
     */
    public String getBefSaleScId() {
        return befSaleScId;
    }
    /**
     * @param befSaleScId the befSaleScId to set
     */
    public void setBefSaleScId(String befSaleScId) {
        this.befSaleScId = befSaleScId;
    }
    /**
     * @return the befMngTecId
     */
    public String getBefMngTecId() {
        return befMngTecId;
    }
    /**
     * @param befMngTecId the befMngTecId to set
     */
    public void setBefMngTecId(String befMngTecId) {
        this.befMngTecId = befMngTecId;
    }
    /**
     * @return the befEmailNm
     */
    public String getBefEmailNm() {
        return befEmailNm;
    }
    /**
     * @param befEmailNm the befEmailNm to set
     */
    public void setBefEmailNm(String befEmailNm) {
        this.befEmailNm = befEmailNm;
    }
    /**
     * @return the befWechatId
     */
    public String getBefWechatId() {
        return befWechatId;
    }
    /**
     * @param befWechatId the befWechatId to set
     */
    public void setBefWechatId(String befWechatId) {
        this.befWechatId = befWechatId;
    }
    /**
     * @return the befQqId
     */
    public String getBefQqId() {
        return befQqId;
    }
    /**
     * @param befQqId the befQqId to set
     */
    public void setBefQqId(String befQqId) {
        this.befQqId = befQqId;
    }
    /**
     * @return the befFacebookId
     */
    public String getBefFacebookId() {
        return befFacebookId;
    }
    /**
     * @param befFacebookId the befFacebookId to set
     */
    public void setBefFacebookId(String befFacebookId) {
        this.befFacebookId = befFacebookId;
    }
    /**
     * @return the befTwitterId
     */
    public String getBefTwitterId() {
        return befTwitterId;
    }
    /**
     * @param befTwitterId the befTwitterId to set
     */
    public void setBefTwitterId(String befTwitterId) {
        this.befTwitterId = befTwitterId;
    }
    /**
     * @return the befPrefCommMthCd
     */
    public String getBefPrefCommMthCd() {
        return befPrefCommMthCd;
    }
    /**
     * @param befPrefCommMthCd the befPrefCommMthCd to set
     */
    public void setBefPrefCommMthCd(String befPrefCommMthCd) {
        this.befPrefCommMthCd = befPrefCommMthCd;
    }
    /**
     * @return the befPrefCommNo
     */
    public String getBefPrefCommNo() {
        return befPrefCommNo;
    }
    /**
     * @param befPrefCommNo the befPrefCommNo to set
     */
    public void setBefPrefCommNo(String befPrefCommNo) {
        this.befPrefCommNo = befPrefCommNo;
    }
    /**
     * @return the befPrefContactMthCd
     */
    public String getBefPrefContactMthCd() {
        return befPrefContactMthCd;
    }
    /**
     * @param befPrefContactMthCd the befPrefContactMthCd to set
     */
    public void setBefPrefContactMthCd(String befPrefContactMthCd) {
        this.befPrefContactMthCd = befPrefContactMthCd;
    }
    /**
     * @return the befPrefContactTimeCd
     */
    public String getBefPrefContactTimeCd() {
        return befPrefContactTimeCd;
    }
    /**
     * @param befPrefContactTimeCd the befPrefContactTimeCd to set
     */
    public void setBefPrefContactTimeCd(String befPrefContactTimeCd) {
        this.befPrefContactTimeCd = befPrefContactTimeCd;
    }
    /**
     * @return the befTelNo
     */
    public String getBefTelNo() {
        return befTelNo;
    }
    /**
     * @param befTelNo the befTelNo to set
     */
    public void setBefTelNo(String befTelNo) {
        this.befTelNo = befTelNo;
    }
    /**
     * @return the befHpNo
     */
    public String getBefHpNo() {
        return befHpNo;
    }
    /**
     * @param befHpNo the befHpNo to set
     */
    public void setBefHpNo(String befHpNo) {
        this.befHpNo = befHpNo;
    }
    /**
     * @return the befHpNoInvldYn
     */
    public String getBefHpNoInvldYn() {
        return befHpNoInvldYn;
    }
    /**
     * @param befHpNoInvldYn the befHpNoInvldYn to set
     */
    public void setBefHpNoInvldYn(String befHpNoInvldYn) {
        this.befHpNoInvldYn = befHpNoInvldYn;
    }
    /**
     * @return the befHpNoAddImpos
     */
    public String getBefHpNoAddImpos() {
        return befHpNoAddImpos;
    }
    /**
     * @param befHpNoAddImpos the befHpNoAddImpos to set
     */
    public void setBefHpNoAddImpos(String befHpNoAddImpos) {
        this.befHpNoAddImpos = befHpNoAddImpos;
    }
    /**
     * @return the befJobCd
     */
    public String getBefJobCd() {
        return befJobCd;
    }
    /**
     * @param befJobCd the befJobCd to set
     */
    public void setBefJobCd(String befJobCd) {
        this.befJobCd = befJobCd;
    }
    /**
     * @return the befDutyCd
     */
    public String getBefDutyCd() {
        return befDutyCd;
    }
    /**
     * @param befDutyCd the befDutyCd to set
     */
    public void setBefDutyCd(String befDutyCd) {
        this.befDutyCd = befDutyCd;
    }
    /**
     * @return the befOfficeNm
     */
    public String getBefOfficeNm() {
        return befOfficeNm;
    }
    /**
     * @param befOfficeNm the befOfficeNm to set
     */
    public void setBefOfficeNm(String befOfficeNm) {
        this.befOfficeNm = befOfficeNm;
    }
    /**
     * @return the befDeptNm
     */
    public String getBefDeptNm() {
        return befDeptNm;
    }
    /**
     * @param befDeptNm the befDeptNm to set
     */
    public void setBefDeptNm(String befDeptNm) {
        this.befDeptNm = befDeptNm;
    }
    /**
     * @return the befOfficeTelNo
     */
    public String getBefOfficeTelNo() {
        return befOfficeTelNo;
    }
    /**
     * @param befOfficeTelNo the befOfficeTelNo to set
     */
    public void setBefOfficeTelNo(String befOfficeTelNo) {
        this.befOfficeTelNo = befOfficeTelNo;
    }
    /**
     * @return the befOfficeFaxNo
     */
    public String getBefOfficeFaxNo() {
        return befOfficeFaxNo;
    }
    /**
     * @param befOfficeFaxNo the befOfficeFaxNo to set
     */
    public void setBefOfficeFaxNo(String befOfficeFaxNo) {
        this.befOfficeFaxNo = befOfficeFaxNo;
    }
    /**
     * @return the befOwnRgstNm
     */
    public String getBefOwnRgstNm() {
        return befOwnRgstNm;
    }
    /**
     * @param befOwnRgstNm the befOwnRgstNm to set
     */
    public void setBefOwnRgstNm(String befOwnRgstNm) {
        this.befOwnRgstNm = befOwnRgstNm;
    }
    /**
     * @return the befCmpTp
     */
    public String getBefCmpTp() {
        return befCmpTp;
    }
    /**
     * @param befCmpTp the befCmpTp to set
     */
    public void setBefCmpTp(String befCmpTp) {
        this.befCmpTp = befCmpTp;
    }
    /**
     * @return the befCmpScaleCont
     */
    public String getBefCmpScaleCont() {
        return befCmpScaleCont;
    }
    /**
     * @param befCmpScaleCont the befCmpScaleCont to set
     */
    public void setBefCmpScaleCont(String befCmpScaleCont) {
        this.befCmpScaleCont = befCmpScaleCont;
    }
    /**
     * @return the befMathDocTp
     */
    public String getBefMathDocTp() {
        return befMathDocTp;
    }
    /**
     * @param befMathDocTp the befMathDocTp to set
     */
    public void setBefMathDocTp(String befMathDocTp) {
        this.befMathDocTp = befMathDocTp;
    }
    /**
     * @return the befOfficeNo
     */
    public String getBefOfficeNo() {
        return befOfficeNo;
    }
    /**
     * @param befOfficeNo the befOfficeNo to set
     */
    public void setBefOfficeNo(String befOfficeNo) {
        this.befOfficeNo = befOfficeNo;
    }
    /**
     * @return the befDmPlaceCd
     */
    public String getBefDmPlaceCd() {
        return befDmPlaceCd;
    }
    /**
     * @param befDmPlaceCd the befDmPlaceCd to set
     */
    public void setBefDmPlaceCd(String befDmPlaceCd) {
        this.befDmPlaceCd = befDmPlaceCd;
    }
    /**
     * @return the befDmNm
     */
    public String getBefDmNm() {
        return befDmNm;
    }
    /**
     * @param befDmNm the befDmNm to set
     */
    public void setBefDmNm(String befDmNm) {
        this.befDmNm = befDmNm;
    }
    /**
     * @return the befSmsReceiveYn
     */
    public String getBefSmsReceiveYn() {
        return befSmsReceiveYn;
    }
    /**
     * @param befSmsReceiveYn the befSmsReceiveYn to set
     */
    public void setBefSmsReceiveYn(String befSmsReceiveYn) {
        this.befSmsReceiveYn = befSmsReceiveYn;
    }
    /**
     * @return the befTelReceiveYn
     */
    public String getBefTelReceiveYn() {
        return befTelReceiveYn;
    }
    /**
     * @param befTelReceiveYn the befTelReceiveYn to set
     */
    public void setBefTelReceiveYn(String befTelReceiveYn) {
        this.befTelReceiveYn = befTelReceiveYn;
    }
    /**
     * @return the befDmReceiveYn
     */
    public String getBefDmReceiveYn() {
        return befDmReceiveYn;
    }
    /**
     * @param befDmReceiveYn the befDmReceiveYn to set
     */
    public void setBefDmReceiveYn(String befDmReceiveYn) {
        this.befDmReceiveYn = befDmReceiveYn;
    }
    /**
     * @return the befEmailReceiveYn
     */
    public String getBefEmailReceiveYn() {
        return befEmailReceiveYn;
    }
    /**
     * @param befEmailReceiveYn the befEmailReceiveYn to set
     */
    public void setBefEmailReceiveYn(String befEmailReceiveYn) {
        this.befEmailReceiveYn = befEmailReceiveYn;
    }
    /**
     * @return the befFaxReceiveYn
     */
    public String getBefFaxReceiveYn() {
        return befFaxReceiveYn;
    }
    /**
     * @param befFaxReceiveYn the befFaxReceiveYn to set
     */
    public void setBefFaxReceiveYn(String befFaxReceiveYn) {
        this.befFaxReceiveYn = befFaxReceiveYn;
    }
    /**
     * @return the befDmReturnYn
     */
    public String getBefDmReturnYn() {
        return befDmReturnYn;
    }
    /**
     * @param befDmReturnYn the befDmReturnYn to set
     */
    public void setBefDmReturnYn(String befDmReturnYn) {
        this.befDmReturnYn = befDmReturnYn;
    }
    /**
     * @return the befEmailReturnYn
     */
    public String getBefEmailReturnYn() {
        return befEmailReturnYn;
    }
    /**
     * @param befEmailReturnYn the befEmailReturnYn to set
     */
    public void setBefEmailReturnYn(String befEmailReturnYn) {
        this.befEmailReturnYn = befEmailReturnYn;
    }
    /**
     * @return the befDisuseYn
     */
    public String getBefDisuseYn() {
        return befDisuseYn;
    }
    /**
     * @param befDisuseYn the befDisuseYn to set
     */
    public void setBefDisuseYn(String befDisuseYn) {
        this.befDisuseYn = befDisuseYn;
    }
    /**
     * @return the befVipYn
     */
    public String getBefVipYn() {
        return befVipYn;
    }
    /**
     * @param befVipYn the befVipYn to set
     */
    public void setBefVipYn(String befVipYn) {
        this.befVipYn = befVipYn;
    }
    /**
     * @return the befChgBuyYn
     */
    public String getBefChgBuyYn() {
        return befChgBuyYn;
    }
    /**
     * @param befChgBuyYn the befChgBuyYn to set
     */
    public void setBefChgBuyYn(String befChgBuyYn) {
        this.befChgBuyYn = befChgBuyYn;
    }
    /**
     * @return the befDisuseCd
     */
    public String getBefDisuseCd() {
        return befDisuseCd;
    }
    /**
     * @param befDisuseCd the befDisuseCd to set
     */
    public void setBefDisuseCd(String befDisuseCd) {
        this.befDisuseCd = befDisuseCd;
    }
    /**
     * @return the befBuyCnt
     */
    public String getBefBuyCnt() {
        return befBuyCnt;
    }
    /**
     * @param befBuyCnt the befBuyCnt to set
     */
    public void setBefBuyCnt(String befBuyCnt) {
        this.befBuyCnt = befBuyCnt;
    }
    /**
     * @return the befCustHoldTp
     */
    public String getBefCustHoldTp() {
        return befCustHoldTp;
    }
    /**
     * @param befCustHoldTp the befCustHoldTp to set
     */
    public void setBefCustHoldTp(String befCustHoldTp) {
        this.befCustHoldTp = befCustHoldTp;
    }
    /**
     * @return the befCustHoldTpDtl
     */
    public String getBefCustHoldTpDtl() {
        return befCustHoldTpDtl;
    }
    /**
     * @param befCustHoldTpDtl the befCustHoldTpDtl to set
     */
    public void setBefCustHoldTpDtl(String befCustHoldTpDtl) {
        this.befCustHoldTpDtl = befCustHoldTpDtl;
    }
    /**
     * @return the befSexCd
     */
    public String getBefSexCd() {
        return befSexCd;
    }
    /**
     * @param befSexCd the befSexCd to set
     */
    public void setBefSexCd(String befSexCd) {
        this.befSexCd = befSexCd;
    }
    /**
     * @return the befBirthDt
     */
    public String getBefBirthDt() {
        return befBirthDt;
    }
    /**
     * @param befBirthDt the befBirthDt to set
     */
    public void setBefBirthDt(String befBirthDt) {
        this.befBirthDt = befBirthDt;
    }
    /**
     * @return the befMarryDt
     */
    public Date getBefMarryDt() {
        return befMarryDt;
    }
    /**
     * @param befMarryDt the befMarryDt to set
     */
    public void setBefMarryDt(Date befMarryDt) {
        this.befMarryDt = befMarryDt;
    }
    /**
     * @return the befMarryCd
     */
    public String getBefMarryCd() {
        return befMarryCd;
    }
    /**
     * @param befMarryCd the befMarryCd to set
     */
    public void setBefMarryCd(String befMarryCd) {
        this.befMarryCd = befMarryCd;
    }
    /**
     * @return the befBefMngScId
     */
    public String getBefBefMngScId() {
        return befBefMngScId;
    }
    /**
     * @param befBefMngScId the befBefMngScId to set
     */
    public void setBefBefMngScId(String befBefMngScId) {
        this.befBefMngScId = befBefMngScId;
    }
    /**
     * @return the befPerInfoAgreeYn
     */
    public String getBefPerInfoAgreeYn() {
        return befPerInfoAgreeYn;
    }
    /**
     * @param befPerInfoAgreeYn the befPerInfoAgreeYn to set
     */
    public void setBefPerInfoAgreeYn(String befPerInfoAgreeYn) {
        this.befPerInfoAgreeYn = befPerInfoAgreeYn;
    }
    /**
     * @return the befPerInfoUseYn
     */
    public String getBefPerInfoUseYn() {
        return befPerInfoUseYn;
    }
    /**
     * @param befPerInfoUseYn the befPerInfoUseYn to set
     */
    public void setBefPerInfoUseYn(String befPerInfoUseYn) {
        this.befPerInfoUseYn = befPerInfoUseYn;
    }
    /**
     * @return the befAcCareerCd
     */
    public String getBefAcCareerCd() {
        return befAcCareerCd;
    }
    /**
     * @param befAcCareerCd the befAcCareerCd to set
     */
    public void setBefAcCareerCd(String befAcCareerCd) {
        this.befAcCareerCd = befAcCareerCd;
    }
    /**
     * @return the befIncomeLvlCd
     */
    public String getBefIncomeLvlCd() {
        return befIncomeLvlCd;
    }
    /**
     * @param befIncomeLvlCd the befIncomeLvlCd to set
     */
    public void setBefIncomeLvlCd(String befIncomeLvlCd) {
        this.befIncomeLvlCd = befIncomeLvlCd;
    }
    /**
     * @return the befAgeDtl
     */
    public String getBefAgeDtl() {
        return befAgeDtl;
    }
    /**
     * @param befAgeDtl the befAgeDtl to set
     */
    public void setBefAgeDtl(String befAgeDtl) {
        this.befAgeDtl = befAgeDtl;
    }
    /**
     * @return the befChinaZodiacSignCd
     */
    public String getBefChinaZodiacSignCd() {
        return befChinaZodiacSignCd;
    }
    /**
     * @param befChinaZodiacSignCd the befChinaZodiacSignCd to set
     */
    public void setBefChinaZodiacSignCd(String befChinaZodiacSignCd) {
        this.befChinaZodiacSignCd = befChinaZodiacSignCd;
    }
    /**
     * @return the befZodiacSignCd
     */
    public String getBefZodiacSignCd() {
        return befZodiacSignCd;
    }
    /**
     * @param befZodiacSignCd the befZodiacSignCd to set
     */
    public void setBefZodiacSignCd(String befZodiacSignCd) {
        this.befZodiacSignCd = befZodiacSignCd;
    }
    /**
     * @return the befChildrenCnt
     */
    public String getBefChildrenCnt() {
        return befChildrenCnt;
    }
    /**
     * @param befChildrenCnt the befChildrenCnt to set
     */
    public void setBefChildrenCnt(String befChildrenCnt) {
        this.befChildrenCnt = befChildrenCnt;
    }
    /**
     * @return the befBloodTp
     */
    public String getBefBloodTp() {
        return befBloodTp;
    }
    /**
     * @param befBloodTp the befBloodTp to set
     */
    public void setBefBloodTp(String befBloodTp) {
        this.befBloodTp = befBloodTp;
    }
    /**
     * @return the befAgeCd
     */
    public String getBefAgeCd() {
        return befAgeCd;
    }
    /**
     * @param befAgeCd the befAgeCd to set
     */
    public void setBefAgeCd(String befAgeCd) {
        this.befAgeCd = befAgeCd;
    }
    /**
     * @return the befPurcCarBrandCd
     */
    public String getBefPurcCarBrandCd() {
        return befPurcCarBrandCd;
    }
    /**
     * @param befPurcCarBrandCd the befPurcCarBrandCd to set
     */
    public void setBefPurcCarBrandCd(String befPurcCarBrandCd) {
        this.befPurcCarBrandCd = befPurcCarBrandCd;
    }
    /**
     * @return the befPurcCarModelNm
     */
    public String getBefPurcCarModelNm() {
        return befPurcCarModelNm;
    }
    /**
     * @param befPurcCarModelNm the befPurcCarModelNm to set
     */
    public void setBefPurcCarModelNm(String befPurcCarModelNm) {
        this.befPurcCarModelNm = befPurcCarModelNm;
    }
    /**
     * @return the befMergeYn
     */
    public String getBefMergeYn() {
        return befMergeYn;
    }
    /**
     * @param befMergeYn the befMergeYn to set
     */
    public void setBefMergeYn(String befMergeYn) {
        this.befMergeYn = befMergeYn;
    }
    /**
     * @return the befDelYn
     */
    public String getBefDelYn() {
        return befDelYn;
    }
    /**
     * @param befDelYn the befDelYn to set
     */
    public void setBefDelYn(String befDelYn) {
        this.befDelYn = befDelYn;
    }
    /**
     * @return the befBhmcYn
     */
    public String getBefBhmcYn() {
        return befBhmcYn;
    }
    /**
     * @param befBhmcYn the befBhmcYn to set
     */
    public void setBefBhmcYn(String befBhmcYn) {
        this.befBhmcYn = befBhmcYn;
    }
    /**
     * @return the befSiebelRowId
     */
    public String getBefSiebelRowId() {
        return befSiebelRowId;
    }
    /**
     * @param befSiebelRowId the befSiebelRowId to set
     */
    public void setBefSiebelRowId(String befSiebelRowId) {
        this.befSiebelRowId = befSiebelRowId;
    }
    /**
     * @return the befRegUsrId
     */
    public String getBefRegUsrId() {
        return befRegUsrId;
    }
    /**
     * @param befRegUsrId the befRegUsrId to set
     */
    public void setBefRegUsrId(String befRegUsrId) {
        this.befRegUsrId = befRegUsrId;
    }
    /**
     * @return the befRegDt
     */
    public Date getBefRegDt() {
        return befRegDt;
    }
    /**
     * @param befRegDt the befRegDt to set
     */
    public void setBefRegDt(Date befRegDt) {
        this.befRegDt = befRegDt;
    }
    /**
     * @return the befUpdtUsrId
     */
    public String getBefUpdtUsrId() {
        return befUpdtUsrId;
    }
    /**
     * @param befUpdtUsrId the befUpdtUsrId to set
     */
    public void setBefUpdtUsrId(String befUpdtUsrId) {
        this.befUpdtUsrId = befUpdtUsrId;
    }
    /**
     * @return the befUpdtDt
     */
    public Date getBefUpdtDt() {
        return befUpdtDt;
    }
    /**
     * @param befUpdtDt the befUpdtDt to set
     */
    public void setBefUpdtDt(Date befUpdtDt) {
        this.befUpdtDt = befUpdtDt;
    }
    /**
     * @return the befDocId
     */
    public String getBefDocId() {
        return befDocId;
    }
    /**
     * @param befDocId the befDocId to set
     */
    public void setBefDocId(String befDocId) {
        this.befDocId = befDocId;
    }
    /**
     * @return the befBizcondCd
     */
    public String getBefBizcondCd() {
        return befBizcondCd;
    }
    /**
     * @param befBizcondCd the befBizcondCd to set
     */
    public void setBefBizcondCd(String befBizcondCd) {
        this.befBizcondCd = befBizcondCd;
    }
    /**
     * @return the befBlueMembershipNo
     */
    public String getBefBlueMembershipNo() {
        return befBlueMembershipNo;
    }
    /**
     * @param befBlueMembershipNo the befBlueMembershipNo to set
     */
    public void setBefBlueMembershipNo(String befBlueMembershipNo) {
        this.befBlueMembershipNo = befBlueMembershipNo;
    }
    /**
     * @return the befBlueMembershipJoinDt
     */
    public Date getBefBlueMembershipJoinDt() {
        return befBlueMembershipJoinDt;
    }
    /**
     * @param befBlueMembershipJoinDt the befBlueMembershipJoinDt to set
     */
    public void setBefBlueMembershipJoinDt(Date befBlueMembershipJoinDt) {
        this.befBlueMembershipJoinDt = befBlueMembershipJoinDt;
    }
    /**
     * @return the batYn
     */
    public String getBatYn() {
        return batYn;
    }
    /**
     * @param batYn the batYn to set
     */
    public void setBatYn(String batYn) {
        this.batYn = batYn;
    }
    /**
     * @return the ifresult
     */
    public String getIfresult() {
        return ifresult;
    }
    /**
     * @param ifresult the ifresult to set
     */
    public void setIfresult(String ifresult) {
        this.ifresult = ifresult;
    }
    /**
     * @return the iffailmsg
     */
    public String getIffailmsg() {
        return iffailmsg;
    }
    /**
     * @param iffailmsg the iffailmsg to set
     */
    public void setIffailmsg(String iffailmsg) {
        this.iffailmsg = iffailmsg;
    }
    /**
     * @return the createdate
     */
    public String getCreatedate() {
        return createdate;
    }
    /**
     * @param createdate the createdate to set
     */
    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }
    /**
     * @return the updatedate
     */
    public String getUpdatedate() {
        return updatedate;
    }
    /**
     * @param updatedate the updatedate to set
     */
    public void setUpdatedate(String updatedate) {
        this.updatedate = updatedate;
    }
    /**
     * @return the ifRegDt
     */
    public Date getIfRegDt() {
        return ifRegDt;
    }
    /**
     * @param ifRegDt the ifRegDt to set
     */
    public void setIfRegDt(Date ifRegDt) {
        this.ifRegDt = ifRegDt;
    }
    /**
     * @return the batStatCd
     */
    public String getBatStatCd() {
        return batStatCd;
    }
    /**
     * @param batStatCd the batStatCd to set
     */
    public void setBatStatCd(String batStatCd) {
        this.batStatCd = batStatCd;
    }
    /**
     * @return the batRsltDt
     */
    public Date getBatRsltDt() {
        return batRsltDt;
    }
    /**
     * @param batRsltDt the batRsltDt to set
     */
    public void setBatRsltDt(Date batRsltDt) {
        this.batRsltDt = batRsltDt;
    }
    /**
     * @return the batMesgCont
     */
    public String getBatMesgCont() {
        return batMesgCont;
    }
    /**
     * @param batMesgCont the batMesgCont to set
     */
    public void setBatMesgCont(String batMesgCont) {
        this.batMesgCont = batMesgCont;
    }

}
