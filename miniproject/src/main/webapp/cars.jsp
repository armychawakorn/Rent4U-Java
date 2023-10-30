<%@page import="pkrent4u.schema.Car"%>
<%@page import="pkrent4u.dao.CarDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList, pkrent4u.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cars</title>
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/965375341071847434/1160730098618601482/image.png?ex=6535b924&is=65234424&hm=02edc80e5cc1c9b7937bdbc00efe262fb24180a3850827d298d32e71ee6a8d8b&">
<link rel="stylesheet" href="css/Animetion.css">
<link rel="stylesheet" href="css/global.css">
<link rel="stylesheet" href="css/Bootstrap.css">
</head>
<body>
	<%@ include file="./components/Nav.jsp" %>
    <% 
    	CarDAO car = new CarDAO();
    	ArrayList<Car> cars = car.getAllCars();
    %>
	<div class="container dashboard-fade">
		<div class="d-flex justify-content-center p-5">
			<h2>หมวดหมู่: รถยนต์</h2>
			<h3></h3>
		</div>
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">
            <%
        	for(Car _car: cars){
        	%>
            <div class="col mb-4">
            <div class="card">
            <img src="<%=_car.getImage()%>" class="card-img-top" alt="<%=_car.getBrand()%> <%=_car.getModel()%>" width="128" height="256"  loading="lazy">
            <div class="card-body pb-0 pt-2">
            <h5 class="card-title" style="color:<%=(_car.isAvailable() == 1 ? "green" : "red")%>;"><%=_car.getBrand()%> <%=_car.getModel()%> <%=(_car.isAvailable() == 1 ? "" : "(ไม่ว่าง)") %></h5>
            </div>
            <ul class="list-group list-group-flush">
            <li class="list-group-item">ปีผลิตรถ: <%=_car.getYear()%></li>
            <li class="list-group-item">ราคาเช่าต่อวัน: <%=_car.getRentalRatePerDay()%> บาท</li>
            </ul>
            <div class="card-body">
            <a href="#" class="btn <%=(_car.isAvailable() == 1 ? "btn-primary" : "btn-danger")%>"><%=(_car.isAvailable() == 1 ? "Rent Now" : "Not Available") %></a>
            </div>
            </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</html>