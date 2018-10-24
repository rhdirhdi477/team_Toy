<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디조회 결과</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>

<div style="text-align: center; margin-top: 100px;">   
<h3>
	회원님의 아이디는 
		${userid}<span style="color: black; font-size: 15px; font-style: italic;"></span>
	입니다.
	<br><br><br>
	<input class="btn-Type4" type="button" value="닫기" onclick="window.close();">
</h3>
</div>

</body>
</html>