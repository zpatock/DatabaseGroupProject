package invoice;

import java.sql.*;

public class InvoiceController {
	
	PreparedStatement preparedStmt;
	Connection myConnection;
	
	public InvoiceController() throws SQLException, ClassNotFoundException{   
	    //Load driver and link to driver manager
	    Class.forName("oracle.jdbc.OracleDriver");
	    //Create a connection to the specified database ("jdbc:oracle:thin:@//HOST:PORT/SERVICE_NAME","USERNAME","PASSWORD")

	    //REPLACE XXXXXX WITH YOUR ORACLE USERNAME AND YOUR PASSWORD
	    myConnection = DriverManager.getConnection("jdbc:oracle:thin:@//cscioraclerh7srv.ad.csbsju.edu:1521/" + 
	                                               "csci.cscioraclerh7srv.ad.csbsju.edu","Team09", "team09");
	  }
	
	public ResultSet getAllInvoices() throws SQLException{
		   String queryString = "SELECT * FROM Team09_Invoice ORDER BY cust_num";
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
	   
	public ResultSet getInvoice(String invNum, String custNum) throws SQLException{
		   String queryString = "SELECT * FROM Team09_Invoice WHERE cust_num = " + custNum + " AND invoice_num = " + invNum +";";
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
	 
	public void insertInvoice(int invNum, String date, double total, double outstandingBal, int custNum) throws SQLException{
	    //A string to hold the SQL statement....Notice the use of ? in prepared statements
	    String queryString = "INSERT into TEAM09.TEAM09_INVOICE values(?,?,?,?,?)";
	    //Create a prepared statement using the connection object...must specify an SQL string as an argument
	    preparedStmt = myConnection.prepareStatement(queryString);
	    //Clear all parameters
	    preparedStmt.clearParameters();
	    //Specify values for all ? in the query string
	    preparedStmt.setInt(1,invNum);
	    preparedStmt.setDate(2,java.sql.Date.valueOf(date));
	    preparedStmt.setDouble(3,total);
	    preparedStmt.setDouble(4,outstandingBal);
	    preparedStmt.setInt(5,custNum);
	    
	    
	    int returns = preparedStmt.executeUpdate();
	    System.out.println(queryString);
	    System.out.println("Rows affected " + returns);
	    System.out.println("***********************************************************************************");
	    preparedStmt.close();
	  }
	
	public void updateInvoice(int invNum, String date, double total, double outstandingBal, int custNum) throws SQLException{
	    //A string to hold the SQL statement....Notice the use of ? in prepared statements
	    String queryString = "UPDATE TEAM09_INVOICE SET INVOICE_NUM = ?, INVOICE_DATE =  ?, TOTAL = ?, outstanding_balance = ?, cust_num = ? WHERE INVOICE_NUM = ? AND CUST_NUM = ?";
	    //Create a prepared statement using the connection object...must specify an SQL string as an argument
	    preparedStmt = myConnection.prepareStatement(queryString);
	    //Clear all parameters
	    preparedStmt.clearParameters();
	    //Specify values for all ? in the query string
	    preparedStmt.setInt(1,invNum);
	    preparedStmt.setDate(2,java.sql.Date.valueOf(date));
	    preparedStmt.setDouble(3,total);
	    preparedStmt.setDouble(4,outstandingBal);
	    preparedStmt.setInt(5,custNum);
	    preparedStmt.setInt(6,invNum);
	    preparedStmt.setInt(7, custNum);
	    
	    
	    int returns = preparedStmt.executeUpdate();
	    System.out.println(queryString);
	    System.out.println("Rows affected " + returns);
	    System.out.println("***********************************************************************************");
	    preparedStmt.close();
	  }
	
	public void totalInvoice(String startDate, String endDate) throws SQLException{
		   String queryString = "SELECT Team09_Invoice_Total_Func((?), (?)) FROM dual";
		   PreparedStatement preparedStmt = myConnection.prepareStatement(queryString);
		   preparedStmt.clearParameters();
		   preparedStmt.setString(1, startDate);
		   preparedStmt.setString(2, endDate);
		   ResultSet result = preparedStmt.executeQuery();
		   if (result.next()){    
			      System.out.println("Total Income from Invoices: " + result.getString(1));
			    }
			    System.out.println("***********************************************************************************");
			    result.close();
			    preparedStmt.close();
			  } 
	
	public ResultSet paidInvoice(String startDate, String endDate) throws SQLException{
		System.out.println(Date.valueOf(startDate));
	    String queryString = "SELECT i.invoice_date, i.total, i.outstanding_balance, c.last, c.first, c.phone_number, c.email FROM Team09_INVOICE i, TEAM09_CUSTOMER c WHERE i.cust_num = c.cust_num AND i.OUTSTANDING_BALANCE <> 0 AND INVOICE_DATE BETWEEN TO_DATE('"+java.sql.Date.valueOf(startDate)+"', 'YYYY-MM-DD') and TO_DATE('"+java.sql.Date.valueOf(endDate)+"', 'YYYY-MM-DD')";
	    Statement stmt = myConnection.createStatement();
	    ResultSet rs = stmt.executeQuery(queryString);
		return rs;
		   /*System.out.println("Date\tTotal\tOutstanding Balance\tCustomer Name\tPhone\tEmail");
		   while (rs.next()){
		          System.out.println(rs.getString("i.invoice_date") + "\t" + rs.getString("i.total") + "\t" + rs.getString("i.outstanding+balance") + "\t" + rs.getString("c.last") + ", " + rs.getString("c.first")
		          + "\t" + rs.getString("c.phone_number") + "\t" + rs.getString("c.email"));
		   }*/
		}
	
	public ResultSet unpaidInvoice(String startDate, String endDate) throws SQLException{
		System.out.println(Date.valueOf(startDate));
		   String queryString = "SELECT i.invoice_date, i.total, i.outstanding_balance, c.last, c.first, c.phone_number, c.email FROM Team09_INVOICE i, TEAM09_CUSTOMER c WHERE i.cust_num = c.cust_num AND i.OUTSTANDING_BALANCE <> 0 AND INVOICE_DATE BETWEEN TO_DATE('"+java.sql.Date.valueOf(startDate)+"', 'YYYY-MM-DD') and TO_DATE('"+java.sql.Date.valueOf(endDate)+"', 'YYYY-MM-DD')";
		   Statement stmt = myConnection.createStatement();
		   ResultSet rs = stmt.executeQuery(queryString);
		   return rs;
		   /*while (rs.next()){
		          System.out.println(rs.getString("i.invoice_date") + "\t" + rs.getString("i.total") + "\t" + rs.getString("i.outstanding+balance") + "\t" + rs.getString("c.last") + ", " + rs.getString("c.first")
		          + "\t" + rs.getString("c.phone_number") + "\t" + rs.getString("c.email"));
		   }*/
		}
	
}
