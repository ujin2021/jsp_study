<%@page import="shop.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dto" class="shop.BbsDTO"></jsp:useBean> <!-- bbs ��ü ����� -->
	<jsp:setProperty property="*" name="dto"/>
	<!-- �׼��±�(jsp:) : �������� �׼��� �Ѳ����� ó�� -->
	<!-- property: dto ��ü�� � ������ set�޼ҵ带 ȣ�� �� �� ����  -->
	<!-- name : ������ ��ü�� �̸� -->
	
	<!-- dbó�� -->
	<%
		BbsDAO dao = new BbsDAO();
		dao.delete(dto);
	%>
	
	<!-- bbs������� �̵� -->
	<jsp:forward page="bbs.jsp"></jsp:forward>
</body>
</html>