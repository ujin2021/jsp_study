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
	<div id="top2">장바구니 들어가는 부분</div>
	<div id="center">
	
	<center>
		<img src="img/food.PNG" height="50" width="150">
	</center>
	<br>
	<form action="insert22.jsp">
		<table align="center">
			<tr>
				<td id="td">제목</td>
				<td id="td3"><input type="text" name="title"></td>
			</tr>
			<tr>
				<td id="td">작성자</td>
				<td id="td3"> <input type="text" name="writer" value="${id}" readonly="readonly"></td>
				<!-- expression language(EL) -->
			</tr>
			<tr>
				<td id="td">내용</td>
				<td id="td3"><textarea rows="5" cols="20" name="content"></textarea> </td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="게시판 글쓰기">
				</td>
			</tr>
		</table>
	</form>
	<br>
	<center>
		<a href="bbs.jsp">글목록으로</a>
	</center>
	</div>
</div>
</body>
</html>