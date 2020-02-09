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
		//1. ������ id�� ������ �´�.
		String id = request.getParameter("id");
	
		//2. dto�� �ִ´�.
		BbsDTO dto = new BbsDTO();
		dto.setId(id);
		
		//3. dao�� ����ؼ� dbó��
		BbsDAO dao = new BbsDAO();
		BbsDTO dto2 = dao.select(dto);
		
		//4. ������� dto�� ����Ʈ
		
		//��ۿ� dao �ʿ�.
		ReplyDAO dao2 = new ReplyDAO();
		
		//���ۿ� ���� ��� ����� dao�� ������ �´�.
		ArrayList<ReplyDTO> list = dao2.list(dto);
		
		//div�±� �ȿ� ����� �ٿ��ش�.
		
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
					//alert(result); �����
					$("#div1").append(result)
				}
			});
		});
	});
</script>
</head>
<body>
<!-- �Խù� �ϳ� ���°� -->
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">��ٱ��� ���� �κ�</div>
	<div id="center">
	
	<center>
		<img src="img/food.PNG" height="50" width="500">
	</center>
	<table align="center">
		<tr>
			<td id="td">�Խù� ��ȣ</td>
			<td id="td3">
				<span style="color:red">
				<%= dto2.getId() %>
				</span>
			</td>
		</tr>
		<tr>
			<td id="td">����</td>
			<td id="td3"><%= dto2.getTitle() %></td>
		</tr>
		<tr>
			<td id="td">�ۼ���</td>
			<td id="td3"><%= dto2.getWriter() %></td>
		</tr>
		<tr>
			<td id="td">����</td>
			<td id="td2"><%= dto2.getContent() %></td>
		</tr>
	</table>
	<br>
	<br>
	<center>
		<a href="bbs.jsp">�۸������</a> |
		<a href="update2.jsp?id=<%= dto2.getId()%>">�����ϱ�</a> |
		<a href="delete2.jsp?id=<%= dto2.getId()%>">�����ϱ�</a>
	
		<hr color="red">
		��� : <input type="text" name="reply" id="content">
		<input type="button" value="��۴ޱ�" id="reply">
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