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
	out.print("1. connector 설정 ok<br>");
	
	//2. 인증받은 사용자 계정을 이용해서 연결
	String url = "jdbc:mysql://localhost:3306/jsp1";
	String user = "root";
	String password = "1234";
	Connection con = DriverManager.getConnection(url, user, password);
	out.print("2. db 연결 ok<br>");
	
	//3. sql문 작성
	String sql = "select * from product where id = ?";
	//해당하는 class를 사용하지 않으면 프로그램언어는 sql문인지 모른다.
	//sql문에 해당하는 class : PrepareStatement -> getConnection할때 Connection(java.sql) 변수로 저장해준다
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, id);
	out.print("3. sql문 만들기 ok<br>");
	
	//4. sql을 db로 전송한다.
	ResultSet rs = ps.executeQuery();
	out.print("4. sql문 db로 전송 ok<br>");
	if(rs.next()){
		String id2 = rs.getString(1); //id column(첫번째 idx column), 1 대신 id써도 된다.
		String name = rs.getString(2);
		String content = rs.getString(3);
		String price = rs.getString(4);
		String img = rs.getString(5);
		out.print("<table border=1>");
		out.print("<tr><td>상품id : </td><td><font color=blue size=4>" + id2 + "</font></td></tr>");
		out.print("<tr><td>상품 name : </td><td>" + name + "></td></tr>");
		out.print("<tr><td>상품 정보 : <font color=red></td><td>" + content + "</font></td></tr>");
		out.print("<tr><td>상품 가격 : </td><td>" + price + "원</td></tr>");
		out.print("<tr><td>상품이미지</td><td><img src=img/" + img + "></td></tr>");
		out.print("</table>");
	}
%>
</body>
</html>