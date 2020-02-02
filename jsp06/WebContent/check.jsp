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
<!-- 1. 아이디, 패스워드 받아주어야함 -->
<!-- 2. 아이디, 패스워드 dto에 넣어줌 -->
<!-- 3. 아이디, 패스워드 맞는지 dao 에 넣어서 db처리 -->
<!-- 4. db처리 결과가 true/false인지를 체크 -->
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
		//로그인이 안된경우 다시 login.jsp로 자동넘김.
		response.sendRedirect("login.jsp");
	}
%>
<a href="login.jsp">로그인페이지로</a>|
<a href="mail.jsp">메일페이지로</a>|
<a href="cafe.jsp">카페페이지로</a>|
<a href="news.jsp">뉴스페이지로</a>|
</body>
</html>