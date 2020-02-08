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
	<div id="top2">장바구니 들어가는 부분</div>
	<div id="center">
	<%
		//1. 선택한 id값 가지고 온다.
		String id = request.getParameter("id");
	
		//2. dto에 넣는다.
		ProductDTO dto = new ProductDTO();
		dto.setId(id);
		
		//3. dao를 사용해서 db처리
		ProductDAO dao = new ProductDAO();
		ProductDTO dto2 = dao.select(dto);
		
		//4. 결과값인 dto를 프린트
	%>
	<table align="center">
		<tr>
			<td id="td">제품번호</td>
			<td id="td3">
				<span style="color:red">
				<%= dto2.getId() %>
				</span>
			</td>
		</tr>
		<tr>
			<td id="td">제품이름</td>
			<td id="td3"><%= dto2.getName() %></td>
		</tr>
		<tr>
			<td id="td">제품설명</td>
			<td id="td3"><%= dto2.getContent() %></td>
		</tr>
		<tr>
			<td id="td">제품가격</td>
			<td id="td3"><%= dto2.getPrice() %></td>
		</tr>
		<tr>
			<td id="td">제조회사</td>
			<td id="td3"><%= dto2.getCompany() %></td>
		</tr>
		<tr>
			<td id="td">제품이미지</td>
			<td id="td3"><img src="img/<%= dto2.getImg() %>" height="300" width="400"></td>
		</tr>
	</table>
	<center>
	<!-- bag이미지 선택하면 장바구니에 담을수 있도록 -->
		<a href="add.jsp?id=<%= dto2.getId() %>">
			<img src="img/bag.png" width="150" height="150">
		</a>
	</center>
	</div>
</div>
</body>
</html>