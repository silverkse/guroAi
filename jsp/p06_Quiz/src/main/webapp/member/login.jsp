<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

%>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="login">
		<h1>로그인 페이지</h1>
		<div id="gnbWrap" class="dFlex">
			<div class="menu">HOME</div>
			<div class="menuBar">|</div>
			<div class="menu">회원가입</div>
			<div class="menuBar">|</div>
			<div class="menu homeMenu" id="logInOutBtn">로그인</div>
		</div>
		<hr>
		<form action="loginProc.jsp" id="loginFrm">
			<input type="text" placeholder="아이디 입력" name="uid" autofocus>
			<input type="password" placeholder="비밀번호 입력" name="upw">
			<button>로그인</button>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    