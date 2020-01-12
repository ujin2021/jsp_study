<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 1.넘어온 데이터를 받아주어야 함. -->
<%
//java code넣는 부분
//스크립트릿
	//받아주는 부품(class) 가 별도로 있음 : request
	//built in 객체(내장된 객체)
	//getParameter 안의 인자는 html에서의 name값과 같아야함
	String id = request.getParameter("id"); //root
	String pw = request.getParameter("pw"); //1234
	String name = request.getParameter("name"); //peng
	String tel = request.getParameter("tel"); //1212
%>
<!-- 2.db처리 -->

<!-- 3.회원가입처리 잘되었는지 알려줘야함 -->
<%
	//출력 내장객체 : out
	out.print("회원 가입 처리가 완료되었습니다<hr>");
	out.print("id : " + id + "<br>");
	out.print("pw : " + pw + "<br>");
	out.print("name : " + name + "<br>");
	out.print("tel : " + tel + "<br>");
%>
</body>
</html>