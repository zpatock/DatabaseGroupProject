<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "invoice.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Paid Invoice</title>
</head>
<body>
<h1>Generate Paid Invoices Report</h1>
<body>
<a href="mainPage.jsp"> back to menu</a><br><br>
<form method="POST" action="paidInvoiceList.jsp">
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
</form>
<form action="paidInvoiceList.jsp">
<input type="submit" name = "Submit" value="Submit">
</form>
<form method="POST" action="mainPage.jsp">
<input type="submit" name = "cancel" value="Cancel">
</form>
</body>
</html>