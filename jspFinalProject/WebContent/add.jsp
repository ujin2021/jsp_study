<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	//물건의 id를 장바구니에 계속 추가해야함.(장바구니 리스트를 세션으로 잡아놓는다)
	//1. 장바구니 세션이 있는지 확인
	ArrayList list = (ArrayList)session.getAttribute("bag"); //casting
	
	//1-1. 장바구니 세션이있다 => 이미 리스트가 있다  => 그 list에 id추가
	if(list != null){
		list.add(id);
	}
	
	//1-2. 장바구니 세션이 없다 => 목록을 만들어준다 => 새로만든 리스트에 id를 추가	
	else{
		list = new ArrayList();
		list.add(id);
	}
	
	//2. 추가한 목록까지 다시 session으로 재설정 해줘야한다.
	session.setAttribute("bag", list);
	
	//장바구니 눌렀을때 제품정보 나온다 => 장바구니 리스트에 저장된 id를 가지고 검색한것을 화면에 띄워준다.
%>