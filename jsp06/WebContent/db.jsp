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
	//1. �Է��� �� �޾ƿ;���
	String id = request.getParameter("id"); //id�� input���� ������ name=[�̰�]�� ���ƾ���
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	
	//2. �Է��� �� ���濡(dto)�־����
	MemberDTO dto = new MemberDTO();
	dto.setId(id);
	dto.setPw(pw);
	dto.setName(name);
	dto.setTel(tel);
	
	//3. dto �� �־���� ������ dbó��
	//dao ��ü �ʿ�
	//jsp���� �ڵ� import : ctrl+shift+m
	MemberDAO dao = new MemberDAO();
	dao.insert(dto);
%>
<h3>ȸ������ó�� �Ǿ����ϴ�.</h3>
</body>
</html>