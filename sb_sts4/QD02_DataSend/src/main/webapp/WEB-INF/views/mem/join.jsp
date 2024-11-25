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
		<h1>Sign up</h1>
		<form action="/joinProc">
			<div id="insArea" class="join">
				<div class="inputBox">
					<p>Email</p>
					<input type="text" name="email">
				</div>
				<div class="inputBox">
					<p>Password</p>
					<input type="password" name="upw">
				</div>
				<label>
					<input type="checkbox" name="agree">
					<span class="custom-checkbox"></span>
					<span>Email me with news and updates</span>
				</label>
			</div>
		
			<div id="btnArea">
				<button>Sign up for free</button>
			</div>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    