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
	String id = request.getParameter("id");
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
	String sql = "select * from product where id = ?";
	//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
	//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, id);
	out.print("3. sql�� ����� ok<br>");
	
	//4. sql�� db�� �����Ѵ�.
	ResultSet rs = ps.executeQuery();
	out.print("4. sql�� db�� ���� ok<br>");
	if(rs.next()){
		String id2 = rs.getString(1); //id column(ù��° idx column), 1 ��� id�ᵵ �ȴ�.
		String name = rs.getString(2);
		String content = rs.getString(3);
		String price = rs.getString(4);
		String img = rs.getString(5);
		out.print("<table border=1>");
		out.print("<tr><td>��ǰid : </td><td><font color=blue size=4>" + id2 + "</font></td></tr>");
		out.print("<tr><td>��ǰ name : </td><td>" + name + "></td></tr>");
		out.print("<tr><td>��ǰ ���� : <font color=red></td><td>" + content + "</font></td></tr>");
		out.print("<tr><td>��ǰ ���� : </td><td>" + price + "��</td></tr>");
		out.print("<tr><td>��ǰ�̹���</td><td><img src=img/" + img + "></td></tr>");
		out.print("</table>");
	}
%>
</body>
</html>