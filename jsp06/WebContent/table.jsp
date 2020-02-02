<%@page import="shop.BbsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="shop.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	BbsDAO dao = new BbsDAO();
	ArrayList<BbsDTO> list = dao.list();
%>
게시물 수는 <%= list.size() %> 개 입니다.
<hr color="blue">
<table border="1">
<tr>
	<td>id</td>
	<td>title</td>
	<td>content</td>
	<td>writer</td>
</tr>
<%
	for(int i = 0; i < list.size(); i++){
		BbsDTO dto2 = list.get(i);
%>
<tr>
	<td><%= dto2.getId() %></td>
	<td><%= dto2.getTitle() %></td>
	<td><%= dto2.getContent() %></td>
	<td><%= dto2.getWriter() %></td>
</tr>
<%
	}
%>
</table>
</body>
</html>