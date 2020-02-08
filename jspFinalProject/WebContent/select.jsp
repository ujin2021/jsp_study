<%@page import="java.util.ArrayList"%>
<%@page import="shop.ProductDTO"%>
<%@page import="shop.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Shopping mall</title>
<link type="text/css" rel="stylesheet" href="css/project.css">
</head>
<body>
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">��ٱ��� ���� �κ�</div>
	<div id="center">
	<%
		//1. ������ id�� ������ �´�.
		String id = request.getParameter("id");
	
		//2. dto�� �ִ´�.
		ProductDTO dto = new ProductDTO();
		dto.setId(id);
		
		//3. dao�� ����ؼ� dbó��
		ProductDAO dao = new ProductDAO();
		ProductDTO dto2 = dao.select(dto);
		
		//4. ������� dto�� ����Ʈ
	%>
	<table align="center">
		<tr>
			<td id="td">��ǰ��ȣ</td>
			<td id="td3">
				<span style="color:red">
				<%= dto2.getId() %>
				</span>
			</td>
		</tr>
		<tr>
			<td id="td">��ǰ�̸�</td>
			<td id="td3"><%= dto2.getName() %></td>
		</tr>
		<tr>
			<td id="td">��ǰ����</td>
			<td id="td3"><%= dto2.getContent() %></td>
		</tr>
		<tr>
			<td id="td">��ǰ����</td>
			<td id="td3"><%= dto2.getPrice() %></td>
		</tr>
		<tr>
			<td id="td">����ȸ��</td>
			<td id="td3"><%= dto2.getCompany() %></td>
		</tr>
		<tr>
			<td id="td">��ǰ�̹���</td>
			<td id="td3"><img src="img/<%= dto2.getImg() %>" height="300" width="400"></td>
		</tr>
	</table>
	<center>
	<!-- bag�̹��� �����ϸ� ��ٱ��Ͽ� ������ �ֵ��� -->
		<a href="add.jsp?id=<%= dto2.getId() %>">
			<img src="img/bag.png" width="150" height="150">
		</a>
	</center>
	</div>
</div>
</body>
</html>