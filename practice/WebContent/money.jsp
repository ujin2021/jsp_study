<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String money = request.getParameter("money");
	String payment = request.getParameter("payment");
	
	switch(payment){
		case "1":
			out.print("계좌이체 선택/결제ok");
			break;
		case "2":
			out.print("신용카드 선택/결제ok");
			break;
		case "3":
			out.print("휴대폰 결제 선택/결제ok");
			break;
		default :
			out.print("결제 취소");
	}
%>
<%= money%>원