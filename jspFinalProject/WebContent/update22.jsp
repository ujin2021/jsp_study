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
<!-- dto���� ���� �Ķ���Ͱ� dto�� �ֱ� -->
<jsp:useBean id="dto" class="shop.BbsDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<!-- dao�̿��ؼ� ������Ʈ ó�� -->
<%
	BbsDAO dao = new BbsDAO();
	dao.update(dto);
%>
<!-- one.jsp�� �Ѱܼ� ������ ���� Ȯ�� -->
<jsp:forward page="one.jsp">
		<jsp:param value="<%=dto.getId()%>" name="id" />
	</jsp:forward>
</body>
</html>