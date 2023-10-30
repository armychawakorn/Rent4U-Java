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
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/965375341071847434/1160730098618601482/image.png?ex=6535b924&is=65234424&hm=02edc80e5cc1c9b7937bdbc00efe262fb24180a3850827d298d32e71ee6a8d8b&">
<link rel="stylesheet" href="../css/Animetion.css">
<link rel="stylesheet" href="../css/global.css">
<link rel="stylesheet" href="../css/Bootstrap.css">
</head>
<body>
	<%@ include file="../components/Nav.jsp" %>
<%
	if(username == null){ response.sendRedirect("../"); }
%>
	<div class="container dashboard-fade">
		<div class="d-flex justify-content-between align-items-center pt-5">
			<h1>
				Welcome!
				<%=username%>
			</h1>
			<div>
				<a href="../Admin/rentalpage.jsp" class="btn btn-success">เพิ่มข้อมูล</a> <a
					href="../Backend/Logout.jsp" class="btn btn-danger">Logout</a>
			</div>
		</div>
		<table class="table table-bordered text-center">
			<thead>
				<tr>
					<th>RentalID</th>
					<th>CustomerID</th>
					<th>CarID</th>
					<th>MotorcycleID</th>
					<th>EmployeeID</th>
					<th>RentalStartDate</th>
					<th>RentalEndDate</th>
					<th>TotalCost</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
					RentalDAO dao = new RentalDAO();
					ArrayList<Rental> rentals = dao.getAllRentals();
				%>
				<%
					for(Rental r :rentals){
				%>
					<tr>
	                    <td><%=r.getRentalID()%></td>
	                    <td><%=r.getCustomerID()%></td>
	                    <td><%=r.getCarID()%>: <%=r.getCarName()%></td>
	                    <td><%=r.getMotorcycleID()%>: <%=r.getMotorcycleName()%></td>
	                    <td><%=r.getEmployeeID()%></td>
	                    <td><%=r.getRentalStartDate()%></td>
	                    <td><%=r.getRentalEndDate()%></td>
	                    <td><%=r.getTotalCost()%></td>
	                    <td>
                    		<a href='../Admin/updaterental.jsp?RentalID=<%=r.getRentalID()%>' class="ps-1 pe-1"><i class="fas fa-pen-to-square" style="color:red;"></i></a>
                    		<a href='../Backend/DeleteRental.jsp?RentalID=<%=r.getRentalID()%>' class="ps-1 pe-1"><i class="fas fa-prescription-bottle" style="color:red;"></i></a>
	                    </td>
                    </tr>
				<% } %>
			</tbody>
		</table>
	</div>
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</html>