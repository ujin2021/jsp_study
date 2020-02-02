<%@page import="java.util.ArrayList"%>
<%@page import="shop.MemberDTO"%>
<%@page import="shop.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 전체 목록 dao를 이용한 db처리 -->
<!-- db처리 결과인 list를 받아와야함.(반환) -->
<%
	MemberDAO dao = new MemberDAO();
	ArrayList<MemberDTO> list = dao.list();
%>
회원 수는 <%= list.size() %> 명 입니다.
<hr color="blue">
<%
	for(int i = 0; i < list.size(); i++){
		MemberDTO dto2 = list.get(i);
%>
검색한 id : <%= dto2.getId() %><br>
검색한 pw : <%= dto2.getPw() %><br>
검색한 name : <%= dto2.getName() %><br>
검색한 tel : <%= dto2.getTel() %><br><br>
<%
	}
%>
</body>
</html>