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
<%
	for(int i = 0; i < list.size(); i++){
		BbsDTO dto2 = list.get(i);
%>
id : <%= dto2.getId() %><br>
title : <%= dto2.getTitle() %><br>
content : <%= dto2.getContent() %><br>
writer : <%= dto2.getWriter() %><br><br>
<%
	}
%>
</body>
</html>