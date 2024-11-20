<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h2>수신된 데이터(numData) : ${param.numData } </h2>
		
		<c:choose>
			<c:when test="${param.numData > 0}">
				<h3>양수입니다.</h3>
			</c:when>
			<c:when test="${param.numData < 0}">
				<h3>음수입니다.</h3>
			</c:when>
			<c:otherwise>
				<h3>0입니다.</h3>
			</c:otherwise>
		</c:choose>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    