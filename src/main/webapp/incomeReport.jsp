<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Total Income Report</title>
</head>
<body>
<h1>Total Income Report</h1>
<form action="incomeReport.jsp" method="post">
		<label>Enter Start Date: <input type="text" name=startDt></label><br>
		<label>Enter End Date: <input type="text" name=endDate></label><br>
		<input type="submit" value="Generate Report">
	</form>
<form><input type = "button" value = "Go back!" onclick = "history.go(-1)"></form>
</body>
</html>