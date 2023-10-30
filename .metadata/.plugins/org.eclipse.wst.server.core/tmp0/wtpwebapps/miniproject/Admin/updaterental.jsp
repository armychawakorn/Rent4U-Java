<%@page import="pkrent4u.schema.Motorcycle"%>
<%@page import="pkrent4u.dao.MotorcycleDAO"%>
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
<title>Update Rental Page</title>
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/965375341071847434/1160730098618601482/image.png?ex=6535b924&is=65234424&hm=02edc80e5cc1c9b7937bdbc00efe262fb24180a3850827d298d32e71ee6a8d8b&">
<link rel="stylesheet" href="../css/Animetion.css">
<link rel="stylesheet" href="../css/global.css">
<link rel="stylesheet" href="../css/Bootstrap.css">
</head>
<body>
	<%@ include file="../components/Nav.jsp" %>
	<%
	if(username == null){ response.sendRedirect("../"); }
	String rentalID = request.getParameter("RentalID");
	RentalDAO r_dao = new RentalDAO();
	Rental current_rental = r_dao.getRental(rentalID);
	%>
	<div class="container dashboard-fade">
		<div class="ps-5 pt-3">
			<h2>แก้ไขRental</h2>
		</div>
		<form action="../Backend/updaterental.jsp" method="POST" class="ps-5 ">
			<div class="form-group">
					<label for="Customer">RentalID</label>
					<input type="text" id="rentalID" name="rentalID" value="<%=rentalID%>" class="form-control" readonly>
				</div>
			<div class="form-group">
				<label for="Customer">ลูกค้า</label> <select id="customer"
					name="customer" class="form-control">
					<%
					UsersDAO u_dao = new UsersDAO();
					ArrayList<Users> allusers = u_dao.getAllUsers();
					%>
					<%
					for (Users user : allusers) {
					%>
					<option value="<%=user.getUsername()%>"><%=user.getUsername()%></option>
					<%
					}
					%>
				</select>
			</div>
			<div class="form-group">
				<label for="Car">ข้อมูลรถยนต์</label> <select id="car" name="car"
					class="form-control">
					<option value="null">ไม่เลือก</option>
					<option value="0" disabled>====== รถยนต์ ======</option>
					<%
					CarDAO c_dao = new CarDAO();
					ArrayList<Car> cars = c_dao.getAllCars();
					%>
					<%
					for (Car car : cars) {
					%>
					<%
					if (car.isAvailable() == 1) {
					%>
					<option value="<%=car.getCarID()%>"><%=car.getCarID()%> -
						<%=car.getBrand()%>
						<%=car.getModel()%></option>
					<%
					} else {
					%>
					<option style="color: red;" value="<%=car.getCarID()%>" disabled><%=car.getCarID()%>
						-
						<%=car.getBrand()%>
						<%=car.getModel()%> (ไม่ว่าง)
					</option>
					<%
					}
					%>
					<%
					}
					%>
				</select>
			</div>
			<div class="form-group">
				<label for="Motorcycle">ข้อมูลจักรยานยนต์</label> <select id="motorcycle"
					name="motorcycle" class="form-control">
					<option value="null">ไม่เลือก</option>
					<option value="0" disabled>====== จักรยานยนต์ ======</option>
					<%
					MotorcycleDAO m_dao = new MotorcycleDAO();
					ArrayList<Motorcycle> motors = m_dao.getAllMotorcycles();
					%>
					<%
					for (Motorcycle motor : motors) {
					%>
					<%
					if (motor.isAvailable() == 1) {
					%>
					<option value="<%=motor.getMotorcycleID()%>"><%=motor.getMotorcycleID()%>
						-
						<%=motor.getBrand()%>
						<%=motor.getModel()%></option>
					<%
					} else {
					%>
					<option style="color: red;" value="<%=motor.getMotorcycleID()%>"
						disabled><%=motor.getMotorcycleID()%> -
						<%=motor.getBrand()%>
						<%=motor.getModel()%> (ไม่ว่าง)
					</option>
					<%
					}
					%>
					<%
					}
					%>
				</select>
			</div>
			<div class="form-group">
				<label for="Employee">พนักงาน</label> <select id="employee"
					name="employee" class="form-control">
					<%
					for (Users user : allusers) {
					%>
					<option value="<%=user.getUsername()%>"><%=user.getUsername()%></option>
					<%
					}
					%>
				</select>
			</div>
			<div class="d-flex justify-content-center">
				<div class="form-group w-100 pe-1">
					<label for="RentalStartDate">วันที่เช่า</label> <input
						type="datetime-local" class="form-control" id="rentalstartdate"
						name="rentalstartdate">
				</div>
				<div class="form-group w-100 ps-1">
					<label for="RentalEndDate">วันที่คืน</label> <input
						type="datetime-local" class="form-control" id="rentalenddate"
						name="rentalenddate">
				</div>
			</div>
			<div class="pt-2">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</html>