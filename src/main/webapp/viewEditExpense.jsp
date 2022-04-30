<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="expense.*,java.util.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
/*
RegularUser u = (RegularUser) session.getAttribute("currUser");
String firstname = u.getFirstName();
String lastname = u.getLastName();
String password = u.getPassword();
*/
//System.out.println(request.getParameterNames());
ExpenseController ec = new ExpenseController();
//ResultSet rs = ic.getInvoice( , );
	int expenseNum = Integer.valueOf(request.getParameter("expNum"));
	String expDate = request.getParameter("expDate");
	String company = request.getParameter("comp");
	double outBal = Double.parseDouble(request.getParameter("outBal"));
	double total = Double.parseDouble(request.getParameter("total"));
	int descNum = Integer.valueOf(request.getParameter("descNum"));
	//System.out.println(invNumber);
	//System.out.println(custNum);
 %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Expense</title>
</head>
<h1>Edit Expense</h1>
<body>
<a href="mainPage.jsp"> back to menu</a><br><br>
<form method="POST" action="viewEditExpense_action.jsp">
<table style="text-align: left; width: 400px; height: 150px" border="1">
<col style = "width:50%">
<col style = "width:50%">
<tr>
<td>Expense Number</td>
<td>
<%=expenseNum%>
<input type = "hidden" name = "expNum" value="<%=expenseNum%>"">
</td>
</tr>
<tr>
<td>Expense Date</td>
<td>
<input type = "text" name = "expDate" value="<%=expDate%>"">
</td>
</tr>
<tr>
<td>Company</td>
<td> 
<input type = "text" name = "comp" value="<%=company %>"">
</td>
</tr>
<tr>
<td>Outstanding Balance</td>
<td>
<input type = "text"  name = "outBal" value="<%=outBal%>">
</td>
</tr>
<tr>
<td>Total</td>
<td>
<input type = "text"  name = "total" value="<%=total%>">
</td>
</tr>
<tr>
<td>Description Number</td>
<td>
<%=descNum%>
<input type = "hidden" name = "descNum" value="<%=descNum%>"">
</td>
</tr>
</table>
<form action="viewExpense.jsp">
<input type="submit" value="Save">
</form>

<form method="POST" action="mainPage.jsp">
<input type="submit" value="Cancel">
</form>

</body>
</html>

