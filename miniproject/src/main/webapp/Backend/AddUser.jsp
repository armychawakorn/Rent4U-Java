<%@page import="pkrent4u.dao.UsersDAO"%>
<%@page import="pkrent4u.schema.Users"%>
<%@page import="pkrent4u.crypto.AesEncryption"%>
<%@page import="pkrent4u.dao.MotorcycleDAO"%>
<%@page import="java.time.Duration"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="pkrent4u.schema.Rental"%>
<%@page import="pkrent4u.dao.RentalDAO"%>
<%@page import="pkrent4u.schema.Motorcycle"%>
<%@page import="pkrent4u.schema.Car"%>
<%@page import="pkrent4u.dao.CarDAO"%>
<%@page import="java.util.ArrayList, pkrent4u.*"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String encrypt_password = AesEncryption.encrypt(password);
	Users user = new Users();
	user.setUsername(username);
	user.setPassword(encrypt_password);
	UsersDAO u_dao = new UsersDAO();
	u_dao.AddUsers(user);
	response.sendRedirect("../Admin/users.jsp");
%>