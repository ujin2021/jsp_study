<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>���θ� ���� ��� Ȯ��</h3>
<hr color="pink">
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String about = request.getParameter("about");
	String sale = request.getParameter("sale");
	String[] price = request.getParameterValues("price");
	String notice = request.getParameter("notice");
	
	String result="";
	if(price != null){
		for(int i = 0; i < price.length; i++){
			result += price[i];
			result += " ";
		}
	}
	else
		result = "nothing";
%>
���� id : <%= id %><br>
���� �̸� : <%= name %><br>
���� ���� : <%= about %><br>
���� ���� : <%= sale %><br>
���� ���� : <%= result %><br>
���û��� : <%= notice %><br>
</body>
</html>