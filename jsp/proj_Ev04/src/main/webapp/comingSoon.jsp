<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
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
<%
// 오픈 날짜
String date = request.getParameter("date");
LocalDate openD = LocalDate.parse(date);

// 현재 날짜
LocalDate today = LocalDate.now();

// 남은 일 수 계산
long dayBetween = ChronoUnit.DAYS.between(today, openD);


%>
	<div id="wrap" class="comingSoon">
		<div id="dateArea">
			<div id="today">
				<p>
					<span>Today</span> 
					<input type="text" readonly value="<%=today.getYear() %>"> 년&nbsp;
					<input type="text" readonly value="<%=today.getMonthValue() %>"> 월&nbsp;
					<input type="text" readonly value="<%=today.getDayOfMonth() %>"> 일
				</p>
			</div>
			<div id="Open">
				<p>
					<span>Open</span>
					<input type="text" readonly value="<%=openD.getYear() %>"> 년&nbsp;
					<input type="text" readonly value="<%=openD.getMonthValue() %>"> 월&nbsp;
					<input type="text" readonly value="<%=openD.getDayOfMonth() %>"> 일
				</p>
			</div>
		</div>
		<div id="resArea">
			<h1>COMING SOON</h1>
			<h2>오픈 <%=dayBetween %>일전</h2>
		</div>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    