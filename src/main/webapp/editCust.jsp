<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import = "customer.*, java.sql.*"%>
<%

CustomerController cc = new CustomerController();
cc.updateCustomer(custNum, request.getParameter("last"), request.getParameter("first"),
		request.getParameter("company"), request.getParameter("adr1"), request.getParameter("adr2"),
		request.getParameter("city"), request.getParameter("state"), request.getParameter("zip"),
		request.getParameter("phone"), request.getParameter("email"));

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