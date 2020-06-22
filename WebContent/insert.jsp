<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>

    
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	GuestVo guestVo = new GuestVo(name, password, content);
	
	GuestBookDao guestBookDao = new GuestBookDao();
	guestBookDao.guestInsert(guestVo);
	
	
	response.sendRedirect("./addList.jsp");

%>
    
   
   
   
   