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
<%
String gName = request.getParameter("gName");
String type = request.getParameter("type");
String brand = request.getParameter("brand");
%>
	<div id="wrap">
		<h1>등록된 상품 정보</h1>
		<hr>
		<div id="dataArea">
			<ol>
				<li>
					<span>상품명 : <%= gName %></span>
				</li>
				<li>
					<span>분류 : <%= type %></span>
				</li>
				<li>
					<span>제조사 : <%= brand %></span>
				</li>
			</ol>
		</div>
		<div id="btnArea">
			<button id="goRegBtn">추가 등록하기</button>
		</div>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    