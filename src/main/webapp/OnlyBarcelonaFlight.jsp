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
  <title>Loty z Barcelony</title>
</head>
<script src ="one.js"></script>
<body>
<%--@declare id="flightform"--%><h1>Dostepne loty</h1>
<form id="sort-form">
  <label for="sort">Sortuj na podstawie Ceny:</label>
  <select id="sort" name="sort">
    <option value="asc">Rosnaco</option>
    <option value="desc">Malejaco</option>
  </select>
</form>

<button onclick=sortTable();>Sortuj!</button>
<table id="myTable" border ="1" width="500" align="center">
  <tr bgcolor="00FF7F">
    <th><b>Skad</b></th>
    <th><b>Dokad</b></th>
    <th><b>Godzina</b></th>
    <th><b>Cena</b></th>
    <th><b>Wybierz lot</b></th>
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
    <td> <%=u.getSkad()%> </td>
    <td><%=u.getDokad()%> </td>
    <td><%=u.getHour()%> </td>
    <td><%=u.getCena()%> </td>
    <td><form id="flightForm" action="ReturnFlight" method="get" onsubmit="return validateSelection()">
      <label>
        <input type="checkbox" style="display:none" name="selectedSecond" value=<%=u.getDokad()%>>

      <input type="checkbox" style="display:none" name="selectedFirst" value=<%=u.getSkad()%>>
      <input type="checkbox" style="display:none" name="selectedCena" value=<%=u.getCena()%>>
      <input type="checkbox" onclick="checkAllInRow(this);">
      <input type="submit" value="Szukaj"></label>
    </form>
    </td>
  </tr>
  <%}%>
</table>
<a href="ReturnFlight">Sprawdz loty powrotne</a>




<hr/>
</body>
</html>
