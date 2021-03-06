<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<!--[if IE 7]><html class="ie ie7" lang="ko"><![endif]-->
<!--[if IE 8]><html class="ie ie8" lang="ko"><![endif]-->
<!--[if !(IE 7) | !(IE 8) ]><!--><html lang="ko"><!--<![endif]-->
<head>
    <%@ include file="/WEB-INF/jsp/shop/include/head.jsp" %>
</head>
<body class="${mallVo.id}">
<input type="hidden" id="loginSeq" value="${loginSeq}"/>
<div id="skip_navi">
    <p><a href="#contents">본문바로가기</a></p>
</div>

<div id="wrap" class="sub">
    <%@ include file="/WEB-INF/jsp/shop/include/header.jsp" %>
    <div id="container">
        <div id="contents" class="sub_contents">
            <div class="location_select">
                <a href="/shop/main">홈</a>
                    <span>
                        <select title="상품 대분류" onchange="(this.value)&&(location.href='/shop/lv1/'+this.value);">
                            <option value="">대분류</option>
                            <c:forEach items="${cateLv1List}" var="item">
                            <option value="${item.seq}" <c:if test="${vo.cateLv1Seq eq item.seq}">selected="selected"</c:if>>${item.name}</option>
                            </c:forEach>
                        </select>
                    </span>
                    <span>
                    <select title="상품 중분류" onchange="location.href='/shop/lv'+(this.value==''?'1/${lv1.seq}':'2/'+this.value);">
                        <option value="">중분류</option>
                        <c:forEach items="${cateLv2List}" var="item">
                        <option value="${item.seq}" <c:if test="${vo.cateLv2Seq eq item.seq}">selected="selected"</c:if>>${item.name}</option>
                        </c:forEach>
                    </select>
                </span>
            </div>

            <div class="goods_catgory">
                <table>
                    <caption>상품 카테고리</caption>
                    <tbody>
                    <tr>
                        <th scope="row"><a href="/shop/lv1/${lv1.seq}">${lv1.name}</a></th>
                        <td>
                            <ul>
                                <c:forEach items="${cateLv2List}" var="item">
                                <li <c:if test="${vo.cateLv2Seq eq item.seq}">class="on"</c:if>><a href="/shop/lv2/${item.seq}">${item.name}</a></li>
                                </c:forEach>
                            </ul>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="goods_container">
                <!-- 상품목록 -->
                <div class="goods_list_wrap">
                    <form name="searchForm">
                        <div class="re_search">
                            <label>결과 내 재검색</label>
                            <select class="form-control" id="itemSearchType" name="itemSearchType">
                                <option value="">---구분---</option>
                                <option value="name" <c:if test="${vo.itemSearchType eq 'name'}">selected</c:if>>상품명</option>
                                <option value="maker" <c:if test="${vo.itemSearchType eq 'maker'}">selected</c:if>>제조사</option>
                                <option value="type" <c:if test="${vo.itemSearchType eq 'type'}">selected</c:if>>규격</option>
                            </select>


                            <input class="intxt"   type="text" id="itemSearchValue" name="itemSearchValue" value="${vo.itemSearchValue}" maxlength="20"/>
                            <button type="submit" class="btn btn_gray btn_xs">검색</button>
                        </div>

                        <div class="board_option">
                            <dl class="list_ctn">
                                <%--<dt>상품 보기</dt>--%>
                                <dd>
                                    <a href="#" <c:if test="${vo.rowCount eq 10}">class="on"</c:if> onclick="changeRowCount(10);return false;">10개</a>
                                    <a href="#" <c:if test="${vo.rowCount eq 20}">class="on"</c:if> onclick="changeRowCount(20);return false;">20개</a>
                                    <a href="#" <c:if test="${vo.rowCount eq 30}">class="on"</c:if> onclick="changeRowCount(30);return false;">30개</a>
                                </dd>

                                <dt>&nbsp;&nbsp;|</dt>
                                <dd>
                                    <a href="#" <c:if test="${vo.orderType eq 'lowprice'}">class="on"</c:if> onclick="changeOrderType('lowprice');return false;">낮은가격</a>
                                    <a href="#" <c:if test="${vo.orderType eq 'highprice'}">class="on"</c:if> onclick="changeOrderType('highprice');return false;">높은가격</a>
                                    <a href="#" <c:if test="${vo.orderType eq 'name'}">class="on"</c:if> onclick="changeOrderType('name');return false;">상품명</a>
                                    <a href="#" <c:if test="${vo.orderType eq 'maker'}">class="on"</c:if> onclick="changeOrderType('maker');return false;">제조사</a>
                                    <a href="#" <c:if test="${vo.orderType eq 'toporder'}">class="on"</c:if> onclick="changeOrderType('toporder');return false;">판매순</a>
                                </dd>

                                <input type="hidden" name="orderType" value="${vo.orderType}" />
                                <input type="hidden" name="rowCount" value="${vo.rowCount}" />
                            </dl>

                            <div class="list_type">
                                <a href="#" class="type_img<c:if test="${vo.listStyle eq 'img'}"> on</c:if>" onclick="changeListStyle('img');return false;" title="이미지 타입으로 목록보기"><span class="hide">이미지 타입으로 목록보기</span></a>
                                <a href="#" class="type_img_list<c:if test="${vo.listStyle eq 'all'}"> on</c:if>" onclick="changeListStyle('all');return false;" title="이미지+리스트 타입으로 목록보기"><span class="hide">이미지+리스트 타입으로 목록보기</span></a>
                                <a href="#" class="type_list<c:if test="${vo.listStyle eq 'list'}"> on</c:if>" onclick="changeListStyle('list');return false;" title="리스트 타입으로 목록보기"><span class="hide">리스트 타입으로 목록보기</span></a>
                            </div>
                            <input type="hidden" name="listStyle" value="${vo.listStyle}" />
                        </div>
                    </form>

                    <c:choose>
                    <c:when test="${vo.listStyle eq 'img'}">
                    <div class="goods_list img_list_type02">
                        <ul>
                            <c:forEach var="item" items="${list}">
                            <li data-seq="${item.seq}"><!-- class="on" -->
                                <input type="checkbox" class="check" title="상품 선택" />
                                <a href="/shop/detail/${item.seq}" onclick="view(${item.seq});return false;">
                                    <span class="thumb">
                                        <img src="/upload${fn:replace(item.img1, 'origin', 's110')}" alt="" onerror="noImage(this)" />
                                        <span class="icons">
                                            <c:if test="${item.freeDeli == 'Y'}"><span class="icon icon_txt icon_txt_gray">무료배송${item.freeDeli}</span></c:if>
                                            <c:if test="${fn:length(item.eventAdded)>1}"><span class="icon icon_txt icon_txt_yellow">${item.eventAdded}</span></c:if>
                                            <c:if test="${ item.salePercent <100 && item.salePercent >0  }"><span class="icon icon_txt icon_txt_red"><em>${item.salePercent}</em>%</span></span></c:if>
                                        </span>
                                    </span>
                                    <span class="tit">${item.name}</span>
                                    <span class="price">
                                        <strong><fmt:formatNumber value="${item.sellPrice}"/></strong>원
                                    </span>
                                </a>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                    </c:when>
                    <c:otherwise>
                    <div class="goods_list">
                        <table class="data_type2">
                            <caption>상품 목록</caption>
                            <colgroup>
                                <col style="width:25px" />
                                <c:if test="${vo.listStyle eq 'all'}"><col style="width:70px" /></c:if>
                                <col style="width:auto" />
                                <col style="width:70px" />
                                <col style="width:70px" />
                                <col style="width:70px" />
                                <col style="width:70px" />
                                <col style="width:70px" />
                            </colgroup>

                            <thead>
                            <tr>
                                <th scope="col"><span class="hide">상품 선택</span></th>
                                <c:if test="${vo.listStyle eq 'all'}">
                                <th scope="col"><span class="hide">상품 이미지</span></th>
                                </c:if>
                                <th scope="col">상품명</th>
                                <th scope="col"></th>
                                <th scope="col">규격</th>
                                <th scope="col">단위</th>
                                <th scope="col">제조사</th>
                                <th scope="col">가격</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${list}">
                            <tr data-seq="${item.seq}">
                                <td><input type="checkbox" class="check" title="상품 선택" /></td>
                                <c:if test="${vo.listStyle eq 'all'}"><td>
                                    <a href="/shop/detail/${item.seq}" onclick="view(${item.seq});return false;">
                                    <span class="thumb">
                                        <img src="/upload${fn:replace(item.img1, 'origin', 's60')}" alt="" onerror="noImage(this)" />
                                    </span>
                                    </a>
                                </td></c:if>
                                <td class="lt">
                                    <a href="/shop/detail/${item.seq}" onclick="view(${item.seq});return false;">
                                    ${item.name}
                                    </a>
                                </td>
                                <td>
                                    <c:if test="${item.freeDeli == 'Y'}"><span class="icon icon_txt icon_txt_gray">무료배송${item.freeDeli}</span></c:if>
                                    <c:if test="${fn:length(item.eventAdded)>1}"><span class="icon icon_txt icon_txt_yellow">${item.eventAdded}</span></c:if>
                                    <c:if test="${item.salePercent <100 && item.salePercent >0 }"><span class="icon icon_txt icon_txt_red"><em>${item.salePercent}</em>%</span></span></c:if>
                                </td>
                                <td class="text-center">
                                    <div class="text-warning">${item.type1}</div>
                                    <div class="text-warning">${item.type2}</div>
                                    <div class="text-warning">${item.type3}</div>
                                </td>
                                <td>${item.originCountry}</td>
                                <td>${item.maker}</td>
                                <td><span class="price"><strong><fmt:formatNumber value="${item.sellPrice}"/></strong>원</span></td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    </c:otherwise>
                    </c:choose>

                    <div class="btn_action mt10">
                        <button type="button" class="btn btn_default" onclick="alert('준비중입니다')">선택상품 비교</button>
                    </div>
                    <div class="dataTables_paginate paging_simple_numbers text-center">${paging}</div>
                </div>

                <div id="DescBody" class="goods_view"></div>
            </div>
        </div>
        <%@ include file="/WEB-INF/jsp/shop/include/quick.jsp" %>
    </div>

    <div id="footer">
        <%@ include file="/WEB-INF/jsp/shop/include/footer.jsp" %>
    </div>
</div>

<%@ include file="/WEB-INF/jsp/shop/include/view_detail.jsp" %>
</body>
</html>
