package com.smpro.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;

@Slf4j
public class Const {
	/** MertKey **/
	public final static String MERT_KEY = "8b704ceee7a39edcba8f6370a521e5c7";
	//public final static String SHOP_ID = "kjmp2014";

	/** 경고창만 뜨는 페이지 */
	public final static String ALERT_PAGE = "/_proc/alert.jsp";
	/** 경고창이 뜬 후에 부모창을 리다이렉트 시키는 페이지 */
	public final static String REDIRECT_PAGE = "/_proc/parent_redirect.jsp";
	/** 경고창이 뜬 후에 뒤로 되돌아가는 페이지 */
	public final static String BACK_PAGE = "/_proc/back_page.jsp";
	/** ajax호출용 빈 페이지 */
	public final static String BLANK_PAGE = "/_proc/blank.jsp";
	/** ajax호출 후에 메시지를 전달하는 페이지 */
	public final static String AJAX_PAGE = "/_proc/ajax_message.jsp";

	/** 이미지 매직으로 변환하는 이미지 사이즈들 */
	public static final int[] ITEM_IMAGE_SIZE = { 60, 110, 170 };
	/** 이미지 매직 경로 */
	public static final String IMAGE_MAGICK_PATH;
	/** 장바구니와 주문 최고 수량 */
	public static final int MAX_ORDER_COUNT = 20;

	/** 주문확인 */
	public static final String ORDER_CONFIRM_REQUEST_CODE = "20";
	/** 배송중 */
	public static final String DELIVERY_REQUEST_CODE = "30";
	/** 반품수령 */
	public static final String RECEIVE_REQUEST_CODE = "71";

	public static final String ITEM_IMAGE_PATH = "http://kookje.gogosoft.kr/upload/item/item_img/";

	/** static resource path */
	public static final String UPLOAD_PATH;
	public static final String UPLOAD_REAL_PATH;
	public static final String WEBAPP_HOME_REAL_PATH;

	// 웹서비스 위치
	public static final String LOCATION;
	// 웹서비스 OS
	public static final String OS;
	public static final String TEMP_DIR;

	//배송료
	public static final int DELI_COST = 3300;
	public static final int MIN_FREE_ORDER_PRICE = 50000;

