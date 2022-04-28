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
InvoiceController ic = new InvoiceController();
ResultSet rs = ic.getAllInvoices();
while (rs.next()){
	%>
	<tr>
		<td><%= rs.getString("invoice_num") + "\t" %></td>
		<td><%= rs.getString("invoice_date") + "\t" %></td>
		<td><%= rs.getString("total") + "\t" %></td>
		<td><%= rs.getString("outstanding_balance") + "\t" %></td>
		<td><%= rs.getString("cust_num") + "\t" %></td>
	</tr>
	<%
}
%>
</table>
</body>
</html>