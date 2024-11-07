<%@page import="pack.jdbc.DBConn"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
int numParam = Integer.parseInt(request.getParameter("numParam"));
out.print("numParam : " + numParam);

DBConn dbConn = new DBConn();
dbConn.mtdDBConn();
boolean chk = dbConn.mtdDelete(numParam);
%>

<script>
<% if(chk) { %>
	alert("수정되었습니다.");
	location.href="list.jsp";
<% } else { %>
	alert("문제가 발생했습니다.");
	history.back();
<% } %>

</script>	
