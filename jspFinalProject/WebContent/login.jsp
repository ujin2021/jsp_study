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
<!-- �α��� ó�� -->
 <%
 	//1. �Է��� id, pw�� ������ �´�.
 	String id = request.getParameter("id");
 	String pw = request.getParameter("pw");
 	
 	//2. dto�� ���� �����͸� �ִ´�
 	MemberDTO dto = new MemberDTO();
 	dto.setId(id);
 	dto.setPw(pw);
 	
 	//3. dao�� ����ؼ� dbó��
 	MemberDAO dao = new MemberDAO();
 	boolean result = dao.check(dto);
 	
 	//	return���� true�̸�, id�� session���� ���
 	//	return���� false�̸�, id�� session���� ������� ����
 	if(result){
 		session.setAttribute("id", id);
 	}
 	
 	//4. member.jsp�� ����
 %>
<jsp:forward page="member.jsp"></jsp:forward>
</body>
</html>