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
String startDate = request.getParameter("startDate");
String endDate = request.getParameter("endDate");
InvoiceController ic = new InvoiceController();
System.out.println(startDate + endDate);
ResultSet rs = ic.unpaidInvoice(startDate, endDate);
while (rs.next()){
	%>
	<tr>
		<td><%= rs.getString("invoice_date")%></td>
		<td><%= rs.getString("total")%></td>
		<td><%= rs.getString("outstanding_balance")%></td>
		<td><%= rs.getString("last")%></td>
		<td><%= rs.getString("first")%></td>
		<td><%= rs.getString("phone_number")%></td>
		<td><%= rs.getString("email")%></td>
	</tr>
	<%
}
%>
</table>
</body>
</html>