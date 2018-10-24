<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="//sstatic.ssgcdn.com/ui/ssg/css/popup.css">
<%@ include file="../include/header.jsp" %>
<style >
table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
    text-align: center;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
    text-align: center;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
table.type09 td input{ width: 350px;  text-align: center;
}

</style>
<script>
$(function(){
	$("#btnUpdate").click(function(){
		if(confirm("회원정보 수정이 완료되었습니다.")){
		document.form1.action="${path}/member/update.do";
		document.form1.submit();
		}
	});
	$("#btnDelete").click(function(){
		if(confirm("탈퇴하시겠습니까?")){
			document.form1.action="${path}/member/delete.do";
			document.form1.submit();
		}
	});
});
</script>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<div id="pop_wrap" align="center">
<div id="pop_header">
<h2>회원정보 수정</h2><br>
</div>
<form name="form1" method="post">
<div id="pop_container"align="center">
<table border="1" width="400px">
	<table class="type09">
    <tbody>
    <tr>
        <th scope="row">아이디</th>
        <td><input  name="userid" value="${sessionScope.userid}" readonly></td>
    </tr>
    <tr>
        <th scope="row">이름</th>
        <td><input name="name" value="${sessionScope.name}"></td>
    </tr>
    <tr>
        <th scope="row">이메일</th>
        <td><input name="email" value="${sessionScope.email}"></td>
    </tr>
     <tr>
        <th scope="row">연락처</th>
        <td><input name="ph" value="${sessionScope.ph}"></td>
    </tr>
     <tr>
        <th scope="row">도로명 주소</th>
        <td><input name="addrdetail" value="${sessionScope.addrdetail}"></td>
    </tr>
     <tr>
        <th scope="row">상세주소</th>
        <td><input name="addrdetail2" value="${sessionScope.addrdetail2}"></td>
    </tr>
    <tr>
        <th scope="row">회원 가입 일자</th>
        <td align="center"> <fmt:formatDate value="${sessionScope.join_date}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
    </tr>
   
    </tbody>
</table><br>

			<input type="button" value="회원정보 수정" id="btnUpdate">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="회원탈퇴" id="btnDelete">
			<div style="color: red;">${message}</div>	
	
</div>
</div>	
</form>
<br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="../include/footer.jsp" %>
</body>
</html>