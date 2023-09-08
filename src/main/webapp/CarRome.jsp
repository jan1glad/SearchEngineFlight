<%@page import="nice.Student"%>
<%@page import="nice.StudentServlet"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="paczka.Utility" %>
<%@ page import="nice.TryServlet" %>
<%@ page import="paczka.UtilityCars" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Samochody w Rzymie</title>
</head>
<script src ="one.js"></script>
<body>
<h1>Dostepne auta</h1>
<table border ="1" width="500" align="center">
    <tr bgcolor="00FF7F">
        <th><b>Model</b></th>
        <th><b>Rocznik</b></th>
        <th><b>Typ</b></th>
        <th><b>Paliwo</b></th>
        <th><b>Cena</b></th>
    </tr>
    <%-- Fetching the attributes of the request object
        which was previously set by the servlet
        "StudentServlet.java"
    --%>
    <%ArrayList<UtilityCars> utt =
            (ArrayList<UtilityCars>)request.getAttribute("data");
        for(UtilityCars u:utt){%>
    <%-- Arranging data in tabular form
    --%>
    <tr>
        <td><%=u.getModel()%></td>
        <td><%=u.getRocznik()%></td>
        <td><%=u.getTyp()%></td>
        <td><%=u.getPaliwo()%></td>
        <td><%=u.getCena()%></td>

        <td><form action="CarsPrice" method="get" onsubmit="return validateSelection()">
            <label>
                <input type="checkbox" style="display:none" name="selectedModel" id="selectedModel" value=<%=u.getModel()%>>
                <input type="checkbox" style="display:none" name="selectedCena" id="selectedCena" value=<%=u.getCena()%>>
                <input type="checkbox" onclick="checkAllInRow(this);">
                <input type="submit" value="Wybierz termin!"></label>
        </form></td>
    </tr>
    <%}%>
</table>
<hr/>
</body>
</html>
