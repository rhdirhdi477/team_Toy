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
<div id="pop_wrap">
<div id="memberLogin">
<h1>로그인</h1>
</div>
<hr>
<div id="pop_container">
<div id="pop_content" class="content_primary login member">
<div class="section">
<h2 class="blind">
::before
"로그인"
</h2>
<form id="loginForm method ="post" action="#">
<div class="asdf">
<img src="images/newpoint.png" alt="자바몰에 오신걸 환영합니다">
</div>
<p class ="option_select small">
<label class="radio_state" for="membership01">
<input id="membership01" type="radio" class="radioMembership01" name="member1" title="회원선택" checked="checked">
"회원"
</label>
<label class="radio_state" for="membership02"><input id="membership02" type="radio" class="radio membership02" name="member01" title="비회원 선택"> 비회원(주문조회)
</label>
</p>
<fieldset class="fieldset">
                    <legend>로그인 정보입력</legend>
                    <div class="field">
                        <label for="user_id" class="label">아이디</label>
                        <div class="insert">
                            <input type="text" name="mbrLoginId" id="user_id" placeholder="아이디 또는 이메일 주소를 입력해 주세요." class="input_text medium" style="width:290px;">
                        </div>
                    </div>
                    <div class="field">
                        <label for="password_insert" class="label">비밀번호</label>
                        <div class="insert">
                            <input type="password" name="password" id="password_insert" placeholder="비밀번호를 입력해주세요" class="input_text medium" style="width:290px;">
                        </div>
                    </div>
                    <div class="field captcha" style="display:none">
						<label for="captcha_response" class="label l_captcha">자동입력<br>방지문자</label>
						<div class="insert">
							<input type="text" id="captcha_insert" name="captcha_response" title="아래 이미지의 숫자/문자를 보이는 대로 입력해 주세요." class="input_text medium input_captcha">
						</div>
					</div>
					<div class="captcha_area captcha" style="display:none">
						<ul class="cpt_lst">
							<li><button type="button" class="btn_captcha" onclick="Captcha.refresh()"><span class="cpt_refresh">&nbsp;</span>새로고침</button></li>
							<li><button type="button" class="btn_captcha" onclick="Captcha.switchType()"><span class="cpt_sound_img">&nbsp;</span>음성으로 듣기</button></li>
						</ul>
					</div>
                    <div class="login_support_pannel">
                        <label for="keep_id" class="keep_id"><input type="checkbox" id="keep_id" name="keep_id" title="아이디 저장" class="checkbox"> 아이디 저장</label>
                        <a href="#" class="find_profile">아이디/비밀번호 찾기</a>
                    </div>
                    <div class="bn_ar">
                        <button type="submit" class="bn btn_login color3">로그인</button>
                        <div class="tt_ieupgrade" id="ieUpgrade">
					        <img src="//sstatic.ssgcdn.com/ui/ssg/img/common_layout/bn/bnr_ieupgrade.png" alt="앗! 해당 브라우저는 보안에 안전하지 않습니다. 브라우저를 업그레이드 하시거나 Chrome을 사용해주세요." usemap="#bnr_ieupgrade">
					        <map name="bnr_ieupgrade">
			                	<area id="btn_hide_ieupgrade" shape="rect" coords="43,161,142,187" href="javascript:void(0);" alt="오늘 안보기">
					        </map>
						</div>
                    </div>
                    <!-- [D] .warning_message start: 오류시 알림 표시 텍스트 영역 -->
                    <!-- //[D] .warning_message end -->
                <p class="warning_message small"><strong class="text">아이디 또는 이메일 주소를 입력해주세요.</strong></p></fieldset>
</div>
</form>
</div>
</div>
</div>




<%@ include file="../include/menu.jsp" %>
</body>
</html>