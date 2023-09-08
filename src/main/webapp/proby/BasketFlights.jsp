<%@page import="java.util.ArrayList"%>
<%@ page import="paczka.Utility" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src ="../one.js"></script>
<link rel="stylesheet" href="../TableStyle.css" type="text/css">
<link rel="stylesheet" href="../form.css" type="text/css">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Koszyk</title>
</head>
<body>
<div class="table-wrapper">
    <table class="fl-table" id="myTable" border ="1" width="500" align="center">
        <thead>
        <tr bgcolor="00FF7F">
            <th><b>Skad</b></th>
            <th><b>Dokad</b></th>
            <th><b>Godzina</b></th>
            <th><b>Cena</b></th>
            <th><b>Wybierz lot</b></th>
        </tr></thead>
        <tbody>

        <%ArrayList<Utility> utt =
                (ArrayList<Utility>)request.getAttribute("second");
            for(Utility u:utt){%>

        <tr>
            <td> <%=u.getSkad()%> </td>
            <td><%=u.getDokad()%> </td>
            <td><%=u.getHour()%> </td>
            <td><%=u.getCena()%> </td>
        </tr>
        </tbody>

        <%}%>
    </table>
</div>
<div class="table-wrapper">
    <table class="fl-table" id="table1" border ="1" width="500" align="center">
        <thead>
        <tr bgcolor="00FF7F">
            <th><b>Skad</b></th>
            <th><b>Dokad</b></th>
            <th><b>Godzina</b></th>
            <th><b>Cena</b></th>
            <th><b>Wybierz lot</b></th>
        </tr></thead>
        <tbody>

        <%ArrayList<Utility> utt1 =
                (ArrayList<Utility>)request.getAttribute("first");
            for(Utility u:utt1){%>

        <tr>
            <td> <%=u.getSkad()%> </td>
            <td><%=u.getDokad()%> </td>
            <td><%=u.getHour()%> </td>
            <td><%=u.getCena()%> </td>
            </td>
        </tr>
        </tbody>

        <%}%>
    </table>
</div>
<p>
    Cena obu lotow to dla jednej osoby: <%= request.getAttribute("obaloty") %>
</p>
<select id="numberOfPeople" name="numberOfPeople">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
</select>
    <form class="form" id="FlightForm" onsubmit="return validateForm()" action="FlightForm" method="post">
        <p class="title">Wyślij formularz zgłoszeniowy </p>
        <p class="message">*Przesłanie formularza nie powoduje rezerwacji lotu. Aby potwierdzić rezerwację skontaktuje się z Państwem nasz agent na podane dane. </p>
        <p class="message">**Dane osobowe tylko osoby kupującej bilet(wszelkie dane pozostałych pasażerów trzeba będzie podać podczas odprawy)</p>
        <div class="flex">

            <label for="Imie">Imie
                <input required="" placeholder=""  type="text" id="Imie" name="Imie" class="input">
            </label>

            <label for="Nazwisko">Nazwisko
                <input required="" placeholder="Nazwusji" type="text" id="Nazwisko" name="Nazwisko" class="input">
            </label>
        </div>

        <label for="Telefon">Numer telefonu
            <input  placeholder="chlenb" type="number" id="Telefon" name="Telefon" value="+48" class="input">
        </label>

        <label for="Email">Email
            <input required="" placeholder="" type="text" id="Email" name="Email" class="input">
        </label>
        <button class="submit">Wyślij</button>
        <input class="submit" type="reset" value="Wyczyść">
    </form>

</body>
</html>
