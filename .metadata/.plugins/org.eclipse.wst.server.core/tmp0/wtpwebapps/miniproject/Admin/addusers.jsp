<%@page import="pkrent4u.schema.Users"%>
<%@page import="pkrent4u.dao.UsersDAO"%>
<%@page import="pkrent4u.schema.Rental"%>
<%@page import="pkrent4u.dao.RentalDAO"%>
<%@page import="pkrent4u.schema.Car"%>
<%@page import="pkrent4u.dao.CarDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList, pkrent4u.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Add User</title>
<link rel="icon" type="image/x-icon"
	href="https://cdn.discordapp.com/attachments/965375341071847434/1160730098618601482/image.png?ex=6535b924&is=65234424&hm=02edc80e5cc1c9b7937bdbc00efe262fb24180a3850827d298d32e71ee6a8d8b&">
<link rel="stylesheet" href="../css/Animetion.css">
<link rel="stylesheet" href="../css/global.css">
<link rel="stylesheet" href="../css/Bootstrap.css">
</head>
<body>
	<%@ include file="../components/Nav.jsp" %>
	<div class="container dashboard-fade">
		<div class="pt-4 text-center">
			<h1>เพิ่มAccount Admin</h1>
		</div>
		<form action="../Backend/AddUser.jsp" method="POST" class="ps-5">
			<div class="form-group">
				<label for="Customer">Username</label>
				<input type="text" id="username" name="username" class="form-control">
			</div>
			<div class="form-group">
				<label for="Customer">Password</label>
				<input type="password" id="password" name="password" class="form-control">
			</div>
			<div class="pt-2">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</html>