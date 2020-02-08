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
	<!-- �� �������� Ŭ�����ڸ��� ��ü ��� �� �����;��Ѵ�. -->
	<%
		//1. dao����ؼ� ��ü ��� �����´�.
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> list= dao.list();
		//2. ����� ȭ�鿡 ���ڰ� ���̰� �Ѵ�.
		//3. �� ��ǰ�� Ŭ���ϸ� �� ������ �Ѿ�� �Ѵ�.
	%>
	<%=list.size() %>���� ��ǰ�� �ֽ��ϴ�.<br>
	<hr>
	<br>
	<table>
		<tr>
			<td id="td">��ǰ��ȣ</td>
			<td id="td">��ǰ�̸�</td>
			<td id="td">��ǰ����</td>
			<td id="td">��ǰ�̹���</td>
		</tr>
		<%
		for(int i = 0; i < list.size(); i++){
			ProductDTO dto = list.get(i);
		%>
			<tr>
				<td id="td2"><%=dto.getId() %></td>
				<td id="td2">
					<a href="select.jsp?id=<%=dto.getId() %>"><%=dto.getName() %></a>
				</td>
				<td id="td2"><%=dto.getPrice() %></td>
				<td id="td2">
					<img src="img/<%=dto.getImg() %>" width="100" height="100">
				</td>
			</tr>
		<%
		}
		%>
	</table>
	</div>
</div>
</body>
</html>