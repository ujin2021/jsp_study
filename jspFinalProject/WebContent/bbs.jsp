<%@page import="shop.BbsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="shop.BbsDAO"%>
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
	<div id="top2">��ٱ���</div>
	<div id="center">
	<!-- bbs.jsp�� ȣ�����ڸ��� ������ ����ؾ��Ѵ�. �����  bbs�� ���. -->
	<!-- 1. dao�� �̿��ؼ� ����� �����´�. -->
	<!-- 2. ����� ���̺� ���·� ����Ʈ -->
	<%
		BbsDAO dao = new BbsDAO();
		ArrayList<BbsDTO> list = dao.list();
	%>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp; <!-- �����̽��� -->
	<a href="insert2.jsp">
		<img src="img/insert2.PNG" width="60" height="30">
	</a>
	<table align="center" border="1">
		<tr>
			<td id="td">�Խ��� ��ȣ</td>
			<td id="td">�Խ��� ����</td>
			<td id="td">�ۼ���</td>
		</tr>
		<%
		/* for-each(������ �̰Ÿ� �� ���̾���) */
			for(BbsDTO dto: list){
		%>
			<tr>
				<td id="td3"><%= dto.getId() %></td>
				<td id="td3">
					<a href="one.jsp?id=<%=dto.getId() %>">
					<%= dto.getTitle() %>
				</td>
				<td id="td3"><%= dto.getWriter() %></td>
			</tr>
		<%		
			}
		%>	
	
	</table>
	
	</div>
</div>
</body>
</html>