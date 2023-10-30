<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		MemberDAO dao = new MemberDAO();
		ArrayList<Member> members = dao.getAllMember();
	%>
	<a href="./add.html">AddData</a>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Year</th>
			<th>Action</th>
		</tr>
		<% for(Member m : members) { %>
		<tr>
			<td><%=m.getID()%></td>
			<td><%=m.getName()%></td>
			<td><%=m.getYear()%></td>
			<td><a href="./delete.jsp?id=<%=m.getID()%>">Delete</a></td>
		</tr>
		<% } %>
	</table>
</body>
</html>