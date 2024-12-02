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
	<div id="wrap" class="modi">
		<h1>개발자 지원서</h1>
		<hr>
		<form action="/modiProc">
			<div id="uData" class="regArea">
				<h2>개인정보</h2>
				<label>
					<span>이름</span>
					<span id="name">${desc.userName }</span>
				</label>
				<label>
					<span>연락처</span>
					<input type="text" name="phone" id="phone" value="${desc.phone }">
				</label>
			</div>
			<div id="selectField" class="regArea">
				<h2>지원 분야</h2>
				<label>
					<input type="radio" value="Java" name="field" ${desc.field == 'Java' ? 'checked' : '' }>
					<span>Java</span>
				</label>
				<label>
					<input type="radio" value="Android" name="field" ${desc.field == 'Android' ? 'checked' : '' }>
					<span>Android</span>
				</label>
				<label>
					<input type="radio" value="React" name="field" ${desc.field == 'React' ? 'checked' : '' }>
					<span>React</span>
				</label>
			</div>
			<div id="motiveArea" class="regArea">
				<h2>지원 동기</h2>
				<textarea name="motive" id="motive">${desc.motive }</textarea>
			</div>
			<div id="btnArea">
				<button>수정하기</button>
				<button type="reset">다시 쓰기</button>
				<button type="button" id="goList">리스트</button>
				<input type="hidden" name="num" value="${desc.num }">
			</div>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    