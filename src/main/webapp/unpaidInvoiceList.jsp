<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "invoice.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Unpaid Invoice</title>
</head>
<body>
<h1>View Unpaid Invoices</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<table border="1">
		<thead>
			<tr>
				<th>Invoice Date</th>
				<th>Total</th>
				<th>Outstanding Balance</th>
				<th>Last Name</th>
				<th>First Name</th>
				<th>Phone</th>
				<th>Email</th>
			</tr>
			</thead>
<%
InvoiceController ic = new InvoiceController();
System.out.println(request.getParameter("startDate") + request.getParameter("endDate"));
ResultSet rs = ic.unpaidInvoice(request.getParameter("startDate"), request.getParameter("endDate"));
while (rs.next()){
	%>
	<tr>
		<td><%= rs.getString("i.invoice_date") + "\t" %></td>
		<td><%= rs.getString("i.total") + "\t" %></td>
		<td><%= rs.getFloat("i.outstanding_balance") + "\t" %></td>
		<td><%= rs.getString("c.last") + "\t" %></td>
		<td><%= rs.getString("c.first") + "\t" %></td>
		<td><%= rs.getString("c.phone_number") + "\t" %></td>
		<td><%= rs.getString("c.email") + "\t" %></td>
	</tr>
	<%
}
%>
</table>
</body>
</html>