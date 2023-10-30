<%@page import="pkrent4u.schema.Car"%>
<%@page import="pkrent4u.dao.CarDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList, pkrent4u.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/965375341071847434/1160730098618601482/image.png?ex=6535b924&is=65234424&hm=02edc80e5cc1c9b7937bdbc00efe262fb24180a3850827d298d32e71ee6a8d8b&">
<link rel="stylesheet" href="css/Animetion.css">
<link rel="stylesheet" href="css/global.css">
<link rel="stylesheet" href="css/Bootstrap.css">
</head>
<body>
	<%@ include file="./components/Nav.jsp" %>
	<% 
		if(!(username == null)){
			response.sendRedirect("./Admin/dashboard.jsp");
		}
	%>
	<div class="container p-5 dashboard-fade">
	    <h1>เข้าสู่ระบบ</h1>
	    <form action="Backend/Login.jsp" method="POST">
	        <div class="form-group">
	            <label for="username">Username</label>
	            <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username">
	        </div>
	        <div class="form-group">
	            <label for="password">Password</label>
	            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
	        </div>
	        <div class="pt-1">
	            <button type="submit" class="btn btn-primary">Submit</button>
	        </div>
	    </form>
	</div>
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</html>