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
	<div id="wrap" class="res">
		<h1>${desc.userName } 지원 정보</h1>
		<hr>
		<p>연락처 : ${desc.phone }</p>
		<p>지원 분야 : ${desc.field }</p>
		<p>지원 동기 : ${desc.motive }</p>
		<div id="btnArea">
			<form action="/regModi">
				<button type="button" id="goList">리스트</button>
				<button type="button" id="goApply">입력</button>
				<button id="goModi">수정</button>
				<input type="hidden" name="num" value="${desc.num }">
			</form>
		</div>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    