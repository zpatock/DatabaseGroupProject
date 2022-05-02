<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "invoice.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Total Income Report</title>
</head>
<body>
<h1>Total Income Report</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<form method="POST" action="totalIncomeReport.jsp">
<table style="text-align: left; width: 400px; height: 150px" border="1">
<col style = "width:50%">
<col style = "width:50%">
<tr>
<td>Start Date</td>
<td>
<input type = "text" name = "startDate" value="">
</td>
</tr>
<tr>
<td>End Date</td><td>
<input type = "text" name = "endDate" value="">
</td>
</tr>
</table>
<form action="totalIncomeReport.jsp">
<input type="submit" name = "Submit" value="Submit">
</form>
<form method="POST" action="mainPage.jsp">
<input type="submit" name = "cancel" value="Cancel">
</form><br><br>
<table border="1">
		<thead>
			<tr>
				<th>Total Income</th>
			</tr>
			</thead>
<%

String startDate = request.getParameter("startDate");
String endDate = request.getParameter("endDate");
System.out.println(startDate+endDate);
InvoiceController ic = new InvoiceController();
ResultSet rs = ic.totalInvoice(startDate, endDate);

while (rs.next()) { %>
	<tr>
	<td><%= rs.getString("tot")%></td>
</tr>
	<%
}


%>
</body>
</html>