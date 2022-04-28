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
<div class="searchbox">
<form><input type = "text" placeholder = "Search..." name="searchString">
<button type = "submit" onclick = "searchService.jsp">Submit</button></form></div><br><br><br>
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
ServiceController sc = new ServiceController();
ResultSet rs = sc.getAllServices();
while (rs.next()){
	%>
	<tr>
		<td><%= rs.getString("service_type") + "\t" %></td>
		<td><%= rs.getFloat("default_rate") + "\t" %></td>
		<td><%= rs.getString("active") + "\t" %></td>
		<td><a href="editService.jsp">Save</a></td>
	</tr>
	<%
}
%>
</table>
</body>
</html>