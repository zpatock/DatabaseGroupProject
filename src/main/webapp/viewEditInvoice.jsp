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
//System.out.println(request.getParameterNames());
InvoiceController ic = new InvoiceController();
//ResultSet rs = ic.getInvoice( , );
	int invNumber = Integer.valueOf(request.getParameter("invNum"));
	String invDate = request.getParameter("invDate");
	double total = Integer.valueOf(request.getParameter("total"));
	double outBal = Integer.valueOf(request.getParameter("outBal"));
	int custNum = Integer.valueOf(request.getParameter("custNum"));
	//System.out.println(invNumber);
	//System.out.println(custNum);
 %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Invoice</title>
</head>
<h1>Edit Invoice</h1>
<body>
<a href="mainPage.jsp"> back to menu</a><br><br>
<form method="POST" action="viewEditInvoice_action.jsp">
<table style="text-align: left; width: 400px; height: 150px" border="1">
<col style = "width:50%">
<col style = "width:50%">
<tr>
<td>Invoice Number</td>
<td>
<%=invNumber%>
<input type = "hidden" name = "invNum" value="<%=invNumber%>"">
</td>
</tr>
<tr>
<td>Invoice Date</td>
<td>
<input type = "text" name = "invDate" value="<%=invDate%>"">
</td>
</tr>
<tr>
<td>Total</td>
<td> 
<input type = "text" name = "total" value="<%=total %>"">
</td>
</tr>
<tr>
<td>Outstanding Balance</td>
<td>
<input type = "text"  name = "outBal" value="<%=outBal%>">
</td>
</tr>
<tr>
<td>Customer Number</td>
<td>
<%=custNum%>
<input type = "hidden" name = "custNum" value="<%=custNum%>"">
</td>
</tr>
</table>
<form action="viewInvoice.jsp">
<input type="submit" value="Save">
</form>

<form method="POST" action="mainPage.jsp">
<input type="submit" value="Cancel">
</form>

</body>
</html>

