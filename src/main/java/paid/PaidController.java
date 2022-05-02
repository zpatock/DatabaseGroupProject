package paid;


import java.sql.*;

public class PaidController {

	PreparedStatement preparedStmt;
	Connection myConnection;
	
	public PaidController() throws SQLException, ClassNotFoundException{   
	    //Load driver and link to driver manager
	    Class.forName("oracle.jdbc.OracleDriver");
	    //Create a connection to the specified database ("jdbc:oracle:thin:@//HOST:PORT/SERVICE_NAME","USERNAME","PASSWORD")

	    //REPLACE XXXXXX WITH YOUR ORACLE USERNAME AND YOUR PASSWORD
	    myConnection = DriverManager.getConnection("jdbc:oracle:thin:@//cscioraclerh7srv.ad.csbsju.edu:1521/" + 
	                                               "csci.cscioraclerh7srv.ad.csbsju.edu","Team09", "team09");
	  }
	
	public void insertPayment(String date, double outstandingBal, double amtPaid, int invNum) throws SQLException{
	    //A string to hold the SQL statement....Notice the use of ? in prepared statements
	    String queryString = "INSERT into TEAM09.TEAM09_PAID values(?,?,?,?)";
	    //Create a prepared statement using the connection object...must specify an SQL string as an argument
	    preparedStmt = myConnection.prepareStatement(queryString);
	    //Clear all parameters
	    preparedStmt.clearParameters();
	    
	    //Specify values for all ? in the query string
	    //preparedStmt.setString(1,"invoice_auto_incr.nextval");
	    preparedStmt.setDate(1,java.sql.Date.valueOf(date));
	    preparedStmt.setDouble(2,outstandingBal);
	    preparedStmt.setDouble(3,amtPaid);
	    preparedStmt.setInt(4,invNum);
	    
	    
	    int returns = preparedStmt.executeUpdate();
	    System.out.println(queryString);
	    System.out.println("Rows affected " + returns);
	    System.out.println("***********************************************************************************");
	    preparedStmt.close();
	  }
}
