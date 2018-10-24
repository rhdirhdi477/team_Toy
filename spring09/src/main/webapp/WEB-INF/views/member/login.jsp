<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="//sstatic.ssgcdn.com/ui/ssg/css/common/layout.css">
<link rel="stylesheet" type="text/css" href="//sstatic.ssgcdn.com/ui/ssg/css/popup.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="//sstatic.ssgcdn.com/ui/ssg/js/lib/jquery-1.9.1.min.js"></script>
<script src="../include/jquery-3.3.1.min.js"></script>
<%@ include file="../include/header.jsp" %>
<script>
$(function(){
	$("#btnLogin").click(function(){
		var userid=$("#userid").val(); //태그의 value 속성값
		var passwd=$("#passwd").val();
		if(userid==""){
			alert("아이디를 입력하세요.");
			$("#userid").focus(); //입력 포커스 이동
			return; //함수 종료
		}
		if(passwd==""){
			alert("비밀번호를 입력하세요.");
			$("#passwd").focus();
			return;
		}
		//폼 데이터를 서버로 제출
		document.form1.action="${path}/member/login_check.do";
		document.form1.submit();
	});
});

function find() {
	window.open("${path}/member/find.do", "find", "width=600px, height=400px, top=300px, left=650px");
}
function findPwd() {
	window.open("${path}/member/find2.do", "find", "width=600px, height=400px, top=300px, left=650px");
}
</script>
</head>
<body>
<div id="pop_wrap" align="center">
<div id="pop_header">
        <h1>로그인</h1>
    </div>
<form name="form1" method="post">
<hr>
    <div id="pop_container">
        <div id="pop_content" class="content_primary login member">
            <div class="section">
                <h2 class="blind">로그인</h2>
                <form id="form1" method="post">
                <p class="option_select small">
                    <label class="radio_state" for="membership01"><input
									id="membership01" type="radio" class="radio membership01"
									name="member01" title="회원 선택" checked="checked">회원</label>
                    <label class="radio_state" for="membership02"><input
									id="membership02" type="radio" class="radio membership02"
									name="member01" title="비회원 선택"> 비회원(주문조회)</label>
                </p>
                
<fieldset class="fieldset">
	 <div class="field">
                        <label for="user_id" class="label">아이디</label>
                        <div class="insert">
                            <input type="text" name="userid"
											id="userid" placeholder="아이디를 입력해 주세요."
											class="input_text medium" style="width:310px;">
                        </div>
                    
	  <div class="field">
                        <label for="password_insert" class="label">비밀번호</label>
                        <div class="insert">
                            <input type="password" name="passwd"
											id="passwd" placeholder="비밀번호를 입력해주세요"
											class="input_text medium" style="width:310px;">
                        </div>
       </div>
                        <div class="login_find">
                        <label for="keep_id" class="keep_id">
                        <input type="checkbox" id="keep_id" name="keep_id"  class="checkbox"> 아이디 저장</label>
                        <a class="aInsignin" href="#" onclick="find()">아이디 찾기</a> 
                    </div>
                     <div class="bn_ar">
                    <input type="button" id="btnLogin"  class="bn btn_login color3" value="로그인">
                    </div>
                    </div>
                    </fieldset>
                   
                   
	<tr>
		<td colspan="2" align="center">
			

			<c:if test="${param.message == 'nologin' }">
				<div style="color:red;">
					로그인 하신 후 사용하세요.
				</div>				
			</c:if>
			<c:if test="${message == 'error' }">
				<div style="color:red;">
					아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>
			<c:if test="${message == 'logout' }">
				<div style="color:blue;">
					로그아웃 처리되었습니다.
				</div>
			</c:if>
		</td>
	</tr>
</form>
</div>            
</div>
 <div class="advertising">
                  <a href="#" target="_self">
                  <img src="${path}/images/set2.png"
							alt="Sale Product">
                  </a>
</div>

<a href="${path}/member/home.do" class="w3-bar-item w3-button"><i class="fa fa-twitter"><p><strong>HOME</strong></p></i></a>


</body>

</html>
