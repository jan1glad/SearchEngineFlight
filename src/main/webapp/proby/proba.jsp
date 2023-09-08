<%--
  Created by IntelliJ IDEA.
  User: JanGl
  Date: 25.04.2023
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="wejscia">
    <form id="myForm" onsubmit="return validateForm()" action="try" method="get">
        <label for="skad">Skad chcesz leciec?</label><br>
        <input type="text" id="skad" name="skad"><br>
        <label for="time-input">Wybierz godzine</label><br>
        <input type="time" id="time-input" name="time"><br>
        <input type="submit" value="Szukaj">
    </form>
</div>
</body>
</html>
