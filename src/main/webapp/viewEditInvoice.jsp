<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="invoice.*,java.util.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
/*
RegularUser u = (RegularUser) session.getAttribute("currUser");
String firstname = u.getFirstName();
String lastname = u.getLastName();
String password = u.getPassword();
*/
InvoiceController ic = new InvoiceController();
ResultSet rs = ic.getInvoice( , );
 %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Invoice</title>
</head>
<h1>Edit Invoice</h1>
<body>
<a href="Menu.jsp"> back to menu</a><br><br>
<form method="POST" action="EditUserProfile_action.jsp">
<table style="text-align: left; width: 400px; height: 150px" border="1">
<col style = "width:50%">
<col style = "width:50%">
<tr>
<td>Invoice Number</td>
<td>

</td>
</tr>
<tr>
<td>Invoice Date</td>
<td>
<input type = "text" name = "lastname" value="">
</td>
</tr>
<tr>
<td>Total</td>
<td> 
<input type = "text" name = "lastname" value="">
</td>
</tr>
<tr>
<td>Outstanding Balance</td>
<td>
<input type = "text"  name = "outBal" value="">
</td>
</tr>
<tr>
<td>Customer Number</td>
<td>

</td>
</tr>
</table>
<form action="ViewProfile.jsp">
<input type="submit" value="Save">
</form>

<form method="POST" action="Menu.jsp">
<input type="submit" value="Cancel">
</form>

</body>
</html>

