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
	<div id="top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id="center">
	<!-- 이 페이지를 클릭하자마자 전체 목록 다 가져와야한다. -->
	<%
		//1. dao사용해서 전체 목록 가져온다.
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> list= dao.list();
		//2. 목록을 화면에 예쁘게 보이게 한다.
		//3. 한 제품을 클릭하면 상세 정보로 넘어가게 한다.
	%>
	<%=list.size() %>개의 상품이 있습니다.<br>
	<hr>
	<br>
	<table>
		<tr>
			<td id="td">상품번호</td>
			<td id="td">상품이름</td>
			<td id="td">상품가격</td>
			<td id="td">상품이미지</td>
		</tr>
		<%
		for(int i = 0; i < list.size(); i++){
			ProductDTO dto = list.get(i);
		%>
			<tr>
				<td id="td3"><%=dto.getId() %></td>
				<td id="td3">
					<a href="select.jsp?id=<%=dto.getId() %>"><%=dto.getName() %></a>
				</td>
				<td id="td3"><%=dto.getPrice() %></td>
				<td id="td3">
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