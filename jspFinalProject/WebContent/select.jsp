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
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
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
<script type="text/javascript">
	$(function() {
		//call-back 함수(미리 기다린다.이벤트가 발생하면 자동호출)
		$("#bag").click(function() {
			//alert("장바구니에 추가 처리 해야함.")
			$.ajax({
				url: "add.jsp",
				data: {
					id: <%= dto.getId()%>
				},
				success: function() {
			 		alert("장바구니 추가 성공")
			 		move = confirm("장바구니로 이동하시겠습니까?")
			 		if(move){
			 			location.href="basket.jsp";
			 		}
				}
			})
		
		})
	})

</script>
</head>
<body>
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">장바구니</div>
	<div id="center">
	
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
		<input type="image" width="50" height="100" src="img/bag.png" id="bag">
	</center>
	</div>
</div>
</body>
</html>