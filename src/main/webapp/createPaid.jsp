<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a Payment</title>
</head>
<h1>Create a Payment</h1>
<body>
<a href="mainPage.jsp"> back to menu</a><br><br>
<form method="POST" action="createPaid_action.jsp">
<table style="text-align: left; width: 400px; height: 150px" border="1">
<col style = "width:50%">
<col style = "width:50%">
<td>Invoice Number</td><td>
<input type = "text" name = "invNum" value="">
</td>
</tr>
<tr>
<td>Payment Date</td>
<td>
<input type = "text"  name = "payDate" value="">
</td>
</tr>
<tr>
<td>Outstanding Balance</td>
<td>
<input type = "text"  name = "outBal" value="">
</td>
</tr>
<tr>
<td>Amount Paid</td>
<td>
<input type = "text"  name = "amtPaid" value="">
</td>
</tr>
</table>

<form action="mainPage.jsp">
<input type="submit" value="Save">
</form>

<form method="POST" action="mainPage.jsp">
<input type="submit" value="Cancel">
</form>

</body>
</html>