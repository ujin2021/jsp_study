<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- page지시자(java코드로 바꿔!-톰캣에게 지시) -->
    <!-- jsp파일은 page지시자를 반드시 가져야 한다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- java code 끼워넣을 수 있다. -->
<!-- 처리할 부분만 자바코드로 조금 써놓을 예정 -->
<!-- %안에 java code를 쓰면된다.  -->
<!-- 작은프로그램 : 릿(let) -->
<%
/* 
스크립트릿 => java code 넣는 부분
tomcat은 미리 자주사용하는 class 에 대해 객체를 만들어 놓음.(빌트인 객체, 내장된 객체)
1. server에서 받아줘야함 => request(내장된 객체 사용)
2. db에서 id/pw가 일치하는지 확인 처리 => 내가 입력한 것과 db에 있는 데이터와 일치 여부(조건문)
3. 처리 결과를 알려주어야 함 => html
*/

//1
String id = request.getParameter("id");
String pw = request.getParameter("pw");
//(아직 db연동 안했으니까..)
String dbId = "root";
String dbPw = "1234";

//2, 3(html과 연결 : out 사용)
if(dbId.equals(id) && dbPw.equals(pw)){
	out.print("<h3>login ok</h3>");
}
else {
	out.print("<h3>login not</h3>");
}

%>
</body>
</html>