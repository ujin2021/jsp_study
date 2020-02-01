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
	//1.다운로드 받았던 connector설정
	Class.forName("com.mysql.jdbc.Driver");
	
	//2. 인증받은 사용자 계정을 이용해서 연결
	String url = "jdbc:mysql://localhost:3306/jsp1";
	String user = "root";
	String password = "1234";
	Connection con = DriverManager.getConnection(url, user, password);
	
	//3. sql문 작성
	String sql = "select * from bbs where id = ?";
	//해당하는 class를 사용하지 않으면 프로그램언어는 sql문인지 모른다.
	//sql문에 해당하는 class : PrepareStatement -> getConnection할때 Connection(java.sql) 변수로 저장해준다
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, id);
	
	//4. sql을 db로 전송한다.
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
		String id2 = rs.getString(1); //id column(첫번째 idx column), 1 대신 id써도 된다.
		String title = rs.getString(2);
		String content = rs.getString(3);
		String writer = rs.getString(4);
		out.print("<table border=1>");
		out.print("<tr><td>게시판id </td><td><font color=blue size=4>" + id2 + "</font></td></tr>");
		out.print("<tr><td>title </td><td><font color=red>" + title + "</font></td></tr>");
		out.print("<tr><td>작성자</td><td>" + writer + "</td></tr>");
		out.print("<tr><td>내용</td><td>" + content + "</td></tr>");
		out.print("</table>");
	}
%>
</body>
</html>