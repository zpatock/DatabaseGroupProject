package expense;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ExpenseController {
	
	PreparedStatement preparedStmt;
	Statement stmt;
	Connection myConnection;
	
	public ExpenseController() throws SQLException, ClassNotFoundException{   
	    //Load driver and link to driver manager
	    Class.forName("oracle.jdbc.OracleDriver");
	    //Create a connection to the specified database ("jdbc:oracle:thin:@//HOST:PORT/SERVICE_NAME","USERNAME","PASSWORD")

	    //REPLACE XXXXXX WITH YOUR ORACLE USERNAME AND YOUR PASSWORD
	    myConnection = DriverManager.getConnection("jdbc:oracle:thin:@//cscioraclerh7srv.ad.csbsju.edu:1521/" + 
	                                               "csci.cscioraclerh7srv.ad.csbsju.edu","Team09", "team09");
	  }

	public void totalExpense(String startDate, String endDate) throws SQLException{
		   String queryString = "SELECT Team09_Expenses_Total_Func((?), (?)) FROM dual";
		   PreparedStatement preparedStmt = myConnection.prepareStatement(queryString);
		   preparedStmt.clearParameters();
		   preparedStmt.setString(1, startDate);
		   preparedStmt.setString(2, endDate);
		   ResultSet result = preparedStmt.executeQuery();
		   if (result.next()){    
			      System.out.println("Total Expense: " + result.getString(1));
			    }
			    System.out.println("***********************************************************************************");
			    result.close();
			    preparedStmt.close();
			  } 
	
	public ResultSet getAllExpenses() throws SQLException{
		   String queryString = "SELECT * FROM TEAM09_EXPENSES ORDER BY expense_num";
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
	
	public void updateExpense(int expNum, String date, String company, double outBal, double total, int descNum) throws SQLException{
	    //A string to hold the SQL statement....Notice the use of ? in prepared statements
	    String queryString = "UPDATE TEAM09_EXPENSES SET EXPENSE_NUM = ?, EXPENSE_DATE =  ?, COMPANY = ?, outstanding_balance = ?, TOTAL = ?,  desc_num = ? WHERE expense_num = ? AND desc_num = ?";
	    //Create a prepared statement using the connection object...must specify an SQL string as an argument
	    preparedStmt = myConnection.prepareStatement(queryString);
	    //Clear all parameters
	    preparedStmt.clearParameters();
	    //Specify values for all ? in the query string
	    preparedStmt.setInt(1,expNum);
	    preparedStmt.setDate(2,java.sql.Date.valueOf(date));
	    preparedStmt.setString(3,company);
	    preparedStmt.setDouble(4,outBal);
	    preparedStmt.setDouble(5,total);
	    preparedStmt.setInt(6,descNum);
	    preparedStmt.setInt(7,expNum);
	    preparedStmt.setInt(8, descNum);
	    
	    
	    int returns = preparedStmt.executeUpdate();
	    System.out.println(queryString);
	    System.out.println("Rows affected " + returns);
	    System.out.println("***********************************************************************************");
	    preparedStmt.close();
	  }
}

