<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>수험 정보</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="detailWrap">
		<h2>${detailData.userName } 수험 정보</h2>
		<hr>
		<main id="main">
			<ul id="detailList">
				<li>수험번호 : ${detailData.code }</li>
				<li>국어 : ${detailData.kor }</li>
				<li>한국사 : ${detailData.history }</li>
				<li>평균 : ${(detailData.kor + detailData.history) / 2 }</li>
				<li>연락처 : ${detailData.phone }</li>
				<li>등록시간 : ${detailData.regTM }</li>
			</ul>
			
			<div id="btnArea">
				<button type="button" id="listBtn">목록</button>
				<button type="button" id="insBtn">입력</button>
				<button type="button" id="modBtn">수정</button>
				<input type="hidden" id="num" value="${detailData.num }">
			</div>
		</main>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    