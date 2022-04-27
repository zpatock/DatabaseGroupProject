package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ServiceController {

	PreparedStatement preparedStmt;
	Statement stmt;
	Connection myConnection;
	
	public ServiceController() throws SQLException, ClassNotFoundException{   
	    //Load driver and link to driver manager
	    Class.forName("oracle.jdbc.OracleDriver");
	    //Create a connection to the specified database ("jdbc:oracle:thin:@//HOST:PORT/SERVICE_NAME","USERNAME","PASSWORD")

	    //REPLACE XXXXXX WITH YOUR ORACLE USERNAME AND YOUR PASSWORD
	    myConnection = DriverManager.getConnection("jdbc:oracle:thin:@//cscioraclerh7srv.ad.csbsju.edu:1521/" + 
	                                               "csci.cscioraclerh7srv.ad.csbsju.edu","Team09", "team09");
	  }

	public ResultSet getAllServices() throws SQLException{
		   String queryString = "SELECT * FROM Team09_SERVICE";
		   Statement stmt = myConnection.createStatement();
		   ResultSet rs = stmt.executeQuery(queryString);
		   return rs;
		   /*System.out.println("Service Type\tDefault Rate\tActive");
		   while (rs.next()){
		          System.out.println(rs.getString("service_type") + "\t" + rs.getString("default_rate") + "\t" + rs.getString("active"));
		   }*/
	}
	   
	   public void updateService(int servNum, String type, float rate, int active) throws SQLException{
		   String queryString = "UPDATE Team09_SERVICE SET SERVICE_TYPE = (?), DEFAULT_RATE = (?), ACTIVE = (?) WHERE SERVICE_NUM = (?)";
		   PreparedStatement preparedStmt = myConnection.prepareStatement(queryString);
		   preparedStmt.clearParameters();
		   preparedStmt.setString(1, type);
		   preparedStmt.setFloat(2, rate);
		   preparedStmt.setInt(3, active);
		   preparedStmt.setInt(4, servNum);

		   int returns = preparedStmt.executeUpdate();
		    System.out.println(queryString);
		    System.out.println("Rows affected " + returns);
		    System.out.println("***********************************************************************************");
		    preparedStmt.close();
		}
}
