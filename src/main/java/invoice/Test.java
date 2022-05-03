package invoice;
import customer.*;
import paid.*;

import java.sql.*;

public class Test {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub

		/*
		InvoiceController IC = new InvoiceController();
		//Date insDate = new Date(2022-01-22);
		IC.insertInvoice("2022-01-22", 25, 34, 1);
		*/
		/*
		CustomerController cc = new CustomerController();
		ResultSet rs = cc.getAllCustomers();
		while (rs.next()){
	          System.out.println(rs.getString("last") + "\t" + rs.getString("first") + "\t" + rs.getString("company") + "\t" + rs.getString("address_line_1")
	          + "\t" + rs.getString("address_line_2") + "\t" + rs.getString("city") + "\t" + rs.getString("state") + "\t" + rs.getString("zip")
	          + "\t" + rs.getString("phone_number") + "\t" + rs.getString("email"));
	   }
		*/
		
		PaidController PC = new PaidController();
		//Date insDate = new Date(2022-01-22);
		ResultSet rs = PC.checkStatus();
		ResultSetMetaData rsmd = rs.getMetaData();
		int colNum = rsmd.getColumnCount();
		//System.out.println(colNum);
		while (rs.next()) {
				System.out.print(rs.getString(1) + " ");
				System.out.print(rs.getString(2) + "\n");
				
		
		}
		}
	}

