<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Page</title>
</head>
<body>
<h1>Main Page</h1>
	<label>CUSTOMER<br></label>
	<form action="createCust.jsp" method="post">
		<input type="submit" value="Create New Customer"><br></form>
		<form action="viewCust.jsp" method="post">
		<input type="submit" value="View All Customers"><br></form>
		<br>
		<label>INVOICE<br></label>
		<form action="createInvoice.jsp" method="post">
		<input type="submit" value="Create New Invoice"><br></form>
		<form action="viewInvoice.jsp" method="post">
		<input type="submit" value="View All Invoices"><br></form>
		<form action="addPayment.jsp" method="post">
		<input type="submit" value="Add Invoice Payment"><br></form>
		<br>
		<label>SERVICE<br></label>
		<form action="createService.jsp" method="post">
		<input type="submit" value="Create New Service"><br></form>
		<form action="viewServices.jsp" method="post">
		<input type="submit" value="View All Services"><br></form>
		<br>
		<label>EXPENSES<br></label>
		<form action="newDesc.jsp" method="post">
		<input type="submit" value="Create New Expense Description"><br></form>
		<form action="viewExpenses.jsp" method="post">
		<input type="submit" value="View All Expenses"><br></form>
		<form action="logExpense.jsp" method="post">
		<input type="submit" value="Log New Expense"><br></form>
		<br>
		<label>GENERATE REPORTS<br></label>
		<form action="totalExpense.jsp" method="post">
		<input type="submit" value="Generate Total Expense Report"><br></form>
		<form action="totalIncome.jsp" method="post">
		<input type="submit" value="Generate Total Income Report"><br></form>
		<form action="unpaidInvoice.jsp" method="post">
		<input type="submit" value="View All Unpaid Invoices"><br></form>
		<form action="paidInvoice.jsp" method="post">
		<input type="submit" value="View All Paid Invoices"><br></form>
</body>
</html>