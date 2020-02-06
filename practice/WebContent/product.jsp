<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="basket.jsp">
	<!-- 장바구니만들기! -->
	<!-- 1. 댓글다는거 만들기(2/5) -->
	<!-- 2. 로그인만들기(db연결해서)(2/6) -->
	<!-- 4. 리스트로 레이아웃 만들기, 등등 -->
	상품선택 :
	<select name="fruit">
		<option value="apple">apple(1000)</option>
		<option value="banana">banana(2000)</option>
		<option value="melon">melon(3000)</option>
		<option value="orange">orange(4000)</option>
	</select>
	수량선택 : 
	<select name="count">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>	
	</select><br>
	
	<input type="submit" value="장바구니담기">
</form>
<a href="basket_list.jsp">장바구니 목록보기</a>
</body>
</html>