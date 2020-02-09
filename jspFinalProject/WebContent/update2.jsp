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
	<%
		//1. 선택한 id값 가지고 온다.
		String id = request.getParameter("id");
	
		//2. dto에 넣는다.
		BbsDTO dto = new BbsDTO();
		dto.setId(id);
		
		//3. dao를 사용해서 db처리
		BbsDAO dao = new BbsDAO();
		BbsDTO dto2 = dao.select(dto);
		
		//4. 결과값인 dto를 프린트
	%>
	<center>
		<img src="img/food.PNG" height="50" width="500">
	</center>
	<form action="update22.jsp">
		<table align="center">
			<tr>
				<td id="td">게시물 번호</td>
				<td id="td3">
					<input type="text" name="id" value="<%=dto2.getId()%>" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td id="td">제목</td>
				<td id="td3"><input type="text" name="title" value="<%= dto2.getTitle()%>"></td>
			</tr>
			<tr>
				<td id="td">작성자</td>
				<td id="td3"><input type="text" name="writer" value="<%=dto2.getWriter()%>" readonly="readonly"></td>
			</tr>
			<tr>
				<td id="td">내용</td>
				<td id="td2"><input type="text" name="content" value="<%=dto2.getContent()%>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정하기">
				</td>
			</tr>
		</table>
	</form>
	<br>
	<center>
		<a href="bbs.jsp">글목록으로</a>|
		<a href="one.jsp?id=<%= dto.getId()%>">글내용으로</a>
	</center>
	</div>
</div>
</body>
</html>