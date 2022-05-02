<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import = "paid.*, java.sql.*"%>
<%


//int invNumber = Integer.valueOf(request.getParameter("invNumber"));
String paymentDate = request.getParameter("payDate");
double outBal = Double.parseDouble(request.getParameter("outBal"));
double amtPaid = Double.parseDouble(request.getParameter("amtPaid"));
int invNum = Integer.valueOf(request.getParameter("invNum"));

//System.out.println(invNumber);

PaidController PC = new PaidController();
PC.insertPayment(paymentDate, outBal, amtPaid, invNum);

response.sendRedirect("mainPage.jsp");



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