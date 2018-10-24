<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- views/member/write.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>회원가입</title>
<%@ include file="../include/header.jsp" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           var fullRoadAddr = data.roadAddress; 
           var extraRoadAddr = ''; 
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           $("[name=addrdetail]").val(data.zonecode);
           $("[name=addrdetail2]").val(fullRoadAddr);
       }
    }).open();
}
	
function join() {
	//아이디 체크
	var userid = document.getElementById("userid");
	if (userid.value == "") {
		alert("아이디는 필수 입력입니다.");
		userid.focus();
		return;
	}
	/* //비밀번호 체크
	var passwd = document.getElementById("passwd");
	if (passwd.value == "") {
		alert("비밀번호는 필수 입력입니다.");
		passwd.focus();
		return;
	}
	//이름 체크
	var name = document.getElementById("name");
	if (name.value == "") {
		alert("이름을 입력하세요.");
		name.focus();
		return;
	}
	//이메일 체크
	var email = document.getElementById("email");
	if (email.value == "") {
		alert("이메일을 입력하세요.");
		email.focus();
		return;
	}
	//주소 체크
	var addrdetail = document.getElementById("addrdetail");
	if (addrdetail.value == "") {
		alert("우편번호 찾기를 누르세요.");
		addrdetail.focus();
		return;
	}
	var addrdetail2 = document.getElementById("addrdetail2");
	if (addrdetail2.value == "") {
		alert("우편번호 찾기를 누르세요.");
		addrdetail2.focus();
		return;
	} */
	
	document.form1.action="${path}/member/insert.do";
	document.form1.submit();
} 
 function checkId() {
	var transTextColor = document.getElementById("idConfirmArea");
	var userid = document.form1.userid.value;
	var regId = /^[a-zA-Z0-9]+$/;
	   
	if (!regId.test(userid)) {
		transTextColor.style.color = "red";
		document.getElementById("idConfirmArea").innerHTML = " 유효하지 않은 아이디입니다.";
		document.form1.userid.focus();
		return;
	}else {
		transTextColor.style.color = "green";
		document.getElementById("idConfirmArea").innerHTML = " 유효한 아이디입니다.";
	}
  
} 
 function find() {
	 var userid = document.form1.userid.value;
	/*  window.name = "parentForm"; */
	window.open("${path}/member/popup_checkNick/"+userid, "chkForm", "width=600px, height=400px, top=300px, left=650px, resizable = no, scrollbars = no");

	}
function checkEmail() {
	var transTextColor = document.getElementById("emailConfirmArea");
	var email = document.form1.email.value;
	var regEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	   
	if (!regEmail.test(email)) {
		transTextColor.style.color = "red";
		document.getElementById("emailConfirmArea").innerHTML = "올바르지 않은 이메일형식입니다.";
		document.form1.email.focus();
		return;
	}else {
		transTextColor.style.color = "green";
		document.getElementById("emailConfirmArea").innerHTML = " 유효한 이메일입니다.";
	}	
}
</script>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<div class="container">
<h2>회원가입</h2>
<form  name="form1"  id= "form1" method="post"  >
<div class="form-group">
아이디
    <input class="form-control" placeholder="숫자,알파벳을 이용한  아이디만 가능" 
    name="userid" id="userid"  type="text" onchange="checkId()" />
    <br><span class="confirmArea" id="idConfirmArea"> </span>
     <input type="button" id="authenticate" onclick="find()"value="중복확인"> 
</div>

<div class="form-group">
비밀번호
    <input class="form-control" placeholder="비밀번호" 
    name="passwd" id="passwd" type="password"  />
</div>

<div class="form-group">
이름
    <input class="form-control" placeholder="이름" 
    name="name" id="name" type="text"  />
</div>

<div class="form-group">
이메일
    <input class="form-control" placeholder="이메일" 
    name="email" id="email" type="text" onchange="checkEmail()" />
    <br><span class="confirmArea" id="emailConfirmArea"> </span>
</div>
<div class="form-group">
전화번호
    <input class="form-control" placeholder="전화번호" 
    name="ph" id="ph" type="text"  />
</div>

<div class="form-group">
주소<br>
    <input class="form-control" style="width: 40%; display: inline;" 
    placeholder="우편번호" name="addr" id="addr" type="text" 
    readonly="readonly" >
    <button type="button" class="btn btn-default" 
    onclick="execPostCode();">
    <i class="fa fa-search"></i> 우편번호 찾기</button>                               
</div>

<div class="form-group">
    <input class="form-control" style="top: 5px;" 
    placeholder="도로명 주소" name="addrdetail" id="addrdetail" type="text" 
    readonly="readonly" />
</div>
<div class="form-group">
    <input class="form-control" placeholder="상세주소" 
    name="addrdetail2" id="addrdetail2" type="text"  />
</div>

</div>	
<input type="button" id="btnJoin" class="btn btn-lg btn-success btn-block" onclick="join()"  value="가입">	
<c:if test="${message == 'join' }">
<div style="color:blue;">
회원가입이 완료 되었습니다.</div></c:if>
</form>
</body>
</html>
           