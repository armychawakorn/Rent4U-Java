<%@page import="pkrent4u.schema.Users"%>
<%@page import="pkrent4u.crypto.AesEncryption"%>
<%@page import="pkrent4u.dao.UsersDAO"%>
<%@page import="pkrent4u.schema.Car"%>
<%@page import="pkrent4u.dao.CarDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList, pkrent4u.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>getAdmin</title>
<link rel="icon" type="image/x-icon"
	href="https://cdn.discordapp.com/attachments/965375341071847434/1160730098618601482/image.png?ex=6535b924&is=65234424&hm=02edc80e5cc1c9b7937bdbc00efe262fb24180a3850827d298d32e71ee6a8d8b&">
<link rel="stylesheet" href="../css/Animetion.css">
<link rel="stylesheet" href="../css/global.css">
<link rel="stylesheet" href="../css/Bootstrap.css">
</head>
<body>
	<%@ include file="../components/Nav.jsp"%>
	<%
	String Username = null;
	String Password = null;
	UsersDAO dao = new UsersDAO();
	if (dao.getAllUsers().toArray().length == 0) {
		Username = "root";
		Password = AesEncryption.generateSecretKey(6);
		Users user = new Users();
		user.setUsername(Username);
		user.setPassword(AesEncryption.encrypt(Password));
		dao.AddUsers(user);
	} else {
		//response.sendRedirect("../");
	}
	%>
	<div class="container dashboard-fade">
		<div class="text-center pt-3">
			<div class="pt-2 pb-2 text-danger">
				<h1>แจ้งเตือน!: นี่คือการเข้าใช้งานเว็บไซต์ครั้งแรก
					โปรดรักษารหัสผ่านของrootให้ดี
					เพราะหลังจากนี้ระบบจะไม่generateให้อีก!!</h1>
			</div>
			<h3>
				Username:
				<%=Username%></h3>
			<h3>
				Password:
				<%=Password%></h3>
			<div class="pt-2 pb-2 text-danger">
				<p>passwordของคุณจะถูกเข้ารหัสด้วยระบบSymmetric-key Cryptography</p>
			</div>
			<a href="../loginpage.jsp">Login!</a>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</html>