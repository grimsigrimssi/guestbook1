<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
    
<%
	int no = Integer.parseInt(request.getParameter("no"));

	GuestBookDao guestBookDao = new GuestBookDao();
	guestBookDao.guestDelete(no);
	
	response.sendRedirect("./addList.jsp");
	
%>
