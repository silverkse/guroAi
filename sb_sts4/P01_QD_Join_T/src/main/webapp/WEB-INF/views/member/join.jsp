<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>QD02_네이버 회원가입</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>NAVERasdf</h1>
		
		<form id="joinFrm">
			<div class="insDiv">
				<h5>아이디</h5>
				
				<div class="insArea">
					<input type="text">
					<span>@naver.com</span>
				</div>
				
			</div>
			<!-- div.insDiv -->
			
			<div class="insDiv">
				<h5>비밀번호</h5>
				
				<div class="insArea">
					<input type="password">
					<span>
						<img src="/images/pw_01.png" alt="비밀번호 아이콘">
					</span>
				</div>
				
			</div>
			<!-- div.insDiv -->
			
			<div class="insDiv">
				<h5>비밀번호 재확인</h5>
				
				<div class="insArea">
					<input type="password">
					<span>
						<img src="/images/pw_02.png" alt="비밀번호 아이콘">
					</span>
				</div>
				
			</div>
			<!-- div.insDiv -->
			
			<div class="insDiv">
				<h5>이름</h5>
				
				<div class="insArea">
					<input type="text">
					<span></span>
				</div>
				
			</div>
			<!-- div.insDiv -->
			
			<button>가입하기</button>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    