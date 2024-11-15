<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="fdo" class="pack.ex.FDO" />

<%
request.setCharacterEncoding("UTF-8");
fdo.mtdDownload(request, response, out, pageContext);
%> 