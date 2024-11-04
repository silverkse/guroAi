<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dataProc" class="pkg.DataProc" scope="page" /> <!-- scope="page"는 안써도 자동으로 들어감 -->
<jsp:setProperty name="dataProc" property="*" />

<h2>사용자이름</h2>
<%-- <jsp:getProperty name="dataProc" property="userName" /> --%>
<%
out.print(dataProc.getUserName());
%>

<br>   

<h2>사용자아이디</h2>
<%-- <jsp:getProperty name="dataProc" property="uid" /> --%>
<%
out.print(dataProc.getUid());
%>
<br>   

<h2>사용자비밀번호</h2>
<%-- <jsp:getProperty name="dataProc" property="upw" /> --%>
<%
out.print(dataProc.getUpw());
%>
<br>   
   
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>데이터 수신</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    