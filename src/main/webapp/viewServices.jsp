<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="service.*, java.util.*, java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Services</title>
</head>
<body>
<h1>Customers</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<table border="1">
		<thead>
			<tr>
				<th>Service Type</th>
				<th>Default Rate</th>
				<th>Active</th>
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
	</tr>
	<%
}
%>
</table>
</body>
</html>