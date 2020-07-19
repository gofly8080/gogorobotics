<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="now" value="<%=new java.util.Date()%>"/>
<div id="header">
    <div class="global_top">
        <div class="layout_inner">
            <a href="#" id="favorite" class="btn_favorite">즐겨찾기 추가</a>
            <%--<ul class="mall_links">--%>
                <%--<c:forEach var="mall" items="${mallList}">--%>
                    <%--<c:choose>--%>
                        <%--<c:when test="${mall.seq eq mallVo.seq}">--%>
                            <%--<li><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>--%>
                        <%--</c:when>--%>
                        <%--<c:otherwise>--%>
                            <%--<li><a href="/shop/changeMall?mallSeq=${mall.seq}" style="color:#aaa">${mall.name}</a></li>--%>
                        <%--</c:otherwise>--%>
                    <%--</c:choose>--%>
                <%--</c:forEach>--%>
                    <%--&lt;%&ndash;<li><a href="/shop/changeMall?mallSeq=1">${mallList[0].name}</a></li>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<li><a href="/shop/changeMall?mallSeq=6">${mallList[1].name}</a></li>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<li><a href="/shop/changeMall?mallSeq=66">${mallList[2].name}</a></li>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<li><a href="/shop/changeMall?mallSeq=67">${mallList   ㅠ[3].name}</a></li>&ndash;%&gt;--%>

            <%--</ul>--%>
            <c:choose>
            <c:when test="${sessionScope.loginSeq > 0}">
                <ul class="utils">
                    <li class="user">${sessionScope.loginName}님 ( <em data-access="grade">---</em> 등급, <em data-access="point">---</em> 포인트)</li>
                    <li><a href="/shop/cart">장바구니(<em>${cartCount}</em>)</a></li>
                    <li><a href="/shop/mypage/main">마이페이지</a></li>
                    <li><a href="/shop/mypage/order/list">주문배송조회</a></li>
                    <li><a href="/shop/cscenter/list/notice">고객센터</a></li>
                    <li><a href="/shop/logout">로그아웃</a></li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul class="utils">
                    <li><a href="/shop/login">로그인</a></li>
                    <li><a href="/shop/cscenter/member/start">회원가입</a></li>
                    <li><a href="/shop/cscenter/search/id">ID/PW찾기</a></li>
                    <li><a href="/shop/mypage/main">마이페이지</a></li>
                    <li><a href="/shop/cscenter/list/notice">고객센터</a></li>
                </ul>
            </c:otherwise>
            </c:choose>
        </div>
    </div>
    <div class="layout_inner search_section">
        <h1><a href="/shop/changeMall?mallSeq=${mallVo.seq}"><img src="/upload${mallVo.logoImg}?ver=<fmt:formatDate pattern="dd.hh.mm.ss" value="${now}"/>" alt="${mallname} (KUK JE MALL)" /></a></h1>
        <div class="search">
            <form action="/shop/search?mallSeq=${mallVo.seq}" role="form" onsubmit="return checkRequiredValue(this, 'data-required-label');">
                <fieldset>
                    <legend>통합검색</legend>
                    <div class="search_area">
                        <input type="text" name="nameMaker" class="intxt search-input" placeholder="검색어 입력" style="ime-mode:active" />
                        <button type="submit" class="btn_total_search"><span class="blind">검색</span></button>
                    </div>
                </fieldset>
            </form>
            <div class="popular_keyword">
                <dl>
                    <dt><span class="icon icon_search"><span class="blind">인기검색어</span></span></dt>
                    <dd>
                        <a href="/shop/search?nameMaker=${mallVo.searchkey1}">${mallVo.searchkey1}</a>
                        <a href="/shop/search?nameMaker=${mallVo.searchkey2}">${mallVo.searchkey2}</a>
                        <a href="/shop/search?nameMaker=${mallVo.searchkey3}">${mallVo.searchkey3}</a>
                    </dd>
                </dl>
                <%-- div class="btn_paging">
                    <button class="btn_prev"><span class="blind">이전</span></button>
                    <button class="btn_next"><span class="blind">다음</span></button>
                </div --%>
            </div>
        </div>
        <div class="promotion_top">
            <a href="http://blog.naver.com/alaman92" target="_blank"><img src="/upload${banner.logoImg}" alt="">
        </div>
            <li>
                <c:if test="${noticeList ne null}">
                    <a href="#"><a href="/shop/cscenter/view/notice/${noticeList[0].seq}"><p class="noti">[공지]${noticeList[0].title}</p></a></a>
                </c:if>
            </li>
    </div>
    <div id="gnbTab">
        <%--<ul>--%>
            <%--<li class="hospital on"><a href="#">병원몰</a></li>--%>
            <%--<li class="pharmacy"><a href="#">약국몰</a></li>--%>
            <%--<li class="oriental_medicine"><a href="#">한방몰</a></li>--%>
            <%--<li class="animal_hospital"><a href="#">동물병원몰</a></li>--%>
            <%--<li class="b2b"><a href="#">B2B몰</a></li>--%>
            <%--<li class="b2c"><a href="#">B2C몰</a></li>--%>
        <%--</ul>--%>
        <ul>
            <c:forEach var="mall" items="${mallList}">
                <c:choose>
                    <c:when test="${mall.seq eq mallVo.seq}">
                        <c:if test="${mall.seq eq 1}">
                            <li class="hospital on"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                        <c:if test="${mall.id eq 'pharmacy_mall'}">
                            <li class="pharmacy on"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                        <c:if test="${mall.id eq 'oriental_medicine_mall'}">
                            <li class="oriental_medicine on"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                        <c:if test="${mall.id eq 'animal_hospital_mall'}">
                            <li class="animal_hospital on"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                        <c:if test="${mall.id eq 'b2b_mall'}">
                            <li class="b2b on"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                        <c:if test="${mall.id eq 'b2c_mall'}">
                            <li class="b2c on"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                    </c:when>
                    <c:otherwise>
                        <c:if test="${mall.seq eq 1}">
                            <li class="hospital"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                        <c:if test="${mall.id eq 'pharmacy_mall'}">
                            <li class="pharmacy"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                        <c:if test="${mall.id eq 'oriental_medicine_mall'}">
                            <li class="oriental_medicine"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                        <c:if test="${mall.id eq 'animal_hospital_mall'}">
                            <li class="animal_hospital"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                        <c:if test="${mall.id eq 'b2b_mall'}">
                            <li class="b2b"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                        <c:if test="${mall.id eq 'b2c_mall'}">
                            <li class="b2c"><a href="/shop/changeMall?mallSeq=${mall.seq}">${mall.name}</a></li>
                        </c:if>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </ul>
    </div>
    <%@ include file="/WEB-INF/jsp/shop/include/navigation.jsp" %>
</div>
<script> var mallSeq = ${sessionScope.get("mallSeq")} </script>