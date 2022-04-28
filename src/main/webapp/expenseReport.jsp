<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Total Expense Report</title>
</head>
<body>
<h1>Total Expense Report</h1>
<a href="mainPage.jsp"> back to menu</a><br><br>
<form action="expenseReport.jsp" method="post">
		<label>Enter Start Date: <input type="text" name=startDt></label><br>
		<label>Enter End Date: <input type="text" name=endDate></label><br>
		<input type="submit" value="Generate Report">
	</form>
</body>
</html>