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
                            <dt>${mallname} 개인정보 처리방침</dt>
                            <dd>${mallname}(이하 "회사"라 함)은 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 통신비밀보호법, 전기통신사업법등 정보통신서비스제공자가 준수하여야 할 관련 법규상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보처리방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다.</dd>
                        </dl>
                        <p>회사의 개인정보처리방침은 다음과 같은 내용을 담고 있습니다.</p>
                        <ol>
                            <li><a href="#privacy1">1. 처리하는 개인정보 항목</a></li>
                            <li><a href="#privacy2">2. 개인정보의 처리목적</a></li>
                            <li><a href="#privacy3">3. 개인정보의 제3자 제공</a></li>
                            <li><a href="#privacy4">4. 개인정보 처리의 위탁</a></li>
                            <li><a href="#privacy5">5. 개인정보의 처리 및 보유기간</a></li>
                            <li><a href="#privacy6">6. 개인정보 파기절차 및 방법</a></li>
                            <li><a href="#privacy7">7. 정보주체의 권리·의무 및 그 행사방법</a></li>
                            <li><a href="#privacy8">8. 개인정보의 안전성 확보조치</a></li>
                            <li><a href="#privacy9">9. 개인정보보호 책임자 및 연락처</a></li>
                            <li><a href="#privacy10">10. 기타</a></li>
                            <li><a href="#privacy11">11. 개인정보처리방침의 변경</a></li>
                        </ol>
                    </div>
                    <div class="privacy_cont">
                        <h4 id="privacy1">1. 처리하는 개인정보 항목</h4>
                        <div class="cont">
                            <p>첫째, 회사는 회원가입 대상자를 확인하기 위해 아래와 같은 개인정보를 수집하고 있습니다.<br />- 필수정보 : 성명, 확인용 비밀번호, 이메일 주소, 휴대전화번호, 주소</p>
                            <p>둘째, 회사는 세금계산서 발행을 위하여 아래와 같은 사업자정보를 수집하고 있습니다.<br />- 필수정보 : 병원명, 대표자명, 병원주소, 병원전화번호, 사업자번호, 사업자등록증 이미지, 업종, 업태</p>
                            <p>셋째, 회사는 온라인 결제와 관련하여 아래의 사항을 수집하고 있습니다.<br />- 구매정보, 결제정보, 배송정보</p>
                            <p>그리고 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br />- 이용자의 브라우저 종류 및 OS, 방문 기록(IP Address, 접속시간), 쿠키, 서비스 이용기록, 접속로그, 쿠키, 접속 IP 정보,</p>
                            <p>회사는 홈페이지(http://www.kukjemedi.com) 웹문서를 통한 사용자 입력 방법으로 개인정보를 수집하며, 경우에 따라 출력된 형태의 종이문서 혹은 이메일로 일부 정보를 수집할 수도 있습니다.</p>
                        </div>

                        <h4 id="privacy2">2. 개인정보의 처리목적</h4>
                        <div class="cont">
                            <ol>
                                <li>가. 회원활동에 대한 확인 및 의사소통</li>
                                <li>나. 온라인 주문에 대한 결제 확인 및 배송</li>
                                <li>다. 기타 서비스 운영에 따른 회원 관리 및 서비스 관리</li>
                            </ol>
                        </div>

                        <h4 id="privacy3">3. 개인정보의 제3자 제공</h4>
                        <div class="cont">
                            <ol>
                                <li>가. 회사는 이용자들의 개인정보를 「개인정보의 처리목적」에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 제3자에게 제공하지 않습니다. 다만 , 아래의 경우에는 예외로 합니다.
                                    <ol>
                                        <li>① 이용자들이 사전에 공개 또는 제3자 제공에 동의한 경우</li>
                                        <li>② 법령의 규정에 의거하거나, 수사, 조사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관 및 감독당국의 요구가 있는 경우</li>
                                        <li>③ 요금 정산을 위하여 필요한 경우</li>
                                    </ol>
                                </li>
                                <li>나. 그 밖에 개인정보 제3자 제공이 필요한 경우에는 이용자의 동의를 얻는 등 적법한 절차를 통하여 제3자에게 개인정보를 제공할 수 있습니다. 회사는 이용자들의 거래 이행을 위하여 필요한 경우 이용자의 동의를 얻는 등 적법한 절차를 통하여 아래와 같이 개인정보를 제공할 수 있습니다.
                                    <table class="board_list">
                                        <caption>개인정보의 수집내역</caption>
                                        <colgroup>
                                            <col style="width:auto" />
                                            <col style="width:27%" />
                                            <col style="width:27%" />
                                            <col style="width:27%" />
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th scope="col">공유받는자</th>
                                            <th scope="col">공유하는 항목</th>
                                            <th scope="col">공유받는자의 이용목적</th>
                                            <th scope="col">보유 및 이용기간</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>공급사(판매자)</td>
                                            <td class="lt">1)구매자정보(구매자id,구매자명,구매자전화번호 ,구매자휴대폰번호)<br />2)상품 구매, 취소, 반품, 교환정보<br />3)수령인정보(수령인명, 휴대폰번호,전화번호,수령인주소)<br />4)송장정보</td>
                                            <td>상품(서비스) 배송(전송), 제품 설치, 반품, 환불, 고객상담 등 정보통신서스제공계약 및 전자상거래(통신판매)계약의 이행을 위해 필요한 업무의 처리</td>
                                            <td>서비스 제공기간 (관계법령의 규정에 의하여 보존할 필요가 있는 경우 및 사전 동의를 득한 경우 해당 보유 기간)</td>
                                        </tr>
                                        </tbody>
                                    </table>

                                    <p>이용자는 개인정보의 제3자 제공에 대하여 동의를 하지 않을 수 있고, 언제든지 제3자 제공 동의를 철회할 수 있습니다. 동의를 거부하시는 경우에도 회원가입서비스는 이용하실 수 있으나, 제 3자 제공에 기반한 관련 서비스의 이용/제공이 제한될 수 있습니다. 기타 개인정보 제3자 제공에 대한 변동사항은 공지 및 별도 통지를 할 예정입니다.</p>
                                </li>
                            </ol>
                        </div>

                        <h4 id="privacy4">4. 개인정보 처리의 위탁</h4>
                        <div class="cont">
                            <ol>
                                <li>가. 회사는 원활하고 향상된 서비스를 제공하기 위해 개인정보 취급을 타인에게 위탁할 수 있습니다. 이 경 우 회사는 사전에 다음 각 호의 사항 모두를 이용자에게 미리 알리고 동의를 받습니다. 다음 각 호의 어느 하나의 사항이 변경되는 경우에도 같습니다.
                                    <ol>
                                        <li>1) 개인정보 취급위탁을 받는 자</li>
                                        <li>2) 개인정보 취급위탁을 하는 업무의 내용</li>
                                    </ol>
                                </li>
                                <li>나. 회사는 정보통신서비스의 제공에 관한 계약을 이행하고 이용자 편의 증진 등을 위하여 필요한 경우 개인정보취급방침에 따라 가항 각 호의 사항을 공개함으로써 고지절차와 동의절차를 거치지 아니하고 개인정보 취급을 타인에게 위탁할 수 있습니다.</li>
                                <li>다. 회사는 개인정보의 처리와 관련하여 아래와 같이 업무를 위탁하고 있으며, 관계법령에 따라 위탁 계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 조치를 하고 있습니다. 회사는 위탁 계약 시 수탁자의 개인정보 보호조치 능력을 고려하고, 개인정보의 안전한 관리 및 파기 등 수탁자의 의무 이행 여부를 주기적으로 확인합니다. 또한 위탁처리하는 정보는 원활한 서비스를 제공하기 위하여 필요한 최소한의 정보에 국한됩니다.
                                    <table class="board_list">
                                        <caption>위탁업체</caption>
                                        <thead>
                                        <tr>
                                            <th scope="col">수탁업체</th>
                                            <th scope="col">위탁업무 내용</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>LG U+</td>
                                            <td>신용카드 결제처리</td>
                                        </tr>
                                        <tr>
                                            <td>LG U+</td>
                                            <td>휴대폰 실명인증</td>
                                        </tr>
                                        <tr>
                                            <td>배송업체(용마로지스, 한진택배)</td>
                                            <td>배송정보(이름, 연락처, 주소)</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </li>
                            </ol>
                        </div>

                        <h4 id="privacy5">5. 개인정보의 처리 및 보유기간</h4>
                        <div class="cont">
                            <p>회사는 이용자의 개인정보를 원칙적으로 고지 및 약정한 기간 동안 보유 및 이용하며 개인정보의 수집 및 이용목적이 달성되거나 이용자의 파기 요청이 있는 경우 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</p>
                            <ol>
                                <li>가. 관련법령 및 회사 방침에 의한 정보보유 사유<br />관계법령의 규정에 의하여 보존할 필요가 있는 경우 법령에서 규정한 일정한 기간 동안 이용자 개인정보를 보관합니다. 이 경우 회사는 해당 정보를 별도 분리하여 보관하고, 그 보관의 목적으로만 이용하며 마케팅 등 다른 목적으로 이용하지 않습니다.
                                    <ol>
                                        <li>
                                            <p>① 관련법령에 따른 정보보유 사유</p>
                                            <table class="board_list">
                                                <caption>관련법령에 따른 정보보유 사유</caption>
                                                <colgroup>
                                                    <col style="width:auto" />
                                                    <col style="width:28%" />
                                                    <col style="width:28%" />
                                                    <col style="width:15%" />
                                                </colgroup>
                                                <thead>
                                                <tr>
                                                    <th scope="col">관련법률</th>
                                                    <th scope="col">목적</th>
                                                    <th scope="col">수집항목</th>
                                                    <th scope="col">보유기간</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>통신비밀보호법 제12조의 2</td>
                                                    <td>법원의 영장을 받아 수사기관이 요청시 제공</td>
                                                    <td>로그기록, IP 등</td>
                                                    <td>3개월</td>
                                                </tr>
                                                <tr>
                                                    <td rowspan="3">전자상거래등에서의 소비자보호에 관한 법률 제6조</td>
                                                    <td>소비자의 불만 또는 분쟁처리에 관한 기록</td>
                                                    <td>소비자 식별정보, 분쟁처리 기록 등</td>
                                                    <td>3년</td>
                                                </tr>
                                                <tr>
                                                    <td>대금결제 및 재화 등의 공급에 관한 기록</td>
                                                    <td rowspan="2">소비자 식별정보, 계약/청약철회 기록 등</td>
                                                    <td rowspan="2">5년</td>
                                                </tr>
                                                <tr>
                                                    <td>계약 또는 청약철회 등에 관한 기록</td>
                                                </tr>
                                                <tr>
                                                    <td rowspan="2">국세기본법 제85조의 3</td>
                                                    <td>국세 부과 제척기간 계산</td>
                                                    <td>국세 증빙자료 등</td>
                                                    <td>10년</td>
                                                </tr>
                                                <tr>
                                                    <td>국세징수권 등 소멸시효 계산</td>
                                                    <td>과세표준과 세액의 신고자료 등</td>
                                                    <td>5년</td>
                                                </tr>
                                                <tr>
                                                    <td>부가가치세법 제71조</td>
                                                    <td>장부, 세금계산서, 수입세금계산서, 영수증 등</td>
                                                    <td>부가가치세의 과세표준과 세액의 신고자료 등</td>
                                                    <td>5년</td>
                                                </tr>
                                                <tr>
                                                    <td>전자금융거래법 제22조</td>
                                                    <td>전자금융거래기록 확인</td>
                                                    <td>전자금융거래에 관한 기록, 상대방에 관한 정보 등</td>
                                                    <td>5년</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </li>
                                        <li>
                                            <p>② 회사 방침에 의한 정보보유 사유</p>
                                            <ol>
                                                <li>부정거래기록</li>
                                                <li>보존 이유: 부정거래의 배제</li>
                                                <li>보존 기간: 6개월</li>
                                                <li>보존 항목: ID, 휴대폰번호, 이메일 주소, 부정거래사유, 탈퇴 시 회원 상태값 등</li>
                                                <li>*부정거래 : 법령, 회사와 이용자 간의 서비스 이용 약관 또는 공서양속을 위반하거나 기타 회사, 회원 또는 타인의 권리나 이익을 침해하는 방법이나 내용의 거래를 말함.</li>
                                            </ol>
                                        </li>
                                    </ol>
                                </li>
                                <li>나. 수집된 개인정보의 보유•이용기간은 서비스이용계약체결(회원가입)시부터 서비스이용계약해지(탈퇴신청, 직권탈퇴 포함)입니다. 또한 동의 해지 시 회사는 이용자의 개인정보를 상기 명시한 정보보유 사유에 따라 일정 기 간 저장하는 자료를 제외하고는 지체 없이 파기하며 개인정보취급이 제3자에게 위탁된 경우에는 수탁자에게도 파기하도록 지시합니다.</li>
                                <li>다. 회사는 1년 동안 회사의 서비스를 이용하지 않은 이용자의 개인정보는 ‘정보통신망 이용촉진 및 정보보호등에 관한 법률 제29조’ 에 근거하여 이용자에게 사전통지하고 개인정보를 파기하거나 별도로 분리하여 저장 합니다. 단, 통신비밀보호법, 전자상거래 등에서의 소비자보호에 관한 법률 등의 관계법령의 규정에 의하여 보존할 필요가 있는 경우 관계법령에서 규정한 일정한 기간 동안 이용자 개인정보를 보관합니다.</li>
                            </ol>
                        </div>

                        <h4 id="privacy6">6. 개인정보 파기절차 및 방법</h4>
                        <div class="cont">
                            <p>개인정보는 원칙적으로 개인정보의 처리목적이 달성되면 지체 없이 파기합니다. 회사의 개인정보 파기절차 및 방법은 다음과 같습니다.</p>
                            <ol>
                                <li>가. 파기절차<br />- 정보주체가 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 보관사유에 따라("5. 개인정보의 처리 및 보유기간" 참조)일정 기간 저장된 후 파기됩니다.<br />- 동 개인정보는 법률에 의한 경우가 아니고서는 보유되는 이외의 다른 목적으로 이용되지 않습니다.</li>
                                <li>나. 파기방법<br />- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.<br />- 전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</li>
                            </ol>
                        </div>

                        <h4 id="privacy7">7. 정보주체의 권리·의무 및 그 행사방법</h4>
                        <div class="cont">
                            <ol>
                                <li>가. 이용자 및 법정 대리인은 언제든지 ${mallname}의 “개인정보수정”을 통하여 회원님의 개인정보를 열람, 정정 처리하실 수있으며, 전자우편 또는 서면으로 요청하신 경우 열람, 정정, 삭제처리 해 드리겠습니다. 이용자의 개인정보가 제3자에게 제공되거나 취급위탁된 경우 이용자는 회사 또는 ‘제3자’, ‘수탁자’에게 파기를 요청할 수 있습니다. 단, 회원 아이디(ID)는 정정이 불가능합니다. 기타 법률에 따라 정정 또는 삭제가 금지되거나 제한되어 있는 경우에는 해당 처리가 제한될 수 있습니다. 또한 개인정보 오류에 대한 정정요청한 경우에는 다른 법률에 따라 개인정보의 제공을 요청받는 경우가 아닌 한 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다, 만약 잘못된 개인정보를 이미 제공한 경우에는 정정 처리 결과를 제 3자에게 통지 하여 정정이 이루어지도록 하겠습니다.</li>
                                <li>나. 이용자 및 법정 대리인은 언제든지 ${mallname}의 개인정보에 대하여 처리의 정지를 요구 할 수 있습니다. 다만 아래의 경우에 해당하는 경우 처리정지 	요구를 거절할 수 있습니다.
                                    <ol>
                                        <li>1) 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우</li>
                                        <li>2) 다른 사람의 생명•신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우</li>
                                        <li>3) 개인정보를 처리하지 아니하면 정보주체와 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한 경우로서 정보주체가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우</li>
                                    </ol>
                                <li>
                                <li>다. 회원가입 등을 통해 개인정보의 수집•이용•제공에 대해 회원님께서 동의하신 내용을 언제든지 철회할 수 있습니다. 동의철회는 회사 사이트 내 “회원 탈퇴 신청”을 클릭하거나 서면, 이메일 등으로 연락하시면 지체 없이 개인정보의 삭제 등 필요한 조치를 하겠습니다. 다만 법률 또는 약관의 규정에 따라 회사가 회원님의 개인정보를 보존하여야 하는 경우에는 해당 처리가 제한될 수 있습니다. 이 경우 회원님은 본인 식별을 위하여 반드시 회원아이디(ID)와 본인확인 식별정보를 밝히셔야 하며, 철회로 인해 서비스에 다소 제약이 있거나 일부 서비스를 이용하지 못하실 수 있습니다.</li>
                            </ol>
                        </div>

                        <h4 id="privacy8">8. 개인정보의 안전성 확보조치</h4>
                        <div class="cont">
                            <p>회사는 개인정보를 처리함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 보호조치를 강구하고 있습니다.</p>
                            <ol>
                                <li>가. 비밀번호 암호화<br />홈페이지를 이용하면서 설정한 비밀번호는 암호화되어 저장 및 관리되고 있어 본인만이 알고 있으며, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만 가능합니다.</li>
                                <li>나. 해킹 등에 대비한 대책<br />
                                    회사는 해킹이나 컴퓨터 바이러스 등에 의해 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다. 개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 누출되거나 손상되지 않도록 방지하고 있으며, 암호화통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다.
                                    그리고 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며, 기타 시스템적으로 보안성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.</li>
                                <li>다. 개인정보 처리 직원의 최소화 및 교육<br />
                                    회사의 개인정보관련 처리 직원은 담당자에 한정시키고 있고 이를 위한 별도의 비밀번호를 부여하여 정기적으로 갱신하고 있으며, 담당자에 대한 수시 교육을 수행하며, 개인정보보호를 강조하고 있습니다.</li>
                                <li>라. 개인정보보호전담기구의 운영<br />
                                    사내 개인정보보호전담기구 등을 통하여 회사의 개인정보처리방침 이행사항 및 담당자의 준수여부를 확인하여 문제가 발견될 경우 즉시 수정하고 바로 잡을 수 있도록 노력하고 있습니다. 단, 회사가 개인정보보호 의무를 다 하였음에도 불구하고 이용자 본인의 부주의나 회사가 관리하지 않는 영역에서의 사고 등 회사의 귀책에 기인하지 않은 손해에 대해서는 회사는 책임을 지지 않습니다.</li>
                            </ol>
                        </div>

                        <h4 id="privacy9">9. 개인정보보호 책임자 및 연락처</h4>
                        <div class="cont">
                            <p>귀하께서는 홈페이지 등을 이용하시는 과정에서 발생하는 모든 개인정보보호 관련 민원을 개인정보보호 책임자에게 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</p>
                            <dl>
                                <dt>개인정보보호 책임자</dt>
                                <dd>
                                    <ul>
                                        <li>이 름 : ${bank_own} </li>
                                        <li>소 속 : ${mallname}</li>
                                        <li>직 위 : 대표</li>
                                        <li>메 일 : kukje@empal.com</li>
                                    </ul>
                                </dd>
                            </dl>

                            <dl>
                                <dt>개인정보보호 담당자</dt>
                                <dd>
                                    <ul>
                                        <li>이 름 : ${bank_own} </li>
                                        <li>소 속 : ${mallname}</li>
                                        <li>직 위 : 대표</li>
                                        <li>메 일 : ${mall_mail}</li>
                                    </ul>
                                </dd>
                            </dl>

                            <p>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</p>

                            <p>개인정보침해신고센터 ( http://privacy.kisa.or.kr  / 국번없이 118 )<br />
                                대검찰청 사이버수사과 ( http://www.spo.go.kr / 국번없이 1301 )<br />
                                경찰청 사이버안전국 ( http://www.ctrc.go.kr / 국번없이 182 )</p>
                        </div>

                        <h4 id="privacy10">10. 기타</h4>
                        <div class="cont">
                            <p>본 홈페이지에 링크되어 있는 웹사이트들이 개인정보를 수집하는 행위에 대해서는 "${mallname}닷컴 개인정보처리방침"이 적용되지 않음을 알려 드립니다.</p>
                        </div>

                        <h4 id="privacy11">11. 개인정보처리방침의 변경</h4>
                        <div class="cont">
                            <p>현 개인정보처리방침의 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지 '공지사항'을 통해 고지할 것입니다. 다만, 개인정보의 수집 및 활용, 제3자 제공 등과 같이 이용자 권리의 중요한 변경이 있을 경우에는 최소 30일전에 고지합니다.</p>
                            <p>- 공고 일자 : 2016년 8월 8일<br />- 시행 일자 : 2016년 8월 8일</p>
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
