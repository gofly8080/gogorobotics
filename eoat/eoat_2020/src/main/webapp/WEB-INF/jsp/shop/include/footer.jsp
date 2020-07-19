<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script>
	function onPopCertMar(key){
		window.open('','self','height=700, width=650, status=yes, toolbar=no, menubar=no, location=no');
		document.CERTMARK_FORM.certMarkURLKey.value = key;
		document.CERTMARK_FORM.action='https://escrow.nonghyup.com/?certMarkURLKey=' + key;
		document.CERTMARK_FORM.target='self';
		document.CERTMARK_FORM.submit();
	}
</script>


<div class="foot_menu">
	<ul class="layout_inner">
		<!--<li><a href="#">회사소개</a></li>-->
		<!--li><a href="/shop/cscenter/guide">이용안내</a></li-->
		<li><a href="/shop/cscenter/policy">이용약관</a></li>
		<li><a href="/shop/cscenter/privacy">개인정보처리방침</a></li>
		<li><a href="/shop/cscenter/reject/email/collection">이메일 무단수집거부</a></li>
		<li><a href="/shop/cscenter/list/faq?categoryCode=10">자주하는 질문</a></li>
		<li><a href="/shop/about/board/detail/list/1">판매요청</a></li>
		<li><a href="/shop/about/board/detail/list/2">제휴문의</a></li>
		<!--li><a href="#">사이트맵</a></li-->
	</ul>
</div>

<%--&lt;%&ndash; 국제몰 &ndash;%&gt;--%>
<div class="layout_inner kukje_info">
	<p class="logo"><img src="/images/common/logo_btm.png" alt="국제몰" /></p>
	<p class="address">${add1}</p>
	<p class="address">${add2}</p>
	<p class="address">${add3}</p>
	<p class="account">${acount} </p>
	<p class="copyright">Copyright Kukjemedipharm. All right reserved</p>
	<p class="escrow_logo"><a href="/pg/lguplus/escrow.html" target="_blank" ><img src="/images/common/escrow_logo.jpg" alt="국제몰" /></a></p>
	<%--<p class="escrow_logo"><a href=""><img  src='https://escrow.nonghyup.com/images/IC/es/img_nh_mark01.gif' onclick="onPopCertMar('')" alt='에스크로이체로 결제하기' border='0'/></a></p>--%>
</div>

<FORM name='CERTMARK_FORM' METHOD='POST'>
	<input type="hidden" name="certMarkURLKey">
</FORM>

<iframe id="zeroframe" name="zeroframe" src="about:blank" width="0" height="0" frameborder="0"></iframe>
<script src="/upload/menuJson.js"></script>
<script src="/js/lib/jquery-1.10.2.min.js"></script>
<script src="/front-assets/js/plugin/jquery.tmpl.js"></script>
<script src="/js/lib/lodash.min.js"></script>
<script src="/front-assets/js/plugin/verticalslide/jquery.vaccordion.js"></script>
<script src="/front-assets/js/plugin/bootstrap.js"></script>
<script src="/front-assets/js/plugin/jquery.cookie-1.4.0.js"></script>
<script src="/js/common.js"></script>
<script type="text/javascript" src="/front-assets/js/common/common.js"></script>

