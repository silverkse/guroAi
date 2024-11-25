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
	<div id="wrap">
		<header id="header">
			<img src="/images/m_naver_logo_20191126_2.png" alt="네이버 로고">
		</header>
		
		<form action="#">
			<div id="insArea">
				<div class="subInpArea">
					<p>아이디</p>
					<input type="text" name="uid" id="uid" placeholder="@naver.com" autofocus>
				</div>
				<div class="subInpArea">
					<p>비밀번호</p>
					<div class="pwIcon">
						<input type="password" name="upw" id="upw">
						<img src="/images/pw_01.png" alt="잠금이미지">
					</div>
				</div>
				<div class="subInpArea">
					<p>비밀번호 재확인</p>
					<div class="pwIcon">
						<input type="password" name="repw" id="repw">
						<img src="/images/pw_02.png" alt="잠금체크이미지">
					</div>
				</div>
				<div class="subInpArea">
					<p>이름</p>
					<input type="text" name="uname" id="uname">
				</div>
			</div>
			<!-- div#insArea -->
			
			<div id="btnArea">
				<button type="button">가입하기</button>
			</div>
		</form>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    