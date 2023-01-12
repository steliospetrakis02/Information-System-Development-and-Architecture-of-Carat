<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
if (session.getAttribute("role") == null) { 
	request.setAttribute("error_message", "You are not authorized to view this page! Please login.");%>
	<jsp:forward page="../Home/login.jsp" />

<%    return;
}    
%>