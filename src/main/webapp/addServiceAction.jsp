<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"

         import = "service.*, java.sql.*"%>
<%
    String type = request.getParameter("type");
    double rate = Double.parseDouble(request.getParameter("rate"));
    int active = Integer.valueOf(request.getParameter("active"));
    ServiceController SC = new ServiceController();
    SC.addService(type, rate, active);
    response.sendRedirect("mainPage.jsp");
%>