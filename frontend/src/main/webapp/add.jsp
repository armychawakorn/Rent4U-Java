<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, dao.*" %>
<%
	String Name = request.getParameter("Name");
	String Year = request.getParameter("Year");
	MemberDAO dao = new MemberDAO();
	dao.AddUser(Name, Year);
	response.sendRedirect("./");
%>