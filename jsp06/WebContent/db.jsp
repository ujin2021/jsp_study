<%@page import="shop.MemberDTO"%>
<%@page import="shop.MemberDAO"%>
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
	//1. 입력한 값 받아와야함
	String id = request.getParameter("id"); //id는 input에서 지정한 name=[이것]과 같아야함
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	
	//2. 입력한 값 가방에(dto)넣어야함
	MemberDTO dto = new MemberDTO();
	dto.setId(id);
	dto.setPw(pw);
	dto.setName(name);
	dto.setTel(tel);
	
	//3. dto 에 넣어놓은 값들을 db처리
	//dao 객체 필요
	//jsp에서 자동 import : ctrl+shift+m
	MemberDAO dao = new MemberDAO();
	dao.insert(dto);
%>
<h3>회원가입처리 되었습니다.</h3>
</body>
</html>