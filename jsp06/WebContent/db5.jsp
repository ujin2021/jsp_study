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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	
	MemberDTO dto = new MemberDTO();
	dto.setId(id);

	MemberDAO dao = new MemberDAO();
	MemberDTO dto2 = dao.select(dto);
	
%>
</body>
<!-- select�� ����� �������� �����ֱ� ���ؼ��� ���⿡ �־����. ��¿�(ǥ����) = out.print-->
�˻��� id : <%= dto2.getId() %><br>
�˻��� pw : <%= dto2.getPw() %><br>
�˻��� name : <%= dto2.getName() %><br>
�˻��� tel : <%= dto2.getTel() %><br>
</html>