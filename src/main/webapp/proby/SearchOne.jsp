
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<link rel="stylesheet" href="../style.css" type="text/css">
<head>


  <title>Szukaj lotu!</title>
</head>
<body>
<div class="group">
  <img src="../images/samolot.png">
  <h1>Szukaj lotu!</h1>
</div>
<div class="wejscia">
  <form id="myForm" onsubmit="return validateForm()" action="one" method="get">
    <label for="skad">Skad chcesz leciec?</label><br>
    <input type="text" id="skad" name="skad"><br>
    <label for="time-input">Wybierz godzine</label><br>
    <input type="time" id="time-input" name="time"><br>
    <input type="submit" value="Szukaj">
    <input type="reset" value="Wyczyść">
  </form>
</div>

</body>
</html>
