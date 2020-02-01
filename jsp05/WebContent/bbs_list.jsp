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
	//1.다운로드 받았던 connector설정
	Class.forName("com.mysql.jdbc.Driver");
	
	//2. 인증받은 사용자 계정을 이용해서 연결
	String url = "jdbc:mysql://localhost:3306/jsp1";
	String user = "root";
	String password = "1234";
	Connection con = DriverManager.getConnection(url, user, password);
	
	//3. sql문 작성
	String sql = "select * from bbs"; //product table에서 다가지고 온다
	//해당하는 class를 사용하지 않으면 프로그램언어는 sql문인지 모른다.
	//sql문에 해당하는 class : PrepareStatement -> getConnection할때 Connection(java.sql) 변수로 저장해준다
	PreparedStatement ps = con.prepareStatement(sql);
	//ps.setString(1, id);
	
	//4. sql을 db로 전송한다.
	ResultSet rs = ps.executeQuery();
	out.print("게시판id|게시판title|게시판writer");
	out.print("<hr color=red>");
	while(rs.next()){
		String id2 = rs.getString(1); //id column(첫번째 idx column), 1 대신 id써도 된다.
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