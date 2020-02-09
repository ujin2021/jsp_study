<%@page import="shop.ReplyDTO"%>
<%@page import="shop.ReplyDAO"%>
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
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
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
		
		//답글용 dao 필요.
		ReplyDAO dao2 = new ReplyDAO();
		
		//원글에 대한 답글 목록을 dao로 가지고 온다.
		ArrayList<ReplyDTO> list = dao2.list(dto);
		
		//div태그 안에 목록을 붙여준다.
		
	%>
<script type="text/javascript">
	$(function() {
		$("#reply").click(function() {
			$.ajax({
				url: "reply.jsp",
				data: {
					bbsid: <%= dto.getId()%>,
					content: $("#content").val(),
					writer: '${id}'
				},
				success: function(result) {
					//alert(result); 디버깅
					$("#div1").append(result)
				}
			});
		});
	});
</script>
</head>
<body>
<!-- 게시물 하나 보는것 -->
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">장바구니 들어가는 부분</div>
	<div id="center">
	
	<center>
		<img src="img/food.PNG" height="50" width="500">
	</center>
	<table align="center">
		<tr>
			<td id="td">게시물 번호</td>
			<td id="td3">
				<span style="color:red">
				<%= dto2.getId() %>
				</span>
			</td>
		</tr>
		<tr>
			<td id="td">제목</td>
			<td id="td3"><%= dto2.getTitle() %></td>
		</tr>
		<tr>
			<td id="td">작성자</td>
			<td id="td3"><%= dto2.getWriter() %></td>
		</tr>
		<tr>
			<td id="td">내용</td>
			<td id="td2"><%= dto2.getContent() %></td>
		</tr>
	</table>
	<br>
	<br>
	<center>
		<a href="bbs.jsp">글목록으로</a> |
		<a href="update2.jsp?id=<%= dto2.getId()%>">수정하기</a> |
		<a href="delete2.jsp?id=<%= dto2.getId()%>">삭제하기</a>
	
		<hr color="red">
		댓글 : <input type="text" name="reply" id="content">
		<input type="button" value="댓글달기" id="reply">
		<br>
	</center>
	<table align="center">
		<tr>
			<td style="text-align: left;color: teal;">
				<div id="div1">
					<%
						for(ReplyDTO dto3 : list){
					%>
					<img src="img/reply.png" width="30" height="30"><%= dto3.getContent() %>(<%= dto3.getWriter() %>)<br>
					<%		
						}
						
					%>
				</div>
			</td>
		</tr>
	</table>

	</div>
</div>
</body>
</html>