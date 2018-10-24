<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<div class="thankyou" align="center">
<img src="${path}/images/thank.png"><br><br>
그동안 이용해 주셔서 감사합니다.

<a href="${path}/member/login.do"><input type="button" value="Login" ></a>
<a href="${path}/member/write.do"><input type="button" value="회원가입" ></a>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>