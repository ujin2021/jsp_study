<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
<%= session.getAttribute("id") %>님의 뉴스입니다.
<br>
<a href="cafe.jsp">카페로 이동</a>
</body>
</html>