<%--
  Created by IntelliJ IDEA.
  User: JanGl
  Date: 15.04.2023
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<link rel="stylesheet" href="../style.css" type="text/css">
<head>
  <script>
    function validateForm() {
      var x = document.forms["myForm"]["skad"].value;
      var y = document.forms["myForm"]["dokad"].value;
      if (x == "" || x == null) {
        alert("Musisz chyba wpisac skad chcesz leciec, prawda?");
        return false;
      }
      if ( y == "" || y == null){
        alert("Musisz chyba wpisac gdzie chcesz leciec, prawda?")
        return false;
      }
    }
  </script>
    <title>Szukaj lotu!</title>
</head>
<body>
  <div class="group">
    <img src="../images/samolot.png">
    <h1>Szukaj lotu!</h1>
  </div>
<div class="wejscia">
  <form id="myForm" onsubmit="return validateForm()" action="Search2Flights" method="get">

    <label for="skad"><input placeholder="Skad chcesz leciec?" type="text" id="skad" name="skad"></label>

    <label for="dokad"><input placeholder="Gdzie chcesz leciec?" type="text" id="dokad" name="dokad"></label>
    <label for="time-input">Wybierz godzine</label><br>
    <input type="time" id="time-input" name="time"><br>
    <input type="submit" value="Szukaj">
    <input type="reset" value="Wyczyść">
  </form>
</div>

</body>
</html>
