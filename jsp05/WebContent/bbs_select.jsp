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
	
	//2. �������� ����� ������ �̿��ؼ� ����
	String url = "jdbc:mysql://localhost:3306/jsp1";
	String user = "root";
	String password = "1234";
	Connection con = DriverManager.getConnection(url, user, password);
	
	//3. sql�� �ۼ�
	String sql = "select * from bbs where id = ?";
	//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
	//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, id);
	
	//4. sql�� db�� �����Ѵ�.
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
		String id2 = rs.getString(1); //id column(ù��° idx column), 1 ��� id�ᵵ �ȴ�.
		String title = rs.getString(2);
		String content = rs.getString(3);
		String writer = rs.getString(4);
		out.print("<table border=1>");
		out.print("<tr><td>�Խ���id </td><td><font color=blue size=4>" + id2 + "</font></td></tr>");
		out.print("<tr><td>title </td><td><font color=red>" + title + "</font></td></tr>");
		out.print("<tr><td>�ۼ���</td><td>" + writer + "</td></tr>");
		out.print("<tr><td>����</td><td>" + content + "</td></tr>");
		out.print("</table>");
	}
%>
</body>
</html>