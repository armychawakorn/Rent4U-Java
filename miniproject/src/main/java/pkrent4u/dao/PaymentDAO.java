package pkrent4u.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import pkrent4u.schema.Payment;

public class PaymentDAO {
	private Connection con;
    public PaymentDAO() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		this.con = DriverManager.getConnection("jdbc:mysql://localhost/rent4u?characterEncoding=utf-8", "root", "");
	}
	public void close() throws SQLException {
		this.con.close();
	}
    public ArrayList<Payment> getAllPayments() throws SQLException{
        ArrayList<Payment> result = new ArrayList<Payment>();
        String sql = "SELECT * FROM payment";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        while(rs.next()) {
            Payment payment = new Payment();
            payment.setPaymentID(rs.getString("PaymentID"));
            payment.setRentalID(rs.getInt("RentalID"));
            payment.setPaymentDate(rs.getString("PaymentDate"));
            payment.setAmount(rs.getInt("Amount"));
            result.add(payment);
        }
        return result;
    }
    public void DeletePayment(Payment payment) throws SQLException {
        String sql = "DELETE FROM payment WHERE PaymentID = ?;";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        stmt.setString(1, payment.getPaymentID());
        stmt.executeUpdate();
    }
    public void AddPayment(Payment payment) throws SQLException {
        String sql = "INSERT INTO `payment` (`RentalID`, `PaymentDate`, `Amount`) VALUES (?,?,?);";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        stmt.setInt(1, payment.getRentalID());
        stmt.setString(2, payment.getPaymentDate());
        stmt.setInt(3, payment.getAmount());
        stmt.executeUpdate();
    }
    public void UpdatePayment(String ID, Payment payment) throws SQLException {
        String sql = "UPDATE `payment` SET `RentalID` = ?, `PaymentDate` = ?, `Amount` = ? WHERE `payment`.`PaymentID` = ?;";
        PreparedStatement stmt = this.con.prepareStatement(sql);
        stmt.setInt(1, payment.getRentalID());
        stmt.setString(2, payment.getPaymentDate());
        stmt.setInt(3, payment.getAmount());
        stmt.setString(4, ID);
        stmt.executeUpdate();
    }
}
