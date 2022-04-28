<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create an Invoice</title>
</head>
<h1>Create an Invoice</h1>
<body>
<a href="MainPage.jsp"> back to menu</a><br><br>
<form method="POST" action="createInvoice_action.jsp">
<table style="text-align: left; width: 400px; height: 150px" border="1">
<col style = "width:50%">
<col style = "width:50%">
<tr>
<td>Invoice Number</td>
<td>
<input type = "text" name = "invNumber" value="">
</td>
</tr>
<tr>
<td>Invoice Date</td><td>
<input type = "text" name = "invDate" value="">
</td>
</tr>
<tr>
<td>Total</td>
<td>
<input type = "text"  name = "total" value="">
</td>
</tr>
<tr>
<td>Outstanding Balance</td>
<td>
<input type = "text"  name = "outBal" value="">
</td>
</tr>
<tr>
<td> Customer Number </td>
<td>
<input type = "text"  name = "custNum" value="">
</td>
</tr>
</table>
</form>
<form action="mainPage.jsp">
<input type="submit" value="Save">
</form>

<form method="POST" action="mainPage.jsp">
<input type="submit" value="Cancel">
</form>

</body>
</html>