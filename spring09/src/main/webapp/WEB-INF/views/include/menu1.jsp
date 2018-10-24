<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>


div, ul, li {
	margin: 5;
	padding: 0;
}

#blogMenu {
	margin: 0px 0px 0px 0px;
	padding: 0 0 8px 8px;
	background-color: black;
}

#blogMenu ul li {
	float: left;
	list-style-type: none;
}

#blogMenu a {
	height: 16px;
	color: #f1f1f1;
	font-family: arial;
	font-size: 12px;
	padding: 0 10px 0 10px;
	text-decoration: none;
}

#blogMenu a:hover {
	color: #D4F4FA;
	border-bottom: 3px solid #FAED7D;
}

#blogMenu ul ul {
	display: none;
	position: absolute;
	background-color: #5c5c5c;
}

#blogMenu ul li:hover ul {
	display: block;
}

#blogMenu ul ul li {
	float: none;
}
</style>


	<div id="blogMenu">
		<ul>
			<li><a href="${path}/member/home.do">Home</a></li>
			<li><a href="${path}/memo/list.do">메모장</a></li>
			<li><a href="${path}/board/list.do">공지사항</a></li>
			<li><a href="${path}/shop/product/list.do">상품목록</a>

				<ul>
					<li><a href="${path}/shop/product/list.do">건담</a></li>
					<li><a href="${path}/shop/product/list2.do">미니카</a></li>
					<li><a href="${path}/shop/product/list3.do">건물</a></li>
					<li><a href="${path}/shop/product/list4.do">제트기</a></li>
				</ul></li>
			<c:if test="${sessionScope.admin_userid != null }">
				<li><a href="${path}/shop/product/write.do">상품등록</a></li>
			</c:if>
			<c:if test="${sessionScope.userid != null }">
				<li><a href="${path}/shop/cart/list.do">장바구니</a></li>
			</c:if>
		</ul>
		<div style="text-align: right;">
			<c:choose>
				<c:when test="${sessionScope.userid == null }">

					<!-- 로그인하지 않은 상태 -->
					<a href="${path}/member/write.do">회원가입</a> |
	    <a href="${path}/member/login.do">로그인</a> |
	    <a href="${path}/admin/login.do">관리자 로그인</a>
				</c:when>
				<c:otherwise>
					<!-- 로그인한 상태 -->
					<span> ${sessionScope.name}</span>님이 로그인중입니다.
        <a href="${path}/member/logout.do">로그아웃</a>|
        <a href="${path}/member/pagego.do">회원정보</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

</body>