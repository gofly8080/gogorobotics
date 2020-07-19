<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<!--[if IE 7]><html class="ie ie7" lang="ko"><![endif]-->
<!--[if IE 8]><html class="ie ie8" lang="ko"><![endif]-->
<!--[if !(IE 7) | !(IE 8) ]><!--><html lang="ko"><!--<![endif]-->
<head>
    <%@ include file="/WEB-INF/jsp/shop/include/head.jsp" %>
</head>
<body class="${mallVo.id}">

<div id="skip_navi">
    <p><a href="#contents">본문바로가기</a></p>
</div>

<div id="wrap" class="sub">
    <%@ include file="/WEB-INF/jsp/shop/include/header.jsp" %>
    <div id="container">
        <div class="layout_inner sub_container">
            <%@ include file="/WEB-INF/jsp/shop/include/cscenter_left.jsp" %>
            <div id="contents">
                <%@ include file="/WEB-INF/jsp/shop/include/cscenter_anchor.jsp" %>
                <div class="sub_cont">

                    <div class="privacy_intro">
                        <dl>
                            <dt>${mallname}닷컴 이용약관</dt>
                            <dd></dd>
                        </dl>
                        <p>회사의 이용약관은 다음과 같은 내용을 담고 있습니다.</p>
                        <ol>
                            <li><a href="#policy1">제1조 (목적)</a></li>
                            <li><a href="#policy2">제2조 (정의)</a></li>
                            <li><a href="#policy3">제3조 (약관의 게시와 개정)</a></li>
                            <li><a href="#policy4">제4조 (해석)</a></li>
                            <li><a href="#policy5">제5조 (개인정보보호 의무)</a></li>
                            <li><a href="#policy6">제6조 (이용계약 체결)</a></li>
                            <li><a href="#policy7">제7조 (회원정보의 변경)</a></li>
                            <li><a href="#policy8">제8조 (“회원”의 “아이디” 및 “비밀번호”의 관리에 대한 의무)</a></li>
                            <li><a href="#policy9">제9조 (“회원”에 대한 통지)</a></li>
                            <li><a href="#policy10">제10조 ("회사"의 의무)</a></li>
                            <li><a href="#policy11">제11조 ("회원"의 의무)</a></li>
                            <li><a href="#policy12">제12조 ("서비스"의 제공 등)</a></li>
                            <li><a href="#policy13">제13조 ("서비스"의 변경)</a></li>
                            <li><a href="#policy14">제14조 (거래)</a></li>
                            <li><a href="#policy15">제15조 (배송)</a></li>
                            <li><a href="#policy16">제16조 (환급, 반품)</a></li>
                            <li><a href="#policy17">제17조 (정보의 제공 및 광고의 게재)</a></li>
                            <li><a href="#policy18">제18조 ("게시물"의 저작권)</a></li>
                            <li><a href="#policy19">제19조 ("게시물"의 관리)</a></li>
                            <li><a href="#policy20">제20조 (포인트)</a></li>
                            <li><a href="#policy21">제21조 (회원탈퇴)</a></li>
                            <li><a href="#policy22">제22조 (이용제한 등)</a></li>
                            <li><a href="#policy23">제23조 (책임제한)</a></li>
                            <li><a href="#policy24">제24조 (준거법 및 재판관할)</a></li>
                            <li><a href="#policy25">부칙</a></li>
                        </ol>
                    </div>
                    <div class="privacy_cont">
                        <h4 id="policy1">제 1 조 (목적)</h4>
                        <div class="cont">
                            <p>이 약관은 ${mallname}(이하 "회사")이 제공하는 온라인 서비스 ${mallname}(이하 “몰”)의 이용과 관련하여 회사와 회원과의 권리, <br />의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
                        </div>

                        <h4 id="policy2">제 2 조 (정의)</h4>
                        <div class="cont">
                            <p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다</p>
                            <ol>
                                <li>①"몰"이라 함은 컴퓨터를 이용하여 온라인으로 상품의 거래를 회원에게 제공하기 위하여 “회사”가 제공하는 실시간 전자상거래 시스템과 <br />그 운영을 위한 웹사이트를 말합니다.</li>

                                <li>②“서비스”라 함은 “몰”에서 제공되는 상거래 시스템 및 관련한 제반 시스템을 말합니다.</li>

                                <li>③"회원"이라 함은 “회사”가 운영하는 “몰”에 접속하여 가입절차에 따라 약관 동의 및 회원등록을 체결 한 개인 또는 사업자를 말합니다.</li>

                                <li>④"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.</li>

                                <li>⑤"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.</li>

                                <li>⑥"포인트"라 함은 “몰”의 서비스를 효율적으로 이용하기 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.</li>

                                <li>⑦"게시물"이라 함은 "회원"이 “서비스”상에 게시한 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.</li>

                                <li>⑧“공급사”라 함은 “몰”에서 제공하는 서비스를 통해 상품을 등록하여 “회원”과 거래할 수 있는 권한이 있는 회원을 의미합니다.</li>

                                <li>⑨“상품”이라 함은 “공급사”가 “몰”을 통해 판매하는 재화등 일체를 의미합니다.</li>

                                <li>⑩“대리점/대리점시스템”이라 함은 “몰”의 시스템을 이용하여 별도 계약된 회원이 이용할 수 있는 시스템을 의미합니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy3">제 3 조 (약관의 게시와 개정)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회사"는 이 약관의 내용을 "회원"이 쉽게 알 수 있도록 “몰”초기 화면에 게시합니다.</li>
                                <li>②"회사"는 "약관의 규제에 관한 법률", "정보통신망이용촉진및정보보호등에관한법률(이하 "정보통신망법")" 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</li>
                                <li>③"회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 30일 전부터 적용일자 전일까지 공지합니다.<br />
                                    다만, "회원"에게 불리한 약관의 개정의 경우에는 공지 외에 일정기간 서비스내 전자우편, 전자쪽지, 로그인시 동의창 등의 전자적 수단을 통해 따로 명확히 통지하도록 합니다.</li>
                                <li>④"회사"가 전항에 따라 개정약관을 공지 또는 통지하면서 회원에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 "회원"이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다.</li>
                                <li>⑤회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 "회원"은 이용계약을 해지할 수 있습니다.<br /> 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 "회사"는 이용계약을 해지할 수 있습니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy4">제 4 조 (해석)</h4>
                        <div class="cont">
                            <ol>
                                <li>①이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 정부가 제정한 관계법령 또는 상관례에 따릅니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy5">제 5 조 (개인정보보호 의무)</h4>
                        <div class="cont">
                           <p>"회사"는 "정보통신망법" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를 보호하기 위해 노력합니다. <br />
                               개인정보의 보호 및 사용에 대해서는 관련법 및 "회사"의 개인정보취급방침이 적용됩니다. <br />
                               다만, "회사"의 공식 사이트 이외의 링크된 사이트에서는 "회사"의 개인정보취급방침이 적용되지 않습니다.</p>
                        </div>

                        <h4 id="policy6">제 6 조 (이용계약 체결)</h4>
                        <div class="cont">
                            <ol>
                                <li>①이용계약은 "회원"이 되고자 하는 자(이하 "가입신청자")가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 "회사"가 이러한 신청에 대하여 승낙함으로써 체결됩니다.</li>
                                <li>②"회사"는 "가입신청자"의 신청에 대하여 ‘"서비스" 이용 승낙’을 원칙으로 합니다. 다만, "회사"는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.
                                    <ol>
                                        <li>1.가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 단 "회사"의 회원 재가입 승낙을 얻은 경우에는 예외로 함.</li>
                                        <li>2.실명이 아니거나 타인의 명의를 이용한 경우</li>
                                        <li>3.허위의 정보를 기재하거나, "회사"가 제시하는 내용을 기재하지 않은 경우</li>
                                        <li>4.14세 미만 아동이 법정대리인(부모 등)의 동의를 얻지 아니한 경우</li>
                                        <li>5.이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우</li>
                                    </ol>
                                </li>
                                <li>③제1항에 따른 신청에 있어 "회사"는 "회원"의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.</li>
                                <li>④"회사"는 서비스관련설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.</li>
                                <li>⑤제2항과 제4항에 따라 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, "회사"는 원칙적으로 이를 가입신청자에게 알리도록 합니다.</li>
                                <li>⑥이용계약의 성립 시기는 "회사"가 가입완료를 신청절차 상에서 표시한 시점으로 합니다.</li>
                                <li>⑦"회사"는 "회원"에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.</li>
                                <li>⑧"회사"는 "회원"에 대하여 "영화및비디오물의진흥에관한법률" 및 "청소년보호법"등에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy7">제 7 조 (회원정보의 변경)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회원"은 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 아이디등 고유정보의 수정은 불가능합니다.</li>
                                <li>②"회원"은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 "회사"에 대하여 그 변경사항을 알려야 합니다.</li>
                                <li>③제2항의 변경사항을 "회사"에 알리지 않아 발생한 불이익에 대하여 "회사"는 책임지지 않습니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy8">제 8 조 (“회원”의 “아이디” 및 “비밀번호”의 관리에 대한 의무)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회원"의 "아이디"와 "비밀번호"에 관한 관리책임은 "회원"에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.</li>
                                <li>②"회사"는 "회원"의 "아이디"가 개인정보 유출 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 "회사" 및 "회사"의 운영자로 오인한 우려가 있는 경우, 해당 "아이디"의 이용을 제한할 수 있습니다.</li>
                                <li>③"회원"은 "아이디" 및 "비밀번호"가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 "회사"에 통지하고 "회사"의 안내에 따라야 합니다.</li>
                                <li>④제3항의 경우에 해당 "회원"이 "회사"에 그 사실을 통지하지 않거나, 통지한 경우에도 "회사"의 안내에 따르지 않아 발생한 불이익에 대하여 "회사"는 책임지지 않습니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy9">제 9 조 (“회원”에 대한 통지)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회사"가 "회원"에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 서비스 내 전자우편주소, 전자쪽지 등으로 할 수 있습니다.</li>
                                <li>②"회사"는 "회원" 전체에 대한 통지의 경우 7일 이상 "회사"의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy10">제 10 조 ("회사"의 의무)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회사"는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 "서비스"를 제공하기 위하여 최선을 다하여 노력합니다.</li>
                                <li>②"회사"는 "회원"이 안전하게 "서비스"를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보처리방침을 공시하고 준수합니다.</li>
                                <li>③"회사"는 서비스이용과 관련하여 발생하는 이용자의 불만 또는 피해구제요청을 적절하게 처리할 수 있도록 필요한 인력 및 시스템을 구비합니다.</li>
                                <li>④"회사"는 서비스이용과 관련하여 "회원"으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다.<br />
                                    "회원"이 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 전자우편 등을 통하여 "회원"에게 처리과정 및 결과를 전달합니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy11">제 11 조 ("회원"의 의무)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회원"은 다음 행위를 하여서는 안 됩니다.
                                    <ol>
                                        <li>1.신청 또는 변경 시 허위내용의 등록</li>
                                        <li>2.타인의 정보도용</li>
                                        <li>3."회사"가 게시한 정보의 변경</li>
                                        <li>4."회사"가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시</li>
                                        <li>5."회사"와 기타 제3자의 저작권 등 지적재산권에 대한 침해</li>
                                        <li>6."회사" 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위.</li>
                                        <li>7.외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 "서비스"에 공개 또는 게시하는 행위</li>
                                        <li>8.회사의 동의 없이 영리를 목적으로 "서비스"를 사용하는 행위</li>
                                        <li>9.기타 불법적이거나 부당한 행위</li>
                                    </ol>
                                </li>
                                <li>②"회원"은 관계법, 이 약관의 규정, 이용안내 및 "서비스"와 관련하여 공지한 주의사항, "회사"가 통지하는 사항 등을 준수하여야 하며, 기타 "회사"의 업무에 방해되는 행위를 하여서는 안 됩니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy12">제 12 조 ("서비스"의 제공 등)</h4>
                        <div class="cont">
                            <ol>
                                <li>①“회사”는 “회원”에게 아래와 같은 “서비스”를 제공합니다.
                                    <ol>
                                        <li>1. 물품 구매 및 관련한 제반서비스</li>
                                        <li>2. 게시판형 서비스(공지사항, 질문등)</li>
                                        <li>3. “${mallname}”내부 검색 서비스</li>
                                        <li>4. 기타 "회사"가 “몰”운영에 관한 추가 개발하는 일체의 서비스</li>
                                    </ol>
                                </li>
                                <li>②"서비스"는 연중무휴, 1일 24시간 제공함을 원칙으로 합니다.</li>
                                <li>③"회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다.<br />
                                    이 경우 "회사"는 제9조["회원"에 대한 통지]에 정한 방법으로 "회원"에게 통지합니다. 다만, "회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.</li>
                                <li>④"회사"는 서비스의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy13">제 13 조 ("서비스"의 변경)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회사"는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 "서비스"를 변경할 수 있습니다.</li>
                                <li>②"서비스"의 내용, 이용방법에 대하여 변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등을 공지등을 통해 회원에게 알릴 수 있습니다.</li>
                                <li>③"회사"는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관련법에 특별한 규정이 없는 한 "회원"에게 별도의 보상을 하지 않습니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy14">제 14 조 (거래)</h4>
                        <div class="cont">
                            <p>
                                회원은 “몰”에서 제공하는 “서비스”에 의해 물품을 선택 및 결제하여 거래를 신청합니다.<br />
                                계약성립은 결제가 정상적으로 완료되고, 그 결과를 모바일 기기 또는 전자문서(이메일포함)를 통해 전달 받음으로서 거래가 성립한 것으로 봅니다.
                            </p>
                        </div>

                        <h4 id="policy15">제 15 조 (배송)</h4>
                        <div class="cont">
                            <ol>
                                <li>① "몰"은 공급사에게 거래가 성립된 “회원” 물품을 3영업일 이내에 배송에 필요한 조치를 취하도록 안내합니다.</li>
                                <li>② "회원"은 주문한 “상품”이 배송되면 즉시 검수 확인하여야 합니다. 회원이 상품 수령 후 3일 이내에 이의하지 않을 경우, 검수에 합격한 것으로 간주하며, 거래의 완료가 됩니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy16">제 16 조 (환급, 반품)</h4>
                        <div class="cont">
                            <ol>
                                <li>① “공급사”는 “회원”이 구매 신청한 “상품”이 품절 등의 사유로 “상품”의 배송을 정상적으로 할 수 없을 때에는 지체 없이 그 사유를 “회원”에게 통지하고, 사전에 재화 또는 용역의 대금을 받은 경우에는 대금을 받은 날부터 3일 이내에, 그렇지 않은 경우에는 그 사유발생일로부터 3일 이내에 계약해제 및 환급절차를 취합니다.</li>
                                <li>② “회원”은 거래한 “상품”의 반품을 요구할 수 있습니다. “공급사”는 반품요청을 받은 다음 3영업일 이내에 배송된 “상품”을 회수하고, “상품”을 회수한 날로부터 14일 내로 환급 조치합니다.</li>
                                <li>③ 반품(환급) 조건은 다음 각호에 따릅니다.
                                    <ol>
                                        <li>1. “회원”이 "몰"에서 직접 구매한 상품의 경우, 회원은 상품 주문일로부터 1개월 이내에 반품요청을 할 수 있습니다.</li>
                                        <li>2. 회원의 반품요청 시 거래 당시의 가격으로 환급됩니다.</li>
                                    </ol>
                                </li>
                                <li>④ 반품에 따른 배송비의 의무는 원인을 발생시킨 “회원” 또는 “공급사”에게 있습니다.</li>
                                <li>⑤ “회원”은 “상품”을 배송받은 경우 다음 각 호의 1에 해당하는 경우에는 반품을 할 수 없습니다.
                                    <ol>
                                        <li>1. “회원”에게 책임 있는 사유로 “상품”의 가치가 훼손된 경우</li>
                                        <li>2. “회원”의 사용 또는 일부 소비에 의하여 “상품”의 가치가 현저히 감소한 경우</li>
                                        <li>3. 시간의 경과에 의하여 재판매가 곤란할 정도로 “상품”의 가치가 현저히 감소한 경우</li>
                                        <li>4. “상품”의 특성상 반드시 포장이 필요한 “상품”의 포장을 훼손한 경우</li>
                                        <li>5. “공급사”가 판매 시 별도로 반품이 불가능 한 “상품”이라고 명시한 경우</li>
                                    </ol>
                                </li>
                            </ol>
                        </div>

                        <h4 id="policy17">제 17 조 (정보의 제공 및 광고의 게재)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회사"는 "회원"이 "서비스" 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나 전자우편 등의 방법으로 "회원"에게 제공할 수 있습니다.<br />
                                다만, "회원"은 관련법에 따른 거래관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편에 대해서 수신 거절을 할 수 있습니다.</li>
                                <li>②제1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고 하는 경우에는 "회원"의 사전 동의를 받아서 전송합니다. 다만, "회원"의 거래관련 정보 및 고객문의 등에 대한 회신에 있어서는 제외됩니다.</li>
                                <li>③"회사"는 "서비스"의 운영과 관련하여 서비스 화면, 홈페이지, 전자우편 등에 광고를 게재할 수 있습니다. 광고가 게재된 전자우편을 수신한 "회원"은 수신거절을 "회사"에게 할 수 있습니다.</li>
                                <li>④"이용자(회원, 비회원 포함)"는 회사가 제공하는 서비스와 관련하여 게시물 또는 기타 정보를 변경, 수정, 제한하는 등의 조치를 취하지 않습니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy18">제 18 조 ("게시물"의 저작권)</h4>
                        <div class="cont">
                            <ol>
                                <p>"회원"이 "${mallname}" 내에 게시한 "게시물"에 저작권이 있는 경우 해당 저작권은 게시물의 저작자에게 귀속됩니다.<br />
                                    이에 대해 저작권법에 대한 모든책임은 게시한 “회원”에게 있으며, “회사”는 책임을지지 않습니다.</p>
                            </ol>
                        </div>

                        <h4 id="policy19">제 19 조 ("게시물"의 관리)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회원"의 "게시물"이 "정보통신망법" 및 "저작권법"등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 "게시물"의 게시중단 및 삭제 등을 요청할 수 있으며, "회사"는 관련법에 따라 조치를 취하여야 합니다. </li>
                                <li>②"회사"는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 "게시물"에 대해 임시조치 등을 취할 수 있습니다. </li>
                                <li>③본 조에 따른 세부절차는 "정보통신망법" 및 "저작권법"이 규정한 범위 내에서 "회사"가 정한 "게시중단요청서비스"에 따릅니다. </li>
                                <ol><li> - 게시중단요청서비스 :   kukjea@empal.com .</li></ol>

                            </ol>
                        </div>

                        <h4 id="policy20">제 20 조 (포인트)</h4>
                        <div class="cont">
                            <p>"회사"는 “${mallname}”의 효율적 이용 및 운영을 위해 사전 공지 후 "포인트"의 일부 또는 전부를 조정할 수 있으며, "포인트"는 회사가 정한 기간에 따라 주기적으로 소멸할 수 있습니다.</p>
                        </div>

                        <h4 id="policy21">제 21 조 (회원탈퇴)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회원"은 언제든지 서비스초기화면의 고객센터 또는 내 정보 관리 메뉴 등을 통하여 회원탈퇴 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에 따라 이를 즉시 처리하여야 합니다.</li>
                                <li>②"회원"이 탈퇴하는 경우, 관련법 및 개인정보처리방침에 따라 "회사"가 회원정보를 보유하는 경우를 제외하고는 탈퇴 즉시 "회원"의 모든 데이터는 소멸됩니다.</li>
                                <li>③"회원"이 탈퇴하는 경우, "회원"이 작성한 "게시물"은 삭제되지 않으니 사전에 삭제 후 탈퇴하시기 바랍니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy22">제 22 조 (이용제한 등)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회사"는 "회원"이 이 약관의 의무를 위반하거나 "서비스"의 정상적인 운영을 방해한 경우, 경고, 일시정지, 영구이용정지 등으로 "서비스" 이용을 단계적으로 제한할 수 있습니다.</li>
                                <li> ②"회사"는 전항에도 불구하고, "주민등록법"을 위반한 명의도용 및 결제도용, "저작권법" 및 "컴퓨터프로그램보호법"을 위반한 불법프로그램의 제공 및 운영방해, "정보통신망법"을 위반한 불법통신 및 해킹, 악성프로그램의 배포, 접속권한 초과행위 등과 같이 관련법을 위반한 경우에는 즉시 영구이용정지를 할 수 있습니다.<br />
                                    본 항에 따른 영구이용정지 시 "서비스" 이용을 통해 획득한 "포인트" 및 기타 혜택 등도 모두 소멸되며, "회사"는 이에 대해 별도로 보상하지 않습니다.</li>
                                <li>③"회사"는 "회원"이 계속해서 3개월 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있습니다.</li>
                                <li>④본 조에 따라 "서비스" 이용을 제한하거나 계약을 해지하는 경우에는 "회사"는 제9조["회원"에 대한 통지]에 따라 통지합니다.</li>
                                <li>⑤"회원"은 본 조에 따른 이용제한 등에 대해 "회사"가 정한 절차에 따라 이의신청을 할 수 있습니다.<br /> 이 때 이의가 정당하다고 "회사"가 인정하는 경우 "회사"는 즉시 "서비스"의 이용을 재개합니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy23">제 23 조 (책임제한)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회사"는 천재지변 또는 이에 준하는 불가항력으로 인하여 "서비스"를 제공할 수 없는 경우에는 "서비스" 제공에 관한 책임이 면제됩니다.</li>
                                <li>②"회사"는 "회원"의 귀책사유로 인한 "서비스" 이용의 장애에 대하여는 책임을 지지 않습니다.</li>
                                <li>③"회사"는 "회원"이 "서비스"와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.</li>
                                <li>④"회사"는 "회원" 간 또는 "회원"과 제3자 상호간에 "서비스"를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.</li>
                                <li>⑤"회사"는 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy24">제 24 조 (준거법 및 재판관할)</h4>
                        <div class="cont">
                            <ol>
                                <li>①"회사"와 "회원" 간 제기된 소송은 대한민국법을 준거법으로 합니다.</li>
                                <li>②"회사"와 "회원"간 발생한 분쟁은 전자거래기본법 제33조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다.</li>
                            </ol>
                        </div>

                        <h4 id="policy25">부칙</h4>
                        <div class="cont">
                            <p>이 약관은 2016년 8월 8일부터 적용됩니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/jsp/shop/include/quick.jsp" %>
    </div>

    <div id="footer">
        <%@ include file="/WEB-INF/jsp/shop/include/footer.jsp" %>
    </div>
</div>

</body>
</html>
