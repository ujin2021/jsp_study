<%@page import="shop.MemberDAO"%>
<%@page import="shop.MemberDTO"%>
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
	//1. ������ id �޾��ְ�
	String id = request.getParameter("id");
	//2. dto�� �־��ְ�
	MemberDTO dto = new MemberDTO();
	dto.setId(id);
	//3. dao�̿��ؼ� dbó��
	MemberDAO dao = new MemberDAO();
	dao.delete(dto);
%>
</body>
<h3>���� ó�� �Ϸ�</h3>
</html>