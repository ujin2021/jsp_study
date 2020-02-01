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
	//1.다운로드 받았던 connector설정
	Class.forName("com.mysql.jdbc.Driver");
	out.print("1. connector 설정 ok<br>");
	
	//2. 인증받은 사용자 계정을 이용해서 연결
	String url = "jdbc:mysql://localhost:3306/jsp1";
	String user = "root";
	String password = "1234";
	Connection con = DriverManager.getConnection(url, user, password);
	out.print("2. db 연결 ok<br>");
	
	//3. sql문 작성
	String sql = "update member set tel = ? where id = ?";
	//해당하는 class를 사용하지 않으면 프로그램언어는 sql문인지 모른다.
	//sql문에 해당하는 class : PrepareStatement -> getConnection할때 Connection(java.sql) 변수로 저장해준다
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, tel);
	ps.setString(2, id);
	out.print("3. sql문 만들기 ok<br>");
	
	//4. sql을 db로 전송한다.
	ps.executeUpdate();
	out.print("4. sql문 db로 전송 ok");
%>
</body>
</html>