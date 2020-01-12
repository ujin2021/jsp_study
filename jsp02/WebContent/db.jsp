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
// 1. connector 설정
Class.forName("com.mysql.jdbc.Driver");
out.print("1. connector 설정 성공<br>");

// 2. db연결
String url = "jdbc:mysql://localhost:3306/jsp1";
String user = "root";
String password = "1234";

DriverManager.getConnection(url, user, password);
out.print("2. DB연결 성공");

// 3. sql문 만들기
// 4. sql문 mysql서버로 전송

%>
</body>
</html>