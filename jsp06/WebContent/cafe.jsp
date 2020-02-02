<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="red">
<%= session.getAttribute("id") %>님의 카페입니다.
<br>
<a href="news.jsp">뉴스로 이동</a>
</body>
</html>