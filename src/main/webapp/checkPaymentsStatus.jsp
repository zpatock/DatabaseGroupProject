<%@ page import="paid.*, java.util.*, java.sql.*"%>
<html>
<head>
<title>View All Expenses</title>
</head>
<body>
<h1>Expenses</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<table border="1">
		<thead>
			<tr>
				<th>Invoice Number</th>
				<th>Paid/Not</th>
			</tr>
			</thead>
<%
//<form method="POST" action="EditUserProfile_action.jsp">
//<a href="viewEditInvoice.jsp"> SAVE </a> <%= invNum 


		PaidController PC = new PaidController();
		//Date insDate = new Date(2022-01-22);
		ResultSet rs = PC.checkStatus();
		ResultSetMetaData rsmd = rs.getMetaData();
		int colNum = rsmd.getColumnCount();
		
		while (rs.next()) {	
				//rs.getString(1) + " ";
				//System.out.print(rs.getString(2) + "\n");
	%>
		<tr>
		<td><%= rs.getString(1) + "\t" %></td>
		<td><%= rs.getString(2) + "\t" %></td>
		</tr>
	<% 	
}
%>
</table>
</body>
</html>