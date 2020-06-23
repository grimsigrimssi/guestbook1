<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestVo" %> 
    
<%
	int no = Integer.parseInt(request.getParameter("no"));
	System.out.println(no);
	
	GuestBookDao guestBookDao = new GuestBookDao();
	GuestVo guestVo = guestBookDao.getGuest(no);
	System.out.println(guestVo.toString()); //db에서 가져온 정보 확인용
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		비밀번호를 입력하고 "확인" 버튼을 클릭하세요.
	</p>
	<form action="./delete.jsp" method="post">
	비밀번호: <input type="text" name="password" value="<%=guestVo.getPassword() %>"> <br>
	<input type="hidden" name="no" value="<%=guestVo.getNo() %>">
	
	<button type="submit">확인</button>	
	</form>
	<p>
		<a href="http://localhost:8088/gb1/addList.jsp">메인으로 돌아가기</a>
	</p>
</body>
</html>