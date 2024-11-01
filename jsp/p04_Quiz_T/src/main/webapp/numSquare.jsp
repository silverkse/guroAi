<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num = 0;
if (request.getParameter("num") != null ) {
	num = Integer.parseInt(request.getParameter("num"));
}

%>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<%
// 		out.print("num : " + num);
		String numPrn;
		if (num == 0) {
			numPrn = "";
		} else {
			numPrn = "" + num;
		}
		%>
		<p>숫자입력(3 ~ 9 사이 값 입력)</p>
		<form id="frm">
			<label>
				<input type="text" name="num" value="<%=numPrn %>">
				<button>결과보기</button>
			</label>
		
		</form>
		<%
		String squareRes = "";
		if (num>=3 && num<=9) {
		%>
		<h2>[출력영역]</h2>
		<%
		int cnt = 1;
		for(int i = 1; i<=100; i++) {
			squareRes += " " + cnt++ + " ";
			if(cnt > num) cnt=1;
			if(i % 10 == 0) squareRes += "<br>";
		}
		
		%>
		<%
		
			squareRes += "<button id='resetBtn'>재실행</button>";
		} else if (num != 0) {
		%>
			<h2>[출력영역]</h2>
		<%
			squareRes += "입력오류!<br>";
			squareRes += "다시 입력해주세요.<br>";
			squareRes += "<button id='resetBtn'>재실행</button>";
		} else {
			
		}
		%>		
		<div id="resArea">
		<%=squareRes %>
		</div>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    