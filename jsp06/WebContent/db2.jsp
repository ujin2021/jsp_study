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
	//1. 삭제할 id 받아주고
	String id = request.getParameter("id");
	//2. dto에 넣어주고
	MemberDTO dto = new MemberDTO();
	dto.setId(id);
	//3. dao이용해서 db처리
	MemberDAO dao = new MemberDAO();
	dao.delete(dto);
%>
</body>
<h3>삭제 처리 완료</h3>
</html>