package pkrent4u.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import pkrent4u.schema.*;


public class CarDAO {
	private Connection con;
	public CarDAO() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		this.con = DriverManager.getConnection("jdbc:mysql://localhost/rent4u?characterEncoding=utf-8", "root", "");
	}
	public void close() throws SQLException {
		this.con.close();
	}
	public ArrayList<Car> getAllCars() throws SQLException{
		ArrayList<Car> result = new ArrayList<Car>();
		String sql = "SELECT * FROM car";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while(rs.next()) {
			Car car = new Car();
			car.setCarID(rs.getString("CarID"));
			car.setBrand(rs.getString("Brand"));
			car.setModel(rs.getString("Model"));
			car.setImage(rs.getString("Image"));
			car.setYear(rs.getInt("Year"));
			car.setRentalRatePerDay(rs.getInt("RentalRatePerDay"));
			car.setAvailable(rs.getInt("Available"));
			result.add(car);
		}
		return result;
	}
	public Car getCar(String ID) throws SQLException{
		String sql = "SELECT * FROM car WHERE `CarID` = ?";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setString(1, ID);
		ResultSet rs = stmt.executeQuery();
		Car car = new Car();
		if(rs.next()) {
			car.setCarID(rs.getString("CarID"));
			car.setBrand(rs.getString("Brand"));
			car.setModel(rs.getString("Model"));
			car.setImage(rs.getString("Image"));
			car.setYear(rs.getInt("Year"));
			car.setRentalRatePerDay(rs.getInt("RentalRatePerDay"));
			car.setAvailable(rs.getInt("Available"));
		}
		return car;
	}
	public void DeleteCar(Car car) throws SQLException {
		String sql = "DELETE FROM car WHERE CarID = ?;";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setString(1, car.getCarID());
		stmt.executeUpdate();
	}
	public void AddCar(Car car) throws SQLException {
		String sql = "INSERT INTO `car` (`Brand`, `Model`, `Image`, `Year`, `RentalRatePerDay`, `Available`) VALUES (?,?,?,?,?,?);";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setString(1, car.getBrand());
		stmt.setString(2, car.getModel());
		stmt.setString(3, car.getImage());
		stmt.setInt(4, car.getYear());
		stmt.setInt(5, car.getRentalRatePerDay());
		stmt.setInt(6, car.isAvailable());
		stmt.executeUpdate();
	}

	public void UpdateCar(String ID, Car car) throws SQLException {
		String sql = "UPDATE `car` SET `Brand` = ?, `Model` = ?, `Image` = ?, `Year` = ?, `RentalRatePerDay` = ?, `Available` = ? WHERE `car`.`CarID` = ?;";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setString(1, car.getBrand());
		stmt.setString(2, car.getModel());
		stmt.setString(3, car.getImage());
		stmt.setInt(4, car.getYear());
		stmt.setInt(5, car.getRentalRatePerDay());
		stmt.setInt(6, car.isAvailable());
		stmt.setString(7, ID);
		stmt.executeUpdate();
	}
}
