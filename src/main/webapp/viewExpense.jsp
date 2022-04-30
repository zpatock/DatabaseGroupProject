<%@ page import="expense.*, java.util.*, java.sql.*"%>
<html>
<head>
<title>View All Expenses</title>
</head>
<body>
<h1>Expenses</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<table border="1">
		<thead>
			<tr>
				<th>Expense Number</th>
				<th>Expense Date</th>
				<th>Company</th>
				<th>Outstanding Balance</th>
				<th>Total</th>
				<th>Description Number</th>
			</tr>
			</thead>
<%
//<form method="POST" action="EditUserProfile_action.jsp">
//<a href="viewEditInvoice.jsp"> SAVE </a> <%= invNum 

ExpenseController ec = new ExpenseController();
ResultSet rs = ec.getAllExpenses();
while (rs.next()){

	String expNum = rs.getString("expense_num");
	String expDate = rs.getString("expense_date");
	String comp = rs.getString("company");
	String outBal = rs.getString("outstanding_balance");
	String total = rs.getString("total");
	String descNum = rs.getString("desc_num");
	%>
	<tr>
		<form method="POST" action="viewEditExpense.jsp">
		<td><%= expNum + "\t" %></td>
		<td><%= expDate + "\t" %></td>
		<td><%= comp + "\t" %></td>
		<td><%= outBal + "\t" %></td>
		<td><%= total + "\t" %></td>
		<td><%= descNum + "\t" %></td>
		<td><input type ="hidden" name ="expNum" value = <%=expNum %>>
			<input type ="hidden" name ="expDate" value = <%=expDate %>>
			<input type ="hidden" name ="comp" value = <%=comp %>>
			<input type ="hidden" name ="outBal" value = <%=outBal %>>
			<input type ="hidden" name ="total" value = <%=total %>>
			<input type ="hidden" name ="descNum" value = <%=descNum %>>
			<form action="viewEditExpense.jsp">
			<input type="submit" value="Edit">
			</form></td>
		</tr>
		
	<% 
}
%>
</table>
</body>
</html>