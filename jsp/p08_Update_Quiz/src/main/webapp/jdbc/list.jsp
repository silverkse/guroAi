<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String url ="jdbc:mysql://localhost:3306/sampleData?";
	url += "useSSL=false&";
	url += "useUnicode=true&";
	url += "characterEncoding=UTF8&";
	url += "serverTimezone=Asia/Seoul&";
	url += "allowPublicKeyRetrieval=true";
	
	String uid = "root";
	String pwd = "1234";
	conn = DriverManager.getConnection(url, uid, pwd);
	
	stmt = conn.createStatement();
	String sql = "select num, goodsCode, goodsName, price, cnt ";
	sql += "from goodsList ";
	sql += "order by num desc";
	rs = stmt.executeQuery(sql);

%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>JDBC 조회</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>상품목록</h1>
		
		<div id="goodsListArea">
			
			<div id="listHeader" class="listCol dFlex">
				<span>번호</span>
				<span>상품코드</span>
				<span>상품명</span>
				<span>가격</span>
				<span>재고</span>
			</div>
			<!-- div#listHeader, 게시판 목록의 열제목 -->
			

<% while(rs.next()) { %>
			<div class="listRow listCol dFlex">
				<span><%=rs.getInt("num") %></span>
				<span><%=rs.getString("goodsCode") %></span>
				<span><%=rs.getString("goodsName") %></span>
				<span><%=rs.getInt("price") %></span>
				<span><%=rs.getInt("cnt") %></span>
			</div>
			<!-- div.listCol, 게시판 목록의 내용 -->
<%} %>		
			<form action="updateProc.jsp">
				<div id="inputArea">
					<label>
						<span>수정할 상품번호</span>
						<input type="text" name="num" id="num">
					</label>
					<label>
						<span>수정할 상품가격</span>
						<input type="text" name="price" id="price">
					</label>
				</div>
				<div id="btnArea">
					<button>수정하기</button>
				</div>
			</form>	
		</div>
		<!-- div#goodsListArea -->
		
	</div>
<%
} catch (ClassNotFoundException e) {
	System.out.print(e.getMessage());
} catch (SQLException e) {
	System.out.print(e.getMessage());
}
%>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
		let numDom = document
	</script>
</body>
</html>    