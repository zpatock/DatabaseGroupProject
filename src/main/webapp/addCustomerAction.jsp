<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"

         import = "customer.*, java.sql.*"%>


<%
    String last = request.getParameter("last");
    String first = request.getParameter("first");
    String company = request.getParameter("company");
    String addr1 = request.getParameter("addr1");
    String addr2 = request.getParameter("addr2");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String zip = request.getParameter("zip");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");

    CustomerController CC = new CustomerController();
    CC.createCustomer(last, first, company, addr1, addr2, city, state, zip, phone, email);
    response.sendRedirect("mainPage.jsp");
%>