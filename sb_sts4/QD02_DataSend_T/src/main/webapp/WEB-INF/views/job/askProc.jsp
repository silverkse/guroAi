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
	
		<h1>수신 데이터</h1>
		<hr>
		<p>이름 : ${applyCommand.userName }</p>
		<p>연락처 : ${applyCommand.userPhone }</p>
		<p>지원분야 : ${applyCommand.applyPart }</p>
		<p>지원 동기 : ${applyCommand.applyMotive }</p>
		<p>- End</p>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    