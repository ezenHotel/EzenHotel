<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" autoFlush="true"%>

<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="/style/style_common.css">
<link rel="stylesheet" href="/style/style_userJoin.css">
<script src="/source/jquery-3.6.0.min.js"></script>
<script src="/script/script_userLogin.js"></script>
</head>
<body>
	<%@ include file="/common/header.jsp"%>
	<div id="wrap" class="loginWrap">


		<main id="main" class="dFlex">

			<!-- 실제 작업 영역 시작 -->
			<div id="contents" class="loginDiv">

				<form id="loginFrm" name="loginFrm">
					<%
					String isOK = request.getParameter("isOK");
					if (isOK != null) {
					%>
					<div id="err" style="color: red; padding-bottom: 10px;">
						일치하는 회원 정보 없음<br> 아이디 혹은 비밀번호를 확인해주세요.
					</div>
					<script>
						$("div#err").fadeTo(500, 0.1, function() {
							$("div#err").fadeTo(500, 1, function() {
								$("div#err").fadeTo(500, 0.1, function() {
									$("div#err").fadeTo(500, 1, function() {
									})
								})
							})
						});
					</script>
					<%
					}
					%>
					<div id="loginArea">
						<div id="loginInput">
							<input type="text" name="uid" placeholder="아이디 입력"> <input
								type="password" name="upw" placeholder="비밀번호 입력">
						</div>

						<button type="button" id="loginBtn">로그인</button>
					</div>
					<!-- div#loginArea -->

				</form>

			</div>
			<!-- 실제 작업 영역 끝 div.loginDiv -->

		</main>
		<!--  main#main  -->


		<!--  푸터템플릿 시작 -->
		<%@ include file="/common/footer.jsp"%>
		<!--  푸터템플릿 끝 -->

	</div>
	<!-- div#wrap -->

</body>
</html>

