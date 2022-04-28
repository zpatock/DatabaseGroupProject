<%@ page import="customer.*,java.util.*, java.sql.*"%>
<html>
<head>
<title>View Search Results</title>
<style>
.searchbox {
float: left;}
input[type = text] {
padding: 6px;
margin-top: 8px;
font-size: 17px;
border: 1;}
.searchbox button{
padding: 8px
margin-top: 10px
margin-left: 10px
font-size: 20px;
border: none;
cursor: pointer;}
.searchbox button:hover {
background: blue;}</style>
</head>
<body>
<div class="searchbox">
<form><input type = "text" placeholder = "Search..." name="searchString">
<button type = "submit" onclick = "searchCust.jsp">Submit</button></form></div><br><br><br>
<h1>Customers</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<table style = "width: 50px" border="1">
		<thead>
			<tr>
				<th>Customer Number</th>
				<th style = "width: 10%">Last</th>
				<th style = "width: 10%">First</th>
				<th style = "width: 10%">Company</th>
				<th style = "width: 10%">Address Line 1</th>
				<th style = "width: 10%">Address Line 2</th>
				<th style = "width: 10%">City</th>
				<th style = "width: 10%">State</th>
				<th style = "width: 10%">ZIP</th>
				<th style = "width: 10%">Phone</th>
				<th style = "width: 10%">Email</th>
				<th></th>
			</tr>
			</thead>
<%
CustomerController cc = new CustomerController();
ResultSet rs = cc.searchCustomer(request.getParameter("searchString"));
while (rs.next()){
	%>
	<tr>
		<td><%= rs.getString("cust_num") + "\t" %></td>
		<td style = "width: 10%"><input type = "text"  name = "last" value="<%= rs.getString("last") + "\t" %>"></td>
		<td><input type = "text"  name = "first" value="<%= rs.getString("first") + "\t" %>"></td>
		<td><input type = "text"  name = "company" value="<%= rs.getString("company") + "\t" %>"></td>
		<td><input type = "text"  name = "adr1" value="<%= rs.getString("address_line_1") + "\t" %>"></td>
		<td><input type = "text"  name = "adr2" value="<%= rs.getString("address_line_2") + "\t" %>"></td>
		<td><input type = "text"  name = "city" value="<%= rs.getString("city") + "\t" %>"></td>
		<td><input type = "text"  name = "state" value="<%= rs.getString("state") + "\t" %>"></td>
		<td><input type = "text"  name = "zip" value=<%= rs.getString("zip") + "\t" %>></td>
		<td><input type = "text"  name = "phone" value=<%= rs.getString("phone_number") + "\t" %>></td>
		<td><input type = "text"  name = "email" value=<%= rs.getString("email") + "\t" %>></td>
		<td><a href="editCust.jsp">Save</a></td>
	</tr>
	<%
}
%>
</table>
</body>
</html>