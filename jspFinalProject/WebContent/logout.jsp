<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- session끊고 다시 member.jsp로 넘어간다 -->
<%
	session.invalidate();
%>
<jsp:forward page="member.jsp"></jsp:forward>
</body>
</html>