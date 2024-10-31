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
		<h1>상품등록</h1>
		<hr>
		<form action="infoPrint.jsp">
			<div id="dataArea">
				<ul>
					<li>
						<label>
							<span class="sTitle">상품명</span>
							<input type="text" name="gName" autofocus>
						</label>
					</li>
					<li>
						<span class="sTitle">분류</span>
						<label>
							<span>신상품</span>
							<input type="radio" name="type" value="신상품" checked>
						</label>
						<label>
							<span>리퍼</span>
							<input type="radio" name="type" value="리퍼">
						</label>
					</li>
					<li>
						<label>
							<span class="sTitle">제조사</span>
							<select name="brand">
								<option value="삼성" selected>삼성</option>
								<option value="LG">LG</option>
								<option value="GE">GE</option>
							</select>
						</label>
					</li>
				</ul>
			</div>
			<div id="btnArea">
				<button>등록</button>
			</div>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    