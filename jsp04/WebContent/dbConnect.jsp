<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
	
	// 2. db 연결
	String url = "jdbc:mysql://localhost:3306/jsp1";
	String user = "root";
	String password = "1234";
	Connection con = DriverManager.getConnection(url, user, password);
	out.print("2. db연결 성공<br>");
	
	// 3. sql문 만들기
	String sql = "insert into member values ('win', 'win', 'win', 'win')";
	PreparedStatement ps = con.prepareStatement(sql); //sql이라는것 알려주는거
	out.print("3. sql문 만들기 성공<br>");
	
	/*
	String site = "http://www.naver.com";
	URL url = new URL(site);
	그냥 String site라 하면 그냥 string으로만 인식. -> url이라고 알려줘야함.(객체?)
	*/
	
	// 4. sql문 전송하기
	ps.executeUpdate();
	out.print("4. sql문 전송하기 ok<br>");
%>






</body>
</html>