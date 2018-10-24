<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="../include/jquery-3.3.1.min.js"></script>
<%@ include file="../include/header.jsp" %>
<script>
		$(function()  {
			$("#btnCheck").click(function () {	
			var passwd = $("#passwd").val();
			if(passwd == "") {
				alert("비밀번호를 입력해주세요.");
				$("#passwd").focus();
				return;
			}
			document.form1.action="${path}/member/mypage.do";
			document.form1.submit();
		});
		});
	</script>
	<%@ include file="../include/menu.jsp" %>
</head>
<body>

<br><br>
<div id="pop_wrap" align="center">
<br>
<div id="pop_header">
<br>
<h1>정보 재확인</h1>
<br><br><br>
</div>
<br><br>
</div>
<br>
	<form name="form1" id="form1" method ="post">
	<div class="check1" align="center">
	<div class="hidden">
	<tr>
	 <td>아이디 </td>
	
                            <input type="text" name="userid"
											id="userid" 
											class="input_text medium" style="width:310px;">
			<td>비밀번호 </td>
					<td align="center">
						<input type="password" name="passwd" id="passwd">
					</td>
				</tr>
				
<input  id="btnCheck" type="button" value="확인" >
</div>
<tr>
		<td colspan="2" align="center">
			<c:if test="${message == 'error' }">
				<div style="color:red;">
					아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>
		</td>
	</tr>
</form>
</body>
</html>