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
	String rentalID = request.getParameter("RentalID");
	RentalDAO r_dao = new RentalDAO();
	Rental rental = r_dao.getRental(rentalID);
	CarDAO c_dao = new CarDAO();
	Car car = c_dao.getCar(rental.getCarID());
	MotorcycleDAO m_dao = new MotorcycleDAO();
	Motorcycle motor = m_dao.getMotor(rental.getMotorcycleID());
	if(car != null){
		car.setAvailable(1);
		c_dao.UpdateCar(car.getCarID(), car);
	}
	if(motor != null){
		motor.setAvailable(1);
		m_dao.UpdateMotorcycle(motor.getMotorcycleID(), motor);
	}
	r_dao.DeleteRental(rentalID);
	response.sendRedirect("../Admin/dashboard.jsp");
%>