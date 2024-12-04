<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>JSP 소스</title>
	<style>
		div#wrap {
			width: 400px;
			padding: 10px;
			border: 3px solid #aaa;
			border-radius: 6px;
			margin: 20px auto;
		}
		p {
			color: #08f;
			font-size: 20px;
			font-weight: bold;
		}
 </style>
</head>
<body>
	<div id="wrap">
		<h1>Live Reload</h1>
		<hr>
		<p><%= new java.util.Date() %></p>
		<p>${ 20 / 5 }</p>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    