	/* 도메인 */
	public static final String DOMAIN;


//	/** 대리점 정보 **/
////국제몰
//	public static final String MALL_REAL_UPLOAD = "/kookje/web/upload";
//	public final static String MALL_MAIL = "kukjea@empal.com";
//	public static final String MALL_WEBAPP_HOME_REAL_PATH = "/kookje/apps/instance1/webapps/ROOT";
//	public static final String MALL_DOMAIN = "http://kukjemall.com/";
//	public static final String MALL_NAME="국제몰";
//	public static final String CMM_CS = "070-4693-1971";
//	public static final String TAX_CS = "";
//	public static final String FAX ="02-3280-8007";
//	public static final String BANK_NAME = "KB국민은행";
//	public static final String BANK_ACOUNT = "029301-04-206349";
//	public static final String BANK_OWN = "최태봉";
//	public static final String BANK_COMP = "국제메디팜";
//	public static final String ADD_1 = "(우) 06949, 서울시 동작구 상도로 15길 83 (상도동, 영우사빌딩제비1호) 국제메디팜 대표이사 최태봉";
//	public static final String ADD_2 = "사업자 등록번호 : 108-20-93951 | 통신판매업신고 : 제2016-서울동작-0254호";
//	public static final String ADD_3 = "개인정보보호 책임자 최태봉 | 전화 : 070-4693-1971 | FAX : 02-3280-8007 | kukjea@empal.com";
//	public static final String ACOUNT = "무통장입금 계좌 [ KB국민은행:029301-04-206349  |  예금주: 국제메디팜 최태봉 ]";
//
//	//ㅈㅓㅇ인몰
//	public static final String MALL_REAL_UPLOAD = "/usr/local/tomcat/webapps/ROOT/upload";
//	public static final String MALL_WEBAPP_HOME_REAL_PATH = "/usr/local/tomcat/webapps/ROOT";
//	public final static String MALL_MAIL = "kukjea@empal.com";
//	public static final String MALL_DOMAIN = "http://junginmedi.com/";
//	public static final String MALL_NAME="정인몰";
//	public static final String CMM_CS = "070-4693-1971";
//	public static final String TAX_CS = "";
//	public static final String FAX ="02-3280-8007";
//	public static final String BANK_NAME = "KB국민은행";
//	public static final String BANK_ACOUNT = "029301-04-206349";
//	public static final String BANK_OWN = "최태봉";
//	public static final String BANK_COMP = "국제메디팜";
//	public static final String ADD_1 = "(우) 06949, 서울시 동작구 상도로 15길 83 (상도동, 영우사빌딩제비1호) 국제메디팜 대표이사 최태봉";
//	public static final String ADD_2 = "사업자 등록번호 : 108-20-93951 | 통신판매업신고 : 제2016-서울동작-0254호";
//	public static final String ADD_3 = "개인정보보호 책임자 최태봉 | 전화 : 070-4693-1971 | FAX : 02-3280-8007 | kukjea@empal.com";
//	public static final String ACOUNT = "무통장입금 계좌 [ KB국민은행:029301-04-206349  |  예금주: 국제메디팜 최태봉 ]";
//
////도린몰
//	public static final String MALL_REAL_UPLOAD = "/usr/local/tomcat/webapps/ROOT/upload";
//	public static final String MALL_WEBAPP_HOME_REAL_PATH = "/usr/local/tomcat/webapps/ROOT";
//	public static final String MALL_DOMAIN = "http://dorinmall.com/";
//	public final static String MALL_MAIL = "edorin@naver.com";
//	public static final String MALL_NAME="도린몰";
//	public static final String CMM_CS = "070-4693-1971";
//	public static final String TAX_CS = "02-923-1441";
//	public static final String FAX ="02-924-1441";
//	public static final String BANK_NAME = "KB국민은행";
//	public static final String BANK_ACOUNT = "221737-04-004438";
//	public static final String BANK_OWN = "윤성식(도린)";
//	public static final String BANK_COMP = "";
//	public static final String ADD_1 = "우) 03745, 서울특별시 서대문구 독립문로14길 66, 상가동 1층 109호(냉천동동부센트레빌아파트) 도린 대표이사 윤성식";
//	public static final String ADD_2 = "사업자 등록번호 : 124-01-70774 | 통신판매업신고 : 제2015-서울서대문-0335호";
//	public static final String ADD_3 = "개인정보보호 책임자 윤성식 | 전화 : 02-923-1441 | FAX : 02-924-1441 | edorin@naver.com";
//	public static final String ACOUNT = "무통장입금 계좌 [ KB국민은행:221737-04-004438  |  예금주: 윤성식(도린) ]";

////오성
//	public static final String MALL_REAL_UPLOAD = "/usr/local/tomcat/webapps/ROOT/upload";
//	public static final String MALL_WEBAPP_HOME_REAL_PATH = "/usr/local/tomcat/webapps/ROOT";
//	public final static String MALL_MAIL = "oesmall@naver.com";
//	public static final String MALL_DOMAIN = "http://oesmall.com/";
//	public static final String MALL_NAME="오성몰";
//	public static final String CMM_CS = "070-4693-1971";
//	public static final String TAX_CS = "031-955-5300";
//	public static final String FAX ="031-955-5301";
//	public static final String BANK_NAME = "KB국민은행";
//	public static final String BANK_ACOUNT = "469901-04-311353";
//	public static final String BANK_OWN = "송영우(오성)";
//	public static final String BANK_COMP = "";
//	public static final String ADD_1 = "(우) 10402, 경기도 고양시 일산동구 정발산로 43-20, 301호 (장항동, 센트럴프라자) 오성 대표이사 송영우";
//	public static final String ADD_2 = "사업자 등록번호 : 469-42-00382 | 통신판매업신고 : 제2018-고양일산동-0069호";
//	public static final String ADD_3 = "개인정보보호 책임자 송영우 | 전화 : 031-955-5300 | FAX : 031-955-5301 | oesmall@naver.com";
//	public static final String ACOUNT = "무통장입금 계좌 [ KB국민은행:469901-04-311353  |  예금주: 송영우(오성)]";
//
////세인몰
	public static final String MALL_REAL_UPLOAD = "/usr/local/tomcat/webapps/ROOT/upload";
	public static final String MALL_WEBAPP_HOME_REAL_PATH = "/usr/local/tomcat/webapps/ROOT";
	public static final String MALL_DOMAIN = "http://seinemall.com/";
	public final static String MALL_MAIL = "myfafnir@naver.com";
	public static final String MALL_NAME="세인몰";
	public static final String CMM_CS = "070-4693-1971";
	public static final String TAX_CS = "031-791-3064";
	public static final String FAX ="031-791-3069";
	public static final String BANK_NAME = "신한은행";
	public static final String BANK_ACOUNT = "140-012-696185";
	public static final String BANK_OWN = "최영규";
	public static final String BANK_COMP = "(주)세인바이오메디칼";
	public static final String ADD_1 = "(우) 13024, 경기도 하남시 검단로 62-16, 2호 (하산곡동) (주)세인바이오메디칼 대표이사 최영규";
	public static final String ADD_2 = "사업자 등록번호 : 212-81-70001 | 통신판매업신고 : 제2019-경기하남-0696호호";
	public static final String ADD_3 = "개인정보보호 책임자 최영규 | 전화 : 031-791-3064 | FAX : 031-791-3069 | myfafnir@naver.com";
	public static final String ACOUNT = "무통장입금 계좌 [ 신한은행:140-012-696185  |  예금주: (주)세인바이오메디칼 최영규 ]";
//

////피씨바이오
//	public static final String MALL_REAL_UPLOAD = "/usr/local/tomcat/webapps/ROOT/upload";
//	public static final String MALL_WEBAPP_HOME_REAL_PATH = "/usr/local/tomcat/webapps/ROOT";
//	public static final String MALL_DOMAIN = "http://pcbiomall.com/";
//	public static final String MALL_NAME="피씨바이오몰";
//	public final static String MALL_MAIL = "pacico@hanmail.net";
//	public static final String CMM_CS = "070-4693-1971";
//	public static final String TAX_CS = "02-2274-4335";
//	public static final String FAX ="02-2277-7251";
//	public static final String BANK_NAME = " 우리은행";
//	public static final String BANK_ACOUNT = "1005-103-742433";
//	public static final String BANK_OWN = "피씨바이오";
//	public static final String BANK_COMP = "";
//	public static final String ADD_1 = "(우) 03193, 서울특별시 종로구 종로22길 6 2,3,4층 (장사동) 피씨바이오 대표이사 한정숙";
//	public static final String ADD_2 = "사업자 등록번호 : 469-42-00169 | 통신판매업신고 : 제000-xxxx-0000호";
//	public static final String ADD_3 = "개인정보보호 책임자 한정숙 | 전화 : 02-2274-4335 | FAX : 02-2277-7251 | pacico@hanmail.net";
//	public static final String ACOUNT = "무통장입금 계좌 [ 우리은행:1005-103-742433  |  예금주: 피씨 바이오 ]";
//

////한강
//	public static final String MALL_REAL_UPLOAD = "/usr/local/tomcat/webapps/ROOT/upload";
//	public static final String MALL_WEBAPP_HOME_REAL_PATH = "/usr/local/tomcat/webapps/ROOT";
//	public static final String MALL_DOMAIN = "http://hangangmall.com/";
//	public static final String MALL_NAME="한강메디칼";
//	public final static String MALL_MAIL = "hankangmedical@naver.com";
//	public static final String CMM_CS = "070-4693-1971";
//	public static final String TAX_CS = "032-512-6240";
//	public static final String FAX ="032-512-6241";
//	public static final String BANK_NAME = " 기업은행";
//	public static final String BANK_ACOUNT = "123-161167-04-014";
//	public static final String BANK_OWN = "주식회사한강메디칼";
//	public static final String BANK_COMP = "";
//	public static final String ADD_1 = "(우) 13024, 인천광역시 부평구 마장로460번길 8,4층 (청천동) 주식회사 한강메디칼 대표이사 김동석";
//	public static final String ADD_2 = "사업자 등록번호 : 119-87-08229 | 통신판매업신고 : 제2019-인천부평-1511호";
//	public static final String ADD_3 = "개인정보보호 책임자 김동석 | 전화 : 032-512-6240 | FAX : 032-512-6241 | hankangmedical@naver.com";
//	public static final String ACOUNT = "무통장입금 계좌 [ 기업은행:123-161167-04-014  |  예금주: 주식회사한강메디칼 ]";
//

