<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
	<style>
		div#wrap {
			width: 600px;
			padding: 20px;
			border: 6px solid #aaa;
			border-radius: 3px;
			margin: 20px auto;
		}
		p {
			font-size: 30px;
		}
	</style>
</head>
<body>
	<div id="wrap">
		<h1>SimpleView 페이지 = View 페이지 = View</h1>
		
		<p>
			컨트롤러에서 생성된 데이터 : 
			${result }
			${requestScope.result }
		</p>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    