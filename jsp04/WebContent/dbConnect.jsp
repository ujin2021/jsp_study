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
	// 1. connector ���� 
	Class.forName("com.mysql.jdbc.Driver");
	out.print("1. connector ���� ����<br>");
	
	// 2. db ����
	String url = "jdbc:mysql://localhost:3306/jsp1";
	String user = "root";
	String password = "1234";
	Connection con = DriverManager.getConnection(url, user, password);
	out.print("2. db���� ����<br>");
	
	// 3. sql�� �����
	String sql = "insert into member values ('win', 'win', 'win', 'win')";
	PreparedStatement ps = con.prepareStatement(sql); //sql�̶�°� �˷��ִ°�
	out.print("3. sql�� ����� ����<br>");
	
	/*
	String site = "http://www.naver.com";
	URL url = new URL(site);
	�׳� String site�� �ϸ� �׳� string���θ� �ν�. -> url�̶�� �˷������.(��ü?)
	*/
	
	// 4. sql�� �����ϱ�
	ps.executeUpdate();
	out.print("4. sql�� �����ϱ� ok<br>");
%>






</body>
</html>