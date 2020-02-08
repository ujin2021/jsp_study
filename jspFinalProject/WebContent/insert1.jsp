<%@page import="shop.MemberDAO"%>
<%@page import="shop.MemberDTO"%>
<%@page import="com.mysql.fabric.xmlrpc.base.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 회원가입  -->
<%
	//1. 입력값 받아온다
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	
	//2. 가방에 넣어준다(dto)
	MemberDTO dto = new MemberDTO();
	dto.setId(id);
	dto.setPw(pw);
	dto.setName(name);
	dto.setTel(tel);
	
	//3. dao사용해서 db처리
	MemberDAO dao = new MemberDAO();
	dao.insert(dto);
	
	//4. member.jsp로 다시 돌아가도록
%>
<jsp:forward page="member.jsp"></jsp:forward>
</body>
</html>