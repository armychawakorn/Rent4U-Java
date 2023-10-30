package pkrent4u.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import pkrent4u.schema.Users;

public class UsersDAO {
	private Connection con;

	public UsersDAO() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		this.con = DriverManager.getConnection("jdbc:mysql://localhost/rent4u?characterEncoding=utf-8", "root", "");
	}

	public void close() throws SQLException {
		this.con.close();
	}

	public ArrayList<Users> getAllUsers() throws SQLException {
		ArrayList<Users> result = new ArrayList<Users>();
		String sql = "SELECT * FROM users";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			Users user = new Users();
			user.setUsername(rs.getString("Username"));
			user.setPassword(rs.getString("Password"));
			user.setCreate_Time(rs.getString("Created_Time"));
			user.setUpdate_Time(rs.getString("Update_Time"));
			result.add(user);
		}
		return result;
	}
	public Users getUser(String Username) throws SQLException{
		String sql = "SELECT * FROM users WHERE `Username` = ?";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setString(1, Username);
		ResultSet rs = stmt.executeQuery();
		Users user = new Users();
		if(rs.next()) {
			user.setUsername(rs.getString("Username"));
			user.setPassword(rs.getString("Password"));
			user.setCreate_Time(rs.getString("Created_Time"));
			user.setUpdate_Time(rs.getString("Update_Time"));
		}
		return user;
	}
	public void DeleteUser(Users users) throws SQLException {
		String sql = "DELETE FROM users WHERE Username = ?;";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setString(1, users.getUsername());
		stmt.executeUpdate();
	}

	public void AddUsers(Users users) throws SQLException {
		String sql = "INSERT INTO `users` (`Username`, `Password`) VALUES (?,?);";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setString(1, users.getUsername());
		stmt.setString(2, users.getPassword());
		stmt.executeUpdate();
	}

	public void UpdateUsers(Users users) throws SQLException {
		String sql = "UPDATE `users` SET `Password` = ? WHERE `users`.`Username` = ?;";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setString(1, users.getPassword());
		stmt.executeUpdate();
	}
}
