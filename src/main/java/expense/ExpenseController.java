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
}

