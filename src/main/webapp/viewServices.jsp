<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="service.*, java.util.*, java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Services</title>
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
<%ServiceController sc = new ServiceController(); %>
<div class="searchbox">
<form action = "" method = "get">
<input type = "text" class = "form-control" name = "searchString" placeholder = "Search...">
</form></div><br><br><br>
<h1>Services</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<table border="1">
		<thead>
			<tr>
				<th>Service Type</th>
				<th>Default Rate</th>
				<th>Active</th>
				<th></th>
			</tr>
			</thead>
<%
String searchString = request.getParameter("searchString");
ResultSet rs;
if (searchString != null) {
	rs = sc.searchService(searchString);
}
else {
	rs = sc.getAllServices();
}

while (rs.next()){
	%>
	<tr>
		<form method="POST" action="editService.jsp">
		<input type ="hidden" name ="servNum" value = <%= rs.getString("service_num") %>>
		<td><input type = "text"  name = "type" value="<%= rs.getString("service_type")%>"></td>
		<td><input type = "text"  name = "rate" value="<%= rs.getString("default_rate")%>"></td>
		<td><input type = "text"  name = "active" value="<%= rs.getString("active")%>"></td>
		<td><form action="editService.jsp">
			<input type="submit" value="Save"></form></td>
	</tr>
	<%
}
%>
</table>
</body>
</html>