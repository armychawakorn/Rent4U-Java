package pkrent4u.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import pkrent4u.schema.Customer;

public class CustomerDAO {
	private Connection con;
    public CustomerDAO() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		this.con = DriverManager.getConnection("jdbc:mysql://localhost/rent4u?characterEncoding=utf-8", "root", "");
	}
	public void close() throws SQLException {
		this.con.close();
	}
    public ArrayList<Customer> getAllCustomers() throws SQLException{
        ArrayList<Customer> result = new ArrayList<Customer>();
        String sql = "SELECT * FROM customer";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        while(rs.next()) {
            Customer customer = new Customer();
            customer.setCustomerID(rs.getString("CustomerID"));
            customer.setName(rs.getString("Name"));
            customer.setEmail(rs.getString("Email"));
            customer.setPhone(rs.getString("Phone"));
            customer.setAddress(rs.getString("Address"));
            result.add(customer);
        }
        return result;
    }
    public void DeleteCustomer(Customer customer) throws SQLException {
        String sql = "DELETE FROM customer WHERE CustomerID = ?;";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        stmt.setString(1, customer.getCustomerID());
        stmt.executeUpdate();
    }
    public void AddCustomer(Customer customer) throws SQLException {
        String sql = "INSERT INTO `customer` (`Name`, `Email`, `Phone`, `Address`) VALUES (?,?,?,?);";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        stmt.setString(1, customer.getName());
        stmt.setString(2, customer.getEmail());
        stmt.setString(3, customer.getPhone());
        stmt.setString(4, customer.getAddress());
        stmt.executeUpdate();
    }
    public void UpdateCustomer(String ID, Customer customer) throws SQLException {
        String sql = "UPDATE `customer` SET `Name` = ?, `Email` = ?, `Phone` = ?, `Address` = ? WHERE `customer`.`CustomerID` = ?;";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        stmt.setString(1, customer.getName());
        stmt.setString(2, customer.getEmail());
        stmt.setString(3, customer.getPhone());
        stmt.setString(4, customer.getAddress());
        stmt.setString(5, ID);
        stmt.executeUpdate();
    }
}
