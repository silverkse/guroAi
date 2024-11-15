<%@page import="pack.dto.DataBean"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="fuo" class="pack.ex.FUO" />
    
<%
DataBean dataBean = new DataBean();
fuo.mtdUpload(request, dataBean);

%>

<jsp:useBean id="dao" class="pack.jdbc.DBConn" />

<%
dao.mtdDBConn();
boolean dbChk = dao.mtdInsert(request, dataBean);

%>
	
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
		location.href="goodsList.jsp";
	</script>
</body>
</html>    