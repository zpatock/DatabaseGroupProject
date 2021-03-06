<%@ page import="customer.*,java.util.*, java.sql.*"%>
<html>
<head>
<title>View All Customers</title>
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
<% CustomerController cc = new CustomerController();%>
<div class="searchbox">
<form action = "" method = "get">
<input type = "text" class = "form-control" name = "searchString" placeholder = "Search...">
</form></div>
<br><br><br><h1>Customers</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<table style = "width: 50px" border="1">
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
				<th></th>
			</tr>
			</thead>
<%
String searchString = request.getParameter("searchString");
ResultSet rs;
if (searchString != null) {
	rs = cc.searchCustomer(searchString);
}
else {
	rs = cc.getAllCustomers();
}
while (rs.next()){
	%>
	<tr>
		<form method="POST" action="editCust.jsp">
		<input type ="hidden" name ="custNum" value = <%= rs.getString("cust_num") %>>
		<td><input type = "text"  name = "last" value="<%= rs.getString("last")%>"></td>
		<td><input type = "text"  name = "first" value="<%= rs.getString("first") %>"></td>
		<td><input type = "text"  name = "company" value="<%= rs.getString("company") %>"></td>
		<td><input type = "text"  name = "adr1" value="<%= rs.getString("address_line_1")%>"></td>
		<td><input type = "text"  name = "adr2" value="<%= rs.getString("address_line_2")%>"></td>
		<td><input type = "text"  name = "city" value="<%= rs.getString("city")%>"></td>
		<td><input type = "text"  name = "state" value="<%= rs.getString("state")%>"></td>
		<td><input type = "text"  name = "zip" value="<%= rs.getString("zip")%>"></td>
		<td><input type = "text"  name = "phone" value="<%= rs.getString("phone_number")%>"></td>
		<td><input type = "text"  name = "email" value="<%= rs.getString("email")%>"></td>
		<td><form action="viewEditExpense.jsp">
			<input type="submit" value="Save"></form></td>
	</tr>
	<%
}
%>
</table>
</body>
</html>