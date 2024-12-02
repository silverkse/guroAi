<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	
	<%@ include file="../layout/header.jsp" %>
	
	<div id="mainWrap" class="wrap">
		<h1>로그인 페이지</h1>
		<hr>
		<form id="loginForm">
			<div class="loginFormInnerDiv">
				<label>
					<input type="text" name="userid" id="userid" placeholder="아이디 입력" autofocus>
				</label>
			</div>
			<div class="loginFormInnerDiv">
				<label>
					<input type="password" name="password" id="password" placeholder="비밀번호 입력">
				</label>
			</div>
			<button type="button" id="loginBtn">Login</button>
		</form>
	</div>
	<!-- div#mainWrap.wrap -->
	
	<%@ include file="../layout/footer.jsp" %>
	
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    