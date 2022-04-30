<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="expense.*, java.util.*, java.sql.*"%>
    
<%

int expenseNum = Integer.valueOf(request.getParameter("expNum"));
String expDate = request.getParameter("expDate");
String company = request.getParameter("comp");
double outBal = Double.parseDouble(request.getParameter("outBal"));
double total3 = Double.parseDouble(request.getParameter("total"));
int descNum = Integer.valueOf(request.getParameter("descNum"));
/*
System.out.println(expenseNum);
System.out.println(expDate);
System.out.println(company);
System.out.println(outBal);
System.out.println(total);
System.out.println(descNum);
*/
ExpenseController ec = new ExpenseController();
ec.updateExpense(expenseNum, expDate, company, outBal, total3, descNum);


response.sendRedirect("viewExpense.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>