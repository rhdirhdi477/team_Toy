<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script>
/* $(window).load(function () {
	$("#findId").click(findId);
	
}); */
$(function() {
	$("#btnfindId").click(function() {
		document.form1.action="${path}/member/idFind.do";
		document.form1.submit();
		
	});
});
</script>
</head>
<body>
<div style="text-align: center;">     
	<br><br>
	<h3>아이디 찾기</h3>
	<br><br>

 <form name="form1" method="post" >
		<div class="input-td" style="text-align: center;">
			<input class="input-join" id="email" name="email" placeholder="이메일입력" >
		</div><br>
		<c:if test="${message == 'error' }">
				<div style="color:red;">
					이메일이 일치하지 않습니다.
				</div>
			</c:if>

	 	<br><br>
	 	<input class="btn-Type4" type="button" value="아이디 찾기"  id="btnfindId">
	 	
	 	<input class="btn-Type4" type="button" value="닫기" onclick="window.close();">
	</div> 
	</form>  




</body>
</html>