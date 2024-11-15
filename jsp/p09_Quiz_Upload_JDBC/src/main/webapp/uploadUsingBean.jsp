<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="fuo" class="pack.ex.FUO" />
<jsp:useBean id="dao" class="pack.jdbc.DBConn" />

<%
boolean upChk = fuo.mtdUpload(request);
MultipartRequest multiReq = fuo.mtdSendData();
dao.mtdDBConn();
boolean dbChk = dao.mtdInsert(multiReq);
%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>업로드 페이지</h1>
		
		<main id="main">
		<% if(upChk && dbChk) {%>
			<p>파일 업로드 및 DB 저장 성공!!</p>
		<% } else { %>
			<p>업로드 실패!</p>
		<% } %>
		</main>
		
		<button type="button" onclick="history.back()">돌아가기</button>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    