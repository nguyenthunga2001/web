package nlu.connection;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection{
	private static Connection con = null;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if(con == null) {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=FinalWeb;user=sa;password=123456789");
			System.out.println("connected");
		}
		return con;
	}
    
}
