<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>

	<div class="inner-contents">
		<!-- ! inner-contents Start -->
		<div class="border-box02 use-box m-type">
			<!-- UserBox01 Start -->
			<h3 class="subtitle type02">정보 수정</h3>
			<div class="bg-contents pType">
				<div class=" modify-box type02">
					<form name="mfm" style="display: inline;">
					

						<div class="right-box contents-table type04">
							<table class="request" cellspacing="0">
								
								<colgroup>
									<col style="width: 18.5%;">
									<col style="width: 81.5%;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><p class="innerTxt">성명</p></th>
										<td class="tleft"><span>전영배</span></td>
									</tr>
									<tr>
										<th scope="row"><p class="innerTxt">아이디</p></th>
										<td class="tleft"><span>rhdirhdi4777</span></td>
									</tr>
									<tr>
										<th scope="row"><p class="innerTxt">소환사명</p></th>
										<td class="tleft"><span>헹헹헹헝헝헝</span></td>
									</tr>
									<tr>
										<th scope="row"><p class="innerTxt" id="emailSection">
												<span>이메일</span>
											</p></th>
										<!-- class="ch_pop_txt" 레이어팝업 생성시 -->
										<td class="tleft riot-vf riot-vf--email" data-vf=""
											data-target="rhdirhdi477@naver.com" data-text="이메일"
											data-type="email"><div class="riot-vf--fail">
												<span class="riot-vf__icon"></span>rhdirhdi477@naver.com
												<button class="riot-vf__btn riot-vf__btn-modify"
													type="button">이메일 수정</button>
												<p class="riot-vf__message">
												<div class="riot-vf__message--fail">인증받지 않은 이메일입니다.</div>
												</p>
											</div></td>
									</tr>
									<tr>
										<th scope="row"><p class="innerTxt">
												<span>휴대전화</span>
											</p></th>
										<td class="tleft riot-vf riot-vf--mobile" data-vf="1"
											data-target="010-4420-0553" data-text="휴대전화" data-type="sms"><div
												class="riot-vf--success">
												<span class="riot-vf__icon"></span>010-4420-0553
												<button class="riot-vf__btn riot-vf__btn-modify"
													type="button">휴대전화 수정</button>
												<p class="riot-vf__message">
												<div class="riot-vf__message--success">인증받은 휴대전화입니다.</div>
												</p>
											</div></td>
									</tr>
									<tr>
										<th scope="row"><p class="innerTxt">격전 인증</p></th>
										<td class="tleft riot-vf riot-vf--clash" data-vf=""
											data-target="200349132" data-text="격전" data-type="clash"
											data-revokable="1"><div class="riot-vf--fail">
												<span class="riot-vf__icon"></span>격전 인증이 완료되지 않았거나 인증 취소
												가능한 제한 횟수를 초과하였습니다.
											</div></td>
									</tr>
									<tr class="end">
										<th scope="row"><p class="innerTxt">
												<span>정보 수신 설정</span>
											</p></th>
										<td class="tleft">
											<div class="receive-agree">
												<p class="agree-check type02">
													<label id="mail_agree"> <input name="mail_agree"
														type="checkbox" data-text="이메일" data-channel="email">
														이메일 수신 동의 (라이엇 게임즈의 게임/이벤트 정보의 수신 여부)
													</label>
												</p>
												<p class="agree-check type02">
													<label id="sms_agree"> <input name="sms_agree"
														type="checkbox" data-text="SMS" data-channel="sms">
														SMS 수신 동의 (라이엇 게임즈의 게임/이벤트 정보의 수신 여부)
													</label>
												</p>
												<div class="receive-agree__message"></div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<!-- ch_pop_layer -->
							<div class="ch_pop_layer" id="viewEmailPopupLayer"
								style="display: none;">
								<div class="border-box02">
									<h3 class="subtitle type02">정보 확인</h3>
									<div class="bg-contents">
										해당 연락처는 정확하지 않거나, 개인 정보 도용이 의심되어 차단되어 있습니다.<br> 본인이 사용하는
										연락처가 맞을 경우 KOR-PRIVACY@RIOTGAMES.COM으로<br> 이메일을 보내주시기
										바랍니다.
									</div>
								</div>
							</div>
							<!-- //ch_pop_layer -->
							<!-- ch_pop_layer -->
							<div class="ch_pop_layer" id="viewPhonePopupLayer"
								style="display: none;">
								<div class="border-box02">
									<h3 class="subtitle type02">정보 확인</h3>
									<div class="bg-contents">
										해당 연락처는 정확하지 않거나, 개인 정보 도용이 의심되어 차단되어 있습니다.<br> 본인이 사용하는
										연락처가 맞을 경우 KOR-PRIVACY@RIOTGAMES.COM으로<br> 이메일을 보내주시기
										바랍니다.
									</div>
								</div>
							</div>
							<!-- //ch_pop_layer -->
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- ! inner-contents End -->
	</div>


</body>
</html>