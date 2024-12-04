<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="scoreList avgList">
		<header id="header" class="dFlex">
			<h1>평균 석차</h1>
			<div id="btnArea" class="dFlex">
				<button type="button" id="insBtn">입력</button>
				<button type="button" id="listBtn">목록</button>
			</div>		
		</header>
		
		<div id="listHeader" class="listRow dFlex">
			<span>석차</span>
			<span>수험번호</span>
			<span>이름</span>
			<span>국어</span>
			<span>한국사</span>
			<span>평균</span>
		</div>
		
		<c:forEach var="list" items="${list }" varStatus="rank">
			<div class="listRow dataRow dFlex">
				<span>${rank.index + 1 }</span>
				<span class="regNum">${list.regNum }</span>
				<span>${list.regName }</span>
				<span>${list.korScore }</span>
				<span>${list.hstoryScore }</span>
				<span>
<%-- 					<fmt:formatNumber> --%>
						${list.avgScore }
<%-- 					</fmt:formatNumber> --%>
				</span>
			</div>
		</c:forEach>
		
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    