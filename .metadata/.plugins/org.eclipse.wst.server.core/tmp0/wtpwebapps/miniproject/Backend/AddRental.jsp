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
	String customer = request.getParameter("customer");
	String carid = request.getParameter("car").equals("null") ? null : request.getParameter("car");
	String motorcycleid = request.getParameter("motorcycle").equals("null") ? null : request.getParameter("motorcycle");
	String employee = request.getParameter("employee");
	String rentalstartdate = request.getParameter("rentalstartdate");
	String rentalenddate = request.getParameter("rentalenddate");
	Car car = null;
	Motorcycle motor = null;
	int rentalRatePerDay = 0;
	if (carid != null) {
		car = new CarDAO().getCar(carid);
		car.setAvailable(0);
		new CarDAO().UpdateCar(car.getCarID(), car);
	}
	if (motorcycleid != null) {
		motor = new MotorcycleDAO().getMotor(motorcycleid);
		motor.setAvailable(0);
		new MotorcycleDAO().UpdateMotorcycle(motor.getMotorcycleID(), motor);
	}
	if(car != null){
		rentalRatePerDay += car.getRentalRatePerDay();
	}
	if(motor != null){
		rentalRatePerDay += motor.getRentalRatePerDay();
	}
	LocalDateTime startDateTime = LocalDateTime.parse(rentalstartdate);
    LocalDateTime endDateTime = LocalDateTime.parse(rentalenddate);
    Duration rentday = Duration.between(startDateTime, endDateTime);
    int totalDays = (int)rentday.toDays();
    int rentalCost = totalDays * rentalRatePerDay;
	RentalDAO r_dao = new RentalDAO();
	Rental rental = new Rental();
	rental.setCustomerID(customer);
	rental.setCarID(carid);
	rental.setMotorcycleID(motorcycleid);
	rental.setEmployeeID(employee);
	rental.setRentalStartDate(rentalstartdate);
	rental.setRentalEndDate(rentalenddate);
	rental.setTotalCost(rentalCost);
	r_dao.AddRental(rental);
	response.sendRedirect("../Admin/dashboard.jsp");
%>