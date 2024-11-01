<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
double gNum = Double.parseDouble(request.getParameter("gNum"));
double eNum = Double.parseDouble(request.getParameter("eNum"));
double res = (eNum/gNum) * 100;
String pattern = "#,###.#";
DecimalFormat df = new DecimalFormat(pattern);
String resTxt = df.format(res);
%>

    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="resWrap">
		<%="취업률 : " + resTxt + " %" %>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    