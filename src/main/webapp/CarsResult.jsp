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
  <title>Samochody w Lizbonie</title>
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
  <tr>
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
  <label>
    <input type="checkbox" style="display:none" name="selectedCena" id="selectedCena" value=<%=u.getCena()%>>
  </label>

  <%}%>
  </tr>
</table>
<hr/>
<form onsubmit="return date()">
  <label for="start">Start date:</label>

  <input type="date" id="start" name="trip-start"
         max="2023-12-31">
  <label for="end">End date:</label>

  <input type="date" id="end" name="trip-end"
         max="2023-12-31">
  <input type="submit" value="Szukaj">
  <div id="result"></div><br>
  <div id="discount"></div>
</form>
<div id="carImage" width="100 px" height="100"></div>
<form action="<%= request.getContextPath() %>/CarsBasket" method="post">
  Podaj nam swoje dane a my sie do ciebie odezwiemy aby potwierdzic i zweryfikowac wynajem auta!
  <label for="imie">Imie</label><br>
  <input type="text" id="imie" name="imie"><br>
  <label for="nazwisko">Nazwisko</label><br>
  <input type="text" id="nazwisko" name="nazwisko"><br>
  <label for="telefon">Numer telefonu</label><br>
  <input type="text" id="telefon" name="telefon" value="+48"><br>
  <label for="email">Email</label><br>
  <input type="text" id="email" name="email"><br>
  <input type="submit" value="Przeslij formularz">
</form>

<script>
  // Get the car image container
  const carImage = document.getElementById('carImage');
  // Get the selected model value
  const selectedModel = '<%= request.getParameter("selectedModel") %>';
  // Set the image source based on the selected model
  if (selectedModel === 'Astra') {
    carImage.innerHTML = '<img src="images/Astra.png" alt="Astra" >';
  } else if (selectedModel === 'Civic') {
    carImage.innerHTML = '<img src="images/Civic.png" alt="Civic" >';
  } else if (selectedModel === 'Clio') {
    carImage.innerHTML = '<img src="images/Clio.png" alt="Clio">';
  } else if (selectedModel === 'Compact') {
    carImage.innerHTML = '<img src="images/Compact.png" alt="Compact">';
  } else if (selectedModel === 'Eos') {
    carImage.innerHTML = '<img src="images/Eos.png" alt="Eos">';
  } else if (selectedModel === 'Golf') {
    carImage.innerHTML = '<img src="images/Golf.png" alt="Golf">';
  } else if (selectedModel === 'Megane') {
    carImage.innerHTML = '<img src="images/Megane.png" alt="Megane">';
  } else if (selectedModel === 'Passat') {
    carImage.innerHTML = '<img src="images/Passat.png" alt="Passat">';
  } else if (selectedModel === 'Polo') {
    carImage.innerHTML = '<img src="images/Polo.png" alt="Polo">';
  } else if (selectedModel === 'Renegade') {
    carImage.innerHTML = '<img src="images/Renegade.png" alt="Renegade">';
  } else if (selectedModel === 'Tiguan') {
    carImage.innerHTML = '<img src="images/Tiguan.png" alt="Tiguan">';
  } else if (selectedModel === 'Vitara') {
    carImage.innerHTML = '<img src="images/Vitara.png" alt="Vitara">';
  }
</script>
</body>
</html>