	static {
		// VM OPTION에 -DdetailedDebugMode=true로 설정하면 DEBUG모드로 진입한다
		if ("true".equalsIgnoreCase(System.getProperties().getProperty("detailedDebugMode"))) {
			IMAGE_MAGICK_PATH = "convert";
			UPLOAD_PATH = "/upload";
			UPLOAD_REAL_PATH =      "/Users/aubergine/Documents/gogo/kukje_2016/out/artifacts/kookje/exploded/kookje-1.0-SNAPSHOT.war/upload";
			WEBAPP_HOME_REAL_PATH = "/Users/aubergine/Documents/gogo/kookje_2016/out/artifacts/kookje/exploded/kookje-1.0-SNAPSHOT.war";
			TEMP_DIR = "/tmp";
			DOMAIN = "localhost";
			LOCATION = "test";
			OS = "linux";
		}
		else if ("win".equalsIgnoreCase(System.getProperties().getProperty("detailedDebugMode"))) {
			IMAGE_MAGICK_PATH = "convert";
			UPLOAD_PATH = "/upload";
			UPLOAD_REAL_PATH =      "C:\\Users\\USER\\IdeaProjects\\kookjea\\out\\artifacts\\kookje\\exploded\\kookje-1.0-SNAPSHOT.war\\upload";
			WEBAPP_HOME_REAL_PATH = "C:\\Users\\USER\\IdeaProjects\\kookjea\\out\\artifacts\\kookje\\exploded\\kookje-1.0-SNAPSHOT.war";
			TEMP_DIR = "c:\\tmp";
			DOMAIN = "localhost";
			LOCATION = "test";
			OS = "windows";
		}
		else {
			// PRODUCTION MODE
			IMAGE_MAGICK_PATH = "convert";
			UPLOAD_PATH = "/upload";
			TEMP_DIR = "/tmp";
			DOMAIN = MALL_DOMAIN;
			UPLOAD_REAL_PATH = MALL_REAL_UPLOAD;
			WEBAPP_HOME_REAL_PATH = MALL_WEBAPP_HOME_REAL_PATH;
			LOCATION = "service";
			OS = "linux";
		}
	}

	/** Aria 암호화 키 (반드시 32byte가 되어야만 한다) */
	public final static byte[] ARIA_KEY = { (byte) -20, (byte) -105, (byte) -112, (byte) -20, (byte) -118, (byte) -92, (byte) -20, (byte) -105, (byte) -96, (byte) -19, (byte) -108, (byte) -124, (byte) -21, (byte) -95, (byte) -100, (byte) 32, (byte) -21, (byte) -77, (byte) -76, (byte) -20, (byte) -107, (byte) -120, (byte) 32, (byte) -20, (byte) -105, (byte) -112, (byte) -20, (byte) -118, (byte) -92, (byte) -21, (byte) -117, (byte) -91 };
}
