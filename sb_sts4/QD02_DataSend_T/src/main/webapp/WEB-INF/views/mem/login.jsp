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
		<form action="/receive" id="loginFrm">
			<h1>Log in</h1>
			<div class="insDiv">
				<p>Email</p>
				<input type="text" name="email">
			</div>
			<div class="insDiv">
				<p>Password</p>
				<input type="password" name="pwd">
			</div>
			<div id="btnArea">
				<button>Log in</button>
			</div>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    