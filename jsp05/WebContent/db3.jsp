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
	String id = request.getParameter("id");
	String tel = request.getParameter("tel");
%>
<%
	//1.�ٿ�ε� �޾Ҵ� connector����
	Class.forName("com.mysql.jdbc.Driver");
	out.print("1. connector ���� ok<br>");
	
	//2. �������� ����� ������ �̿��ؼ� ����
	String url = "jdbc:mysql://localhost:3306/jsp1";
	String user = "root";
	String password = "1234";
	Connection con = DriverManager.getConnection(url, user, password);
	out.print("2. db ���� ok<br>");
	
	//3. sql�� �ۼ�
	String sql = "update member set tel = ? where id = ?";
	//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
	//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, tel);
	ps.setString(2, id);
	out.print("3. sql�� ����� ok<br>");
	
	//4. sql�� db�� �����Ѵ�.
	ps.executeUpdate();
	out.print("4. sql�� db�� ���� ok");
%>
</body>
</html>