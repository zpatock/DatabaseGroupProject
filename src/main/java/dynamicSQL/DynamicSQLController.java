package dynamicSQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DynamicSQLController {
	
	PreparedStatement preparedStmt;
	Connection myConnection;
	
	public DynamicSQLController() throws SQLException, ClassNotFoundException{   
	    //Load driver and link to driver manager
	    Class.forName("oracle.jdbc.OracleDriver");
	    //Create a connection to the specified database ("jdbc:oracle:thin:@//HOST:PORT/SERVICE_NAME","USERNAME","PASSWORD")

	    //REPLACE XXXXXX WITH YOUR ORACLE USERNAME AND YOUR PASSWORD
	    myConnection = DriverManager.getConnection("jdbc:oracle:thin:@//cscioraclerh7srv.ad.csbsju.edu:1521/" + 
	                                               "csci.cscioraclerh7srv.ad.csbsju.edu","Team09", "team09");
	  }
	
	public ResultSet getAll(String tableName) throws SQLException{
		   String queryString = "SELECT * FROM TEAM09_INVOICE ORDER BY cust_num";
		   Statement stmt = myConnection.createStatement();
		   ResultSet rs = stmt.executeQuery(queryString);
		   System.out.println(rs);
		   //System.out.println("Last Name\tFirst Name\tCompany\tAddress Line 1\tAddress Line 2\tCity\tState\tZIP\tPhone\tEmail");
	/*	   while (rs.next()){
		          System.out.println(rs.getString("last") + "\t" + rs.getString("first") + "\t" + rs.getString("company") + "\t" + rs.getString("address_line_1")
		          + "\t" + rs.getString("address_line_2") + "\t" + rs.getString("city") + "\t" + rs.getString("state") + "\t" + rs.getString("zip")
		          + "\t" + rs.getString("phone_number") + "\t" + rs.getString("email"));
		   }*/
		   return rs;
		}
}
