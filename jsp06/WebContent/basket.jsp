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
	//1. ������ ���ǰ� ������ ������ �;� �Ѵ�.
	String fruit = request.getParameter("fruit");
	String count = request.getParameter("count");
	
	//2. ��ٱ��Ͽ� �־�� ��.
	ArrayList list = null;
	if(session.getAttribute("basket") == null){
		list = new ArrayList();
		list.add(fruit + "," + count);
	}
	else{
		list = (ArrayList)session.getAttribute("basket"); //bascket�� arraylist�� �ٲ㼭 ������
		list.add(fruit + "," + count);
	}
	session.setAttribute("basket", list);
%>
��ٱ��Ͽ� ������ �߰��Ǿ����ϴ�.
<%= list.size() %>���� ������ ��ٱ��Ͽ� �ֽ��ϴ�.
</body>
</html>