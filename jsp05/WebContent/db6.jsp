<%@page import="java.sql.ResultSet"%>
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
	String sql = "select * from product"; //product table���� �ٰ����� �´�
	//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
	//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
	PreparedStatement ps = con.prepareStatement(sql);
	//ps.setString(1, id);
	out.print("3. sql�� ����� ok<br>");
	
	//4. sql�� db�� �����Ѵ�.
	ResultSet rs = ps.executeQuery();
	out.print("4. sql�� db�� ���� ok<br>");
	while(rs.next()){
		String id2 = rs.getString(1); //id column(ù��° idx column), 1 ��� id�ᵵ �ȴ�.
		String name = rs.getString(2);
		String content = rs.getString(3);
		String price = rs.getString(4);
		String img = rs.getString(5);
		out.print("��ǰid : <h3>" + id2 + "</h3><br>");
		out.print("��ǰ name : <a href=db5.jsp?id=" + id2 + ">" + name + "</a><br>");
		out.print("��ǰ ���� : <font color=red>" + content + "</font><br>");
		out.print("��ǰ ���� : " + price + "��<br>");
		out.print("<img src=img/" + img + "><br><hr color=blue>");
	}
%>
</body>
</html>