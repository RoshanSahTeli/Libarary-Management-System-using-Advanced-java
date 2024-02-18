package roshan;
import java.sql.*;
public class ConnectionProvider {
	
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","java");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}

}
