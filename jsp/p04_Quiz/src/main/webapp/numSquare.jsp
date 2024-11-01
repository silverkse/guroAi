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
		<p>숫자입력(3 ~ 9 사이 값 입력)</p>
		<form action="numSquare.jsp">
			<input type="text" name="max">
			<button>결과보기</button>
		</form>
		<div id="resArea">
			<p>[출력영역]</p>
			<br>
			<div id="res">
				<%
				String txt = "";
				if(request.getParameter("max") != null && !request.getParameter("max").isEmpty()) {
					int max = Integer.parseInt(request.getParameter("max"));
					if(max < 3 || max > 9 ) {
						txt = "입력 오류!<br>다시 입력해주세요.<br>";
					} else {
						int num = 1;
						
						for(int i = 0; i < 10; i++) {
							for(int j = 0; j < 10; j++) {
								txt += num + " ";
								num++;
								if(num > max) {
									num = 1;
								}
							}
							txt += "<br>";
						}
					}
					txt += "<br><br><button id='restart'>재실행</button>";
				}
				%>
				<%=txt %>
			</div>
		</div>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    