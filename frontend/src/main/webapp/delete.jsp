<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, dao.*" %>
<%
String ID = request.getParameter("id");
MemberDAO dao = new MemberDAO();
dao.DeleteUser(ID);
response.sendRedirect("./");
%>