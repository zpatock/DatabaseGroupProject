<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import = "customer.*, java.sql.*"%>
<%
int custNum = Integer.valueOf(request.getParameter("custNum"));
String last = request.getParameter("last");
String first = request.getParameter("first");
String company = request.getParameter("company");
String adr1 = request.getParameter("adr1");
String adr2 = request.getParameter("adr2");
String city = request.getParameter("city");
String state = request.getParameter("state");
String zip = request.getParameter("zip");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
System.out.println(custNum + last + first + company + adr1 + adr2 + city + state + zip + phone + email);
CustomerController cc = new CustomerController();
cc.updateCustomer(custNum, last, first,	company, adr1, adr2, city, state, zip, phone, email);

response.sendRedirect("viewCust.jsp");



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