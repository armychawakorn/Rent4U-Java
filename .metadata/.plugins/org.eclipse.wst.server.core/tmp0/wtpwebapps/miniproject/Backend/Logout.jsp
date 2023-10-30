<%
	request.getSession().invalidate();
	response.sendRedirect("/miniproject/");
%>