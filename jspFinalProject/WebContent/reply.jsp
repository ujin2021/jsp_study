<%@page import="shop.ReplyDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dto" class="shop.ReplyDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<%
	ReplyDAO dao = new ReplyDAO();
	dao.insert(dto);
	//¹ØÁÙÀÌ °á°ú
%>
<img src="img/reply.png" width="30" height="30"><%= dto.getContent() %>(<%= dto.getWriter() %>)<br> 