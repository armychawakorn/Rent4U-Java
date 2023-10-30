package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private Connection con;
	public MemberDAO() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		this.con = DriverManager.getConnection("jdbc:mysql://localhost/javafinal?characterEncoding=utf-8", "root", "");
	}
	public void close() throws SQLException {
		this.con.close();
	}
	public ArrayList<Member> getAllMember() throws SQLException{
		ArrayList<Member> result = new ArrayList<Member>();
		String sql = "SELECT * FROM employee";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while(rs.next()) {
			Member member = new Member();
			member.setID(rs.getInt("ID"));
			member.setName(rs.getString("Name"));
			member.setYear(rs.getInt("Year"));
			result.add(member);
		}
		return result;
	}
	public void DeleteUser(String ID) throws SQLException {
		String sql = "DELETE FROM employee WHERE ID = ?;";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setString(1, ID);
		stmt.executeUpdate();
	}
	public void AddUser(String Name, String Year) throws SQLException {
		String sql = "INSERT INTO javafinal.employee (Name, Year) VALUES (?,?);";
		PreparedStatement stmt = this.con.prepareStatement(sql);
		stmt.setString(1, Name);
		stmt.setString(2, Year);
		stmt.executeUpdate();
	}
}
