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
<h3>��ٱ��� ����Դϴ�.</h3>
<%
	ArrayList list = (ArrayList)session.getAttribute("basket"); //����ȯ(session : object�ϱ� arraylist���� �����ɷιٱ������)
	
	for(int i = 0; i < list.size(); i++){
		out.print(list.get(i) + "<br>");
	}
%>
</body>
</html>