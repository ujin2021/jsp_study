<%@page import="java.sql.DriverManager"%>
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
// 1. connector ����
Class.forName("com.mysql.jdbc.Driver");
out.print("1. connector ���� ����<br>");

// 2. db����
String url = "jdbc:mysql://localhost:3306/jsp1";
String user = "root";
String password = "1234";

DriverManager.getConnection(url, user, password);
out.print("2. DB���� ����");

// 3. sql�� �����
// 4. sql�� mysql������ ����

%>
</body>
</html>