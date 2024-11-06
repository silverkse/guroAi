<%@page import="pkg.jdbc.DBConn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dataBean" class="pkg.jdbc.DataBean" scope="page" />
<jsp:setProperty name="dataBean" property="*" />

<%
String prnTxt = "";
DBConn dbConn = new DBConn();

if(dbConn.mtdInsChk(dataBean)) {
	prnTxt = "데이터 입력 완료";
} else {
	prnTxt = "데이터 입력 실패";
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
	<div id="wrap" class="insert">
		<p><%=prnTxt %></p>
		<button>돌아가기</button>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
		$(function() {
			$("button").click(() => {
				location.href="/jdbc/form.html";
			});
		});
	</script>
</body>
</html>    