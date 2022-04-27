<%@ page import="customer.*,java.util.*, java.sql.*"%>
<html>
<head>
<title>View All Customers</title>
</head>
<body>
<h1>Customers</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<table border="1">
		<thead>
			<tr>
				<th>Last</th>
				<th>First</th>
				<th>Company</th>
				<th>Address Line 1</th>
				<th>Address Line 2</th>
				<th>City</th>
				<th>State</th>
				<th>ZIP</th>
				<th>Phone</th>
				<th>Email</th>
			</tr>
			</thead>
<%
CustomerController cc = new CustomerController();
ResultSet rs = cc.getAllCustomers();
while (rs.next()){
	%>
	<tr>
		<td><%= rs.getString("last") + "\t" %></td>
		<td><%= rs.getString("first") + "\t" %></td>
		<td><%= rs.getString("company") + "\t" %></td>
		<td><%= rs.getString("address_line_1") + "\t" %></td>
		<td><%= rs.getString("address_line_1") + "\t" %></td>
		<td><%= rs.getString("address_line_2") + "\t" %></td>
		<td><%= rs.getString("city") + "\t" %></td>
		<td><%= rs.getString("state") + "\t" %></td>
		<td><%= rs.getString("zip") + "\t" %></td>
		<td><%= rs.getString("phone_number") + "\t" %></td>
		<td><%= rs.getString("email") + "\t" %></td>
	</tr>
	<%
}
%>
</table>
</body>
</html>