
import paczka.UtilityFlightClient;
import paczka.UtilityKlient;
import paczka.UtilityUser;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;




@WebServlet(name = "FlightForm", urlPatterns = "/FlightForm")
public class FlightForm extends HttpServlet {


    public static final long serialVersionUID = 1L;
    public String URL = "jdbc:mysql://localhost:3306/base";
    public String USER = "root";
    public String PASSWORD = "";
    Connection conn = null;
    protected UtilityFlightClient utilityFlightClient;

    public void init() throws ServletException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        utilityFlightClient = new UtilityFlightClient();
    }


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String imie = request.getParameter("Imie");
        String nazwisko = request.getParameter("Nazwisko");

        String email = request.getParameter("Email");
        String telefon = request.getParameter("Telefon");

        String ilosc = request.getParameter("Pass");
        String cenaLotu = request.getParameter("oba");

        int price = Integer.parseInt(ilosc)  * Integer.parseInt(cenaLotu);

        //String sql = "INSERT INTO base.carsclients(Imie, Nazwisko, Telefon, Email) values ('" + imie + "'"+" ,'" + nazwisko +"','" + telefon + "'"+" ,'" + email +"')";

        UtilityUser utilityUser = new UtilityUser();
        utilityUser.setImie(imie);
        utilityUser.setNazwisko(nazwisko);

        utilityUser.setEmail(email);
        utilityUser.setTelefon(telefon);

        utilityUser.setIloscPasazerow(ilosc);
        utilityUser.setCenaLotu(String.valueOf(price));
        try {
            utilityFlightClient.registerClient(utilityUser);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("FlightEnding.jsp");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
