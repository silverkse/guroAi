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
	<div id="wrap" class="desc">
		<h1>${data.regName } 수험 정보</h1>
		<hr>
		<p>수험번호 : ${data.regNum }</p>
		<p>국어 : ${data.korScore }</p>
		<p>한국사 : ${data.hstoryScore }</p>
		<p>평균 : ${data.avgScore }</p>
		<p>연락처 : ${data.regPhone }</p>
		<p>등록시간 : ${data.regTM }</p>
				
		<form action="/modify">
			<div id="btnArea" class="dFlex">
				<button type="button" id="listBtn">목록</button>
				<button type="button" id="insBtn">입력</button>
				<input type="hidden" name="regNum" value="${data.regNum }">
				<button>수정</button>	
			</div>
		</form>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    