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
<!-- select한 결과를 브라우저에 보여주기 위해서는 여기에 넣어야함. 출력용(표현식) = out.print-->
검색한 id : <%= dto2.getId() %><br>
검색한 pw : <%= dto2.getPw() %><br>
검색한 name : <%= dto2.getName() %><br>
검색한 tel : <%= dto2.getTel() %><br>
</html>