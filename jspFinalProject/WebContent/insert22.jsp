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
	<!-- 1.�Ķ���� �� ������ �´� -->
	<!-- 2. dto�� ���� set�޼ҵ�� ���� �ִ´� -->
	<!-- 1,2�� ���ٷ� ǥ�� -->
	<jsp:useBean id="dto" class="shop.BbsDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/> <!-- *:all, name�� jsp:usebean�� id -->
	
	<!-- 3. dao�� �̿��ؼ� dbó�� �Ѵ� -->
	<%
		BbsDAO dao = new BbsDAO();
		dao.insert(dto);
	%>
	<!-- 4. �Խ��� ������� �ٽ� ���ư���. -->
	<jsp:forward page="bbs.jsp"></jsp:forward>
</body>
</html>