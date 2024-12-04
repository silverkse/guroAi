<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="avgListWrap">
		<header id="header" class="dFlex">
			<h1>평균 석차</h1>
			<div id="btnArea">
				<button type="button" id="insBtn">입력</button>
				<button type="button" id="listBtn">목록</button>
			</div>
		</header>
		
		<main id="main">
			<div id="headerRow" class="listCol dFlex">
				<span>석차</span>
				<span>수험번호</span>
				<span>이름</span>
				<span>국어</span>
				<span>한국사</span>
				<span>평균</span>
			</div>
			<!-- div#headerRow -->
			
			<c:set var="i" value="0" />
			<c:forEach var="list" items="${scoreAvgList }">
				<div class="dataRow listCol dFlex">
					<span>${i=i+1 }</span>
					<span>${list.code }</span>
					<span>${list.userName }</span>
					<span>${list.kor }</span>
					<span>${list.history }</span>
					<span>${list.avg }</span>
				</div>
			</c:forEach>
			<!-- div.dataRow -->
			
		</main>
		<!-- main#main -->
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    