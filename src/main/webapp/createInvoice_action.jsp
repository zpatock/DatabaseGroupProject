<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import = "invoice.*, java.sql.*"%>
<%


int invNumber = Integer.valueOf(request.getParameter("invNumber"));
String invDate = request.getParameter("invDate");
double total = Integer.valueOf(request.getParameter("total"));
double outBal = Integer.valueOf(request.getParameter("outBal"));
int custNum = Integer.valueOf(request.getParameter("custNum"));

//System.out.println(invNumber);

InvoiceController IC = new InvoiceController();
IC.insertInvoice(invNumber, invDate, total, outBal, custNum);

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