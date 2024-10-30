<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>로그인</h1>
		<form action="welcome.jsp">
			<div id="loginArea">
				<input type="text" name="uid" id="uid" placeholder="아이디 입력" autofocus>
				<input type="password" name="upw" id="upw" placeholder="비밀번호 입력">
				<button>로그인</button>
			</div>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    