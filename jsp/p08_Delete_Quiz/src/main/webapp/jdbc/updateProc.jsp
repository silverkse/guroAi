<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Connection conn = null;
PreparedStatement pstmt = null;

int num = Integer.parseInt(request.getParameter("num"));
int price = Integer.parseInt(request.getParameter("price"));

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
	
	String sql = "update goodsList set price = ? where num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, price);
	pstmt.setInt(2, num);
	
	int resCnt = pstmt.executeUpdate();
%>	
<script>	
<%	
	if (resCnt == 1) {
%>
		alert("수정이 완료되었습니다.");
		location.href="list.jsp";
		
<%	} else { 	%>

		alert("수정에 실패했습니다.")
<%	} %>
</script>

<%	
} catch (ClassNotFoundException e) {
	System.out.print(e.getMessage());
} catch (SQLException e) {
	System.out.print(e.getMessage());
}
%>