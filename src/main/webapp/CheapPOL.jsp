<%@page import="nice.Student"%>
<%@page import="nice.StudentServlet"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="paczka.Utility" %>
<%@ page import="nice.TryServlet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Najtansze loty z Polski</title>
</head>
<body>
<h1>Dostepne loty</h1>
<table border ="1" width="500" align="center">
  <tr bgcolor="00FF7F">
    <th><b>Skad</b></th>
    <th><b>Dokad</b></th>
    <th><b>Godzina</b></th>
    <th><b>Cena</b></th>
  </tr>
  <%-- Fetching the attributes of the request object
      which was previously set by the servlet
      "StudentServlet.java"
  --%>
  <%ArrayList<Utility> utt =
          (ArrayList<Utility>)request.getAttribute("data");
    for(Utility u:utt){%>
  <%-- Arranging data in tabular form
  --%>
  <tr>
    <td><%=u.getSkad()%></td>
    <td><%=u.getDokad()%></td>
    <td><%=u.getHour()%></td>
    <td><%=u.getCena()%></td>
  </tr>
  <%}%>
</table>
<hr/>
</body>
</html>
