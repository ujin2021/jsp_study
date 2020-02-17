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
	<div id="top2">장바구니</div>
	<div id="center">
	<!-- bbs.jsp를 호출하자마자 서버와 통신해야한다. 결과는  bbs의 목록. -->
	<!-- 1. dao를 이용해서 목록을 가져온다. -->
	<!-- 2. 목록을 테이블 형태로 프린트 -->
	<%
		BbsDAO dao = new BbsDAO();
		ArrayList<BbsDTO> list = dao.list();
	%>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp; <!-- 스페이스바 -->
	<a href="insert2.jsp">
		<img src="img/insert2.PNG" width="60" height="30">
	</a>
	<table align="center" border="1">
		<tr>
			<td id="td">게시판 번호</td>
			<td id="td">게시판 제목</td>
			<td id="td">작성자</td>
		</tr>
		<%
		/* for-each(웹에서 이거를 더 많이쓴다) */
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