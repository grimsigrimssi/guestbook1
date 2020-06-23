<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
    
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>


<% 
	GuestBookDao guestBookDao = new GuestBookDao();
	List<GuestVo> guestList = guestBookDao.getGuestList();

	System.out.println(guestList.toString());
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>

	<form action="./insert.jsp" method="post">
	이름: <input type="text" name="name">
	비밀번호: <input type="text" name="password"> <br>
	내용: <input type="text" name="content"> <br>
	<button type="submit">확인</button>	
	</form><br>


	<% for(GuestVo guestVo : guestList) {%>
	<table border="1">
		<colgroup>
			<col style = "width:40px;">
			<col style = "width:120px;">
			<col style = "width:180px;">
			<col style = "width:40px;">
		</colgroup>
		<tbody>
			<tr>
				<td><%=guestVo.getNo() %></td>
				<td><%=guestVo.getName() %></td>
				<td><%=guestVo.getRegDate() %></td>
				<td><a href="./deleteForm.jsp?no=<%=guestVo.getNo() %>">삭제</a></td>
			</tr>
			<tr>
			 	<td colspan="4" rowspan="2"><%=guestVo.getContent() %></td>
			</tr>
					
		</tbody>		
	</table>
	<% } %>

</body>
</html>