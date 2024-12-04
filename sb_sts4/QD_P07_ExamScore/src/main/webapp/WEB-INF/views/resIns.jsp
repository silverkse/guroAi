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
	<div id="wrap" class="resIns">
		<h1>수험결과 입력</h1>
		<hr>
		<form action="/resInsProc">
			<div class="insBox dFlex">
				<span>수험번호</span>
				<input type="text" name="regNum" id="regNum">
			</div>
			<div class="insBox dFlex">
				<span>이름</span>
				<input type="text" name="regName" id="regName">
			</div>
			<div class="insBox dFlex">
				<span>국어</span>
				<input type="text" name="korScore" id="korScore">
			</div>
			<div class="insBox dFlex">
				<span>한국사</span>
				<input type="text" name="hstoryScore" id="hstoryScore">
			</div>
			<div class="insBox dFlex">
				<span>연락처</span>
				<input type="text" name="regPhone" id="regPhone">
			</div>
			
			<hr>
			
			<div id="btnArea">
				<button>저장</button>	
				<button type="button" id="listBtn">목록</button>
			</div>
		</form>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    