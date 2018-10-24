<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
uri="http://java.sun.com/jsp/jstl/core" %>
<div class="w3-bar w3-black">    
<a href="${path}/shop/product/list5.do">상품목록</a> |
<a href="${path}/shop/product/write.do">상품등록</a> |
<a href="${path}/chart/chart1.do">판매차트</a> |
<a href="${path}/email/write.do">회원에게 이메일 발송</a> |
<a href="${path}/member/list.do">회원목록</a>
<div style="text-align:right;">
  <c:choose>
    <c:when test="${sessionScope.admin_userid == null }">
	    <!-- 로그인하지 않은 상태 -->
	    <a href="${path}/admin/login.do">관리자 로그인</a>
    </c:when>
    <c:otherwise>
        <!-- 로그인한 상태 -->
        ${sessionScope.admin_name}님이 로그인중입니다.
        <a href="${path}/admin/logout.do">로그아웃</a> 
    </c:otherwise>
  </c:choose>
</div>
</div>
