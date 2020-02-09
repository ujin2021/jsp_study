<%@page import="shop.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- dto만들어서 받은 파라메터값 dto에 넣기 -->
<jsp:useBean id="dto" class="shop.BbsDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<!-- dao이용해서 업데이트 처리 -->
<%
	BbsDAO dao = new BbsDAO();
	dao.update(dto);
%>
<!-- one.jsp로 넘겨서 수정된 내용 확인 -->
<jsp:forward page="one.jsp">
		<jsp:param value="<%=dto.getId()%>" name="id" />
	</jsp:forward>
</body>
</html>