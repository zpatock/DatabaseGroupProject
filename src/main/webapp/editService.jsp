<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import = "service.*, java.sql.*"%>
<%
int servNum = Integer.valueOf(request.getParameter("servNum"));
String type = request.getParameter("type");
double rate = Double.parseDouble(request.getParameter("rate"));
int active = Integer.valueOf(request.getParameter("active"));
System.out.println(servNum+type+rate+active);
ServiceController sc = new ServiceController();
sc.updateService(servNum, type, rate, active);

response.sendRedirect("viewServices.jsp");



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