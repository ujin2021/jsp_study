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
	
	//2. �������� ����� ������ �̿��ؼ� ����
	String url = "jdbc:mysql://localhost:3306/jsp1";
	String user = "root";
	String password = "1234";
	Connection con = DriverManager.getConnection(url, user, password);
	
	//3. sql�� �ۼ�
	String sql = "select * from bbs"; //product table���� �ٰ����� �´�
	//�ش��ϴ� class�� ������� ������ ���α׷����� sql������ �𸥴�.
	//sql���� �ش��ϴ� class : PrepareStatement -> getConnection�Ҷ� Connection(java.sql) ������ �������ش�
	PreparedStatement ps = con.prepareStatement(sql);
	//ps.setString(1, id);
	
	//4. sql�� db�� �����Ѵ�.
	ResultSet rs = ps.executeQuery();
	out.print("�Խ���id|�Խ���title|�Խ���writer");
	out.print("<hr color=red>");
	while(rs.next()){
		String id2 = rs.getString(1); //id column(ù��° idx column), 1 ��� id�ᵵ �ȴ�.
		String title = rs.getString(2);
		String content = rs.getString(3);
		String writer = rs.getString(4);
		
		out.print(id2 + " | ");
		out.print("<a href=bbs_select.jsp?id=" + id2 + ">" + title + "</a> | ");
		out.print(writer + "<br><br>");
	}
%>
</body>
</html>