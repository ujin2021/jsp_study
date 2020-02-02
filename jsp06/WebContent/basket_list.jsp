<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>장바구니 목록입니다.</h3>
<%
	ArrayList list = (ArrayList)session.getAttribute("basket"); //형변환(session : object니까 arraylist같이 작은걸로바궈줘야함)
	
	for(int i = 0; i < list.size(); i++){
		out.print(list.get(i) + "<br>");
	}
%>
</body>
</html>