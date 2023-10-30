package pkrent4u.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import pkrent4u.schema.Employee;

public class EmployeeDAO {
	private Connection con;
    public EmployeeDAO() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		this.con = DriverManager.getConnection("jdbc:mysql://localhost/rent4u?characterEncoding=utf-8", "root", "");
	}
	public void close() throws SQLException {
		this.con.close();
	}
    public ArrayList<Employee> getAllEmployees() throws SQLException{
        ArrayList<Employee> result = new ArrayList<Employee>();
        String sql = "SELECT * FROM employee";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        while(rs.next()) {
            Employee employee = new Employee();
            employee.setEmployeeID(rs.getInt("EmployeeID"));
            employee.setName(rs.getString("Name"));
            employee.setPosition(rs.getString("Position"));
            employee.setEmail(rs.getString("Email"));
            employee.setPassword(rs.getString("Password"));
            employee.setIVector(rs.getString("IVector"));
            employee.setPhone(rs.getString("Phone"));
            result.add(employee);
        }
        return result;
    }
    public void DeleteEmployee(Employee employee) throws SQLException {
        String sql = "DELETE FROM employee WHERE EmployeeID = ?;";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        stmt.setInt(1, employee.getEmployeeID());
        stmt.executeUpdate();
    }
    public void AddEmployee(Employee employee) throws SQLException {
        String sql = "INSERT INTO `employee` (`Name`, `Position`, `Email`, `Password`, `IVector`, `Phone`) VALUES (?,?,?,?,?,?);";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        stmt.setString(1, employee.getName());
        stmt.setString(2, employee.getPosition());
        stmt.setString(3, employee.getEmail());
        stmt.setString(4, employee.getPassword());
        stmt.setString(5, employee.getIVector());
        stmt.setString(6, employee.getPhone());
        stmt.executeUpdate();
    }
    public void UpdateEmployee(int ID, Employee employee) throws SQLException {
        String sql = "UPDATE `employee` SET `Name` = ?, `Position` = ?, `Email` = ?, `Password` = ?, `IVector` = ?, `Phone` = ? WHERE `employee`.`EmployeeID` = ?;";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        stmt.setString(1, employee.getName());
        stmt.setString(2, employee.getPosition());
        stmt.setString(3, employee.getEmail());
        stmt.setString(4, employee.getPassword());
        stmt.setString(5, employee.getIVector());
        stmt.setString(6, employee.getPhone());
        stmt.setInt(7, ID);
        stmt.executeUpdate();
    }
}
