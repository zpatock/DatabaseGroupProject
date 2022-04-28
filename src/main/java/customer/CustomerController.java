package customer;

import java.sql.*;

public class CustomerController {
	
	PreparedStatement preparedStmt;
	Statement stmt;
	Connection myConnection;
	
	public CustomerController() throws SQLException, ClassNotFoundException{   
	    //Load driver and link to driver manager
	    Class.forName("oracle.jdbc.OracleDriver");
	    //Create a connection to the specified database ("jdbc:oracle:thin:@//HOST:PORT/SERVICE_NAME","USERNAME","PASSWORD")

	    //REPLACE XXXXXX WITH YOUR ORACLE USERNAME AND YOUR PASSWORD
	    myConnection = DriverManager.getConnection("jdbc:oracle:thin:@//cscioraclerh7srv.ad.csbsju.edu:1521/" + 
	                                               "csci.cscioraclerh7srv.ad.csbsju.edu","TEAM09", "team09");
	  }

	public ResultSet getAllCustomers() throws SQLException{
		   String queryString = "SELECT * FROM Team09_CUSTOMER ORDER BY last";
		   Statement stmt = myConnection.createStatement();
		   ResultSet rs = stmt.executeQuery(queryString);
		   //System.out.println("Last Name\tFirst Name\tCompany\tAddress Line 1\tAddress Line 2\tCity\tState\tZIP\tPhone\tEmail");
	/*	   while (rs.next()){
		          System.out.println(rs.getString("last") + "\t" + rs.getString("first") + "\t" + rs.getString("company") + "\t" + rs.getString("address_line_1")
		          + "\t" + rs.getString("address_line_2") + "\t" + rs.getString("city") + "\t" + rs.getString("state") + "\t" + rs.getString("zip")
		          + "\t" + rs.getString("phone_number") + "\t" + rs.getString("email"));
		   }*/
		   return rs;
		}
	   
	   public void updateCustomer(int custNum, String last, String first, String company, String adr1, String adr2, String city,
			   String state, String zip, String phone, String email) throws SQLException{
		   String queryString = "UPDATE Team09_CUSTOMER SET last = (?), first = (?), company = (?), address_line_1 = (?), address_line_2 = (?), city = (?), state = (?), zip = (?), phone_number = (?), email = (?) WHERE CUST_NUM = (?)";
		   PreparedStatement preparedStmt = myConnection.prepareStatement(queryString);
		   preparedStmt.clearParameters();
		   preparedStmt.setString(1, last);
		   preparedStmt.setString(2, first);
		   preparedStmt.setString(3, company);
		   preparedStmt.setString(4, adr1);
		   preparedStmt.setString(5, adr2);
		   preparedStmt.setString(6, city);
		   preparedStmt.setString(7, state);
		   preparedStmt.setString(8, zip);
		   preparedStmt.setString(9, phone);
		   preparedStmt.setString(10, email);
		   preparedStmt.setInt(11, custNum);
		   int returns = preparedStmt.executeUpdate();
		    System.out.println(queryString);
		    System.out.println("Rows affected " + returns);
		    System.out.println("***********************************************************************************");
		    preparedStmt.close();
}
	   
	   public ResultSet searchCustomer(String searchString) throws SQLException {
		   
		   String queryString = "SELECT * FROM Team09_CUSTOMER WHERE last LIKE '%"+searchString+"%' OR first LIKE '%"+searchString+"%' OR company LIKE '%"+searchString+"%' OR address_line_1 LIKE '%"+searchString+"%' OR address_line_2 LIKE '%"+searchString+"%' OR city LIKE '%"+searchString+"%' OR state LIKE '%"+searchString+"%' OR zip LIKE '%"+searchString+"%' OR phone_number LIKE '%"+searchString+"%' OR email LIKE '%"+searchString+"%'";
		   Statement stmt = myConnection.createStatement();
		   ResultSet rs = stmt.executeQuery(queryString);
		   return rs;
	   }
}
