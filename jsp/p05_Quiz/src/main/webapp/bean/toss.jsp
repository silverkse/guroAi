<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dataPrn" class="pkg.DataPrn" scope="page" />
<jsp:setProperty name="dataPrn" property="*" />
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>Bean 실행 페이지</h1>
		<hr>
		<h2>수신&amp;전송데이터 : <%=dataPrn.getData() %></h2>
		<p>(Eclipse에서 Console 창 확인)</p>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    