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
<!-- 1. ���̵�, �н����� �޾��־���� -->
<!-- 2. ���̵�, �н����� dto�� �־��� -->
<!-- 3. ���̵�, �н����� �´��� dao �� �־ dbó�� -->
<!-- 4. dbó�� ����� true/false������ üũ -->
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDTO dto = new MemberDTO();
	dto.setId(id);
	dto.setPw(pw);
	
	MemberDAO dao = new MemberDAO();
	boolean result = dao.check(dto);
	
	if(result){
		session.setAttribute("id", id);
	}
	else{
		//�α����� �ȵȰ�� �ٽ� login.jsp�� �ڵ��ѱ�.
		response.sendRedirect("login.jsp");
	}
%>
<a href="login.jsp">�α�����������</a>|
<a href="mail.jsp">������������</a>|
<a href="cafe.jsp">ī����������</a>|
<a href="news.jsp">������������</a>|
</body>
</html>