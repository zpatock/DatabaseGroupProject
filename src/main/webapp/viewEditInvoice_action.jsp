<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="invoice.*,java.util.*, java.sql.*"%>
    
<%

int invNumber = Integer.valueOf(request.getParameter("invNum"));
String invDate = request.getParameter("invDate");
double total = Double.parseDouble(request.getParameter("total"));
double outBal = Double.parseDouble(request.getParameter("outBal"));
int custNum = Integer.valueOf(request.getParameter("custNum")); 

InvoiceController ic = new InvoiceController();
ic.updateInvoice(invNumber, invDate, total, outBal, custNum);


response.sendRedirect("viewInvoice.jsp");
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