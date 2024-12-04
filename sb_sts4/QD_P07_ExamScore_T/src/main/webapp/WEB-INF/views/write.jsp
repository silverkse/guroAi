<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>수험결과 입력</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>수험결과 입력</h1>
		<hr>
		<form action="/insProc" id="insForm">
			<label>
				<span>수험번호</span>
				<input type="text" name="code" required autofocus>
			</label>
			<label>
				<span>이름</span>
				<input type="text" name="userName" required>
			</label>
			<label>
				<span>국어</span>
				<input type="text" name="kor" required>
			</label>
			<label>
				<span>한국사</span>
				<input type="text" name="history" required>
			</label>
			<label>
				<span>연락처</span>
				<input type="text" name="phone" required>
			</label>
			
			<hr>
			
			<div id="btnArea">
				<button>저장</button>
				<button type="button" id="listBtn">목록</button>
			</div>
			
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    