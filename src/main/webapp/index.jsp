<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="style.css" type="text/css">
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Tutaj kiedys bedzie najwieksza wyszukiwarka lotow!
</h1>
<br/>
<a href="DwieStrony">W obie strony</a>
<br>
<a href="JednaStrona">W jedna strone</a>
<h2>Najtansze loty z Polski ponizej 200 zl!</h2>
<form id="FromPoland" action="CheapPOL" method="get">
    <select id="Poland" name="Poland">
        <option value="Warsaw">Warszawa</option>
        <option value="Gdansk">Gdansk</option>
        <option value="Wroclaw">Wroclaw</option>
        <option value="Krakow">Krakow</option>
        <option value="Poznan">Poznan</option>
    </select>
    <input type="submit" value="Szukaj">
</form>
<h2>Loty z najpopularniejszych destynacji</h2>
<a href="Paris">Paryz</a>
<a href="London">Londyn</a>
<a href="Barcelona">Barcelona</a>
<h2>A moze potrzebujesz auta?</h2>
Wez auto na dluzej niz 7 dni w jednej z naszych nowych destynacji i dostan znizke o wartosci jednego dnia!
<br>
<a href="Rome">Rzym</a>
<a href="Lisbon">Lizbona</a>
<a href="Madrid">Madryt</a>

</body>
</html>