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
	String tel = request.getParameter("tel");
	String id = request.getParameter("id");
	
	MemberDTO dto = new MemberDTO();
	dto.setTel(tel);
	dto.setId(id);
	
	MemberDAO dao = new MemberDAO();
	dao.update(dto);
%>
</body>
<h3>회원정보수정 완료되었습니다.</h3>
</html>