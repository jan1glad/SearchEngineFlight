<%@page import="paczka.Utility"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.List" %>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta language="java" http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Student List</title>
</head>
<body>
Age: ${age }
<br>
Username: ${username }
<br>
Price: ${price }
<br>
Status: ${status }
<h1>Displaying Student List</h1>
<c:forEach var="aFruit" items="${fruits}">

    <p> ${aFruit} </p>

    </c>
</c:forEach>
<p>Number of items: ${itemCount} </p>
<p><%= request.getAttribute("app")%></p>
<table border ="1" width="500" align="center">
    <tr>
        <th><b>Student Name</b></th>
        <th><b>Student Age</b></th>
        <th><b>Course Undertaken</b></th>
        <th><b>d Undertaken</b></th>
    </tr>
    <%
        List<Utility> utilities = (List<Utility>) request.getAttribute("data");
        if (utilities != null)
            for(Utility utt:utilities){
    %>

    <tr>
        <td><%=utt.getSkad()%></td>
        <td><%=utt.getDokad()%></td>
        <td><%=utt.getHour()%></td>
        <td><%=utt.getCena()%></td>
    </tr>
    <%}%>
</table>
<hr/>

</body>
</html>
