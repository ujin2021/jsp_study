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
<%
	//1. 선택한 물건과 수량을 가지고 와야 한다.
	String fruit = request.getParameter("fruit");
	String count = request.getParameter("count");
	
	//2. 장바구니에 넣어야 함.
	ArrayList list = null;
	if(session.getAttribute("basket") == null){
		list = new ArrayList();
		list.add(fruit + "," + count);
	}
	else{
		list = (ArrayList)session.getAttribute("basket"); //bascket을 arraylist로 바꿔서 가져옴
		list.add(fruit + "," + count);
	}
	session.setAttribute("basket", list);
%>
장바구니에 물건이 추가되었습니다.
<%= list.size() %>개의 물건이 장바구니에 있습니다.
</body>
</html>