<%@ page import="invoice.*,java.util.*, java.sql.*"%>
<html>
<head>
<title>View All Invoices</title>
</head>
<body>
<h1>Invoices</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<table border="1">
		<thead>
			<tr>
				<th>Invoice Number</th>
				<th>Invoice Date</th>
				<th>Total</th>
				<th>Outstanding Balance</th>
				<th>Customer Number</th>
			</tr>
			</thead>
<%
//<form method="POST" action="EditUserProfile_action.jsp">
//<a href="viewEditInvoice.jsp"> SAVE </a> <%= invNum 

InvoiceController ic = new InvoiceController();
ResultSet rs = ic.getAllInvoices();
while (rs.next()){
	System.out.println("Current result" + rs.getString("cust_num"));
	String invNum = rs.getString("invoice_num");
	String custNum = rs.getString("cust_num");
	String invDate = rs.getString("invoice_date");
	String total = rs.getString("total");
	String outBal = rs.getString("outstanding_balance");
	%>
	<tr>
		<form method="POST" action="viewEditInvoice.jsp">
		<td><%= invNum + "\t" %></td>
		<td><%= invDate + "\t" %></td>
		<td><%= total + "\t" %></td>
		<td><%= outBal + "\t" %></td>
		<td><%= custNum + "\t" %></td>
		<td><input type ="hidden" name ="invNum" value = <%=invNum %>>
			<input type ="hidden" name ="custNum" value = <%=custNum %>>
			<input type ="hidden" name ="invDate" value = <%=invDate %>>
			<input type ="hidden" name ="total" value = <%=total %>>
			<input type ="hidden" name ="outBal" value = <%=outBal %>>
			<form action="viewEditInvoice.jsp">
			<input type="submit" value="Edit">
			</form></td>
		</tr>
		
	<% 
}
%>
</table>
</body>
</html>