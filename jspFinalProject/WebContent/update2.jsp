<%@page import="shop.BbsDAO"%>
<%@page import="shop.BbsDTO"%>
<%@page import="java.util.ArrayList"%>
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
		BbsDTO dto = new BbsDTO();
		dto.setId(id);
		
		//3. dao�� ����ؼ� dbó��
		BbsDAO dao = new BbsDAO();
		BbsDTO dto2 = dao.select(dto);
		
		//4. ������� dto�� ����Ʈ
	%>
	<center>
		<img src="img/food.PNG" height="50" width="500">
	</center>
	<form action="update22.jsp">
		<table align="center">
			<tr>
				<td id="td">�Խù� ��ȣ</td>
				<td id="td3">
					<input type="text" name="id" value="<%=dto2.getId()%>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td id="td">����</td>
				<td id="td3"><input type="text" name="title" value="<%= dto2.getTitle()%>"></td>
			</tr>
			<tr>
				<td id="td">�ۼ���</td>
				<td id="td3"><input type="text" name="writer" value="<%=dto2.getWriter()%>" readonly="readonly"></td>
			</tr>
			<tr>
				<td id="td">����</td>
				<td id="td2"><input type="text" name="content" value="<%=dto2.getContent()%>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="�����ϱ�">
				</td>
			</tr>
		</table>
	</form>
	<br>
	<center>
		<a href="bbs.jsp">�۸������</a>|
		<a href="one.jsp?id=<%= dto.getId()%>">�۳�������</a>
	</center>
	</div>
</div>
</body>
</html>