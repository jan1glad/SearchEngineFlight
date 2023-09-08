package CarsRental;

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




@WebServlet(name = "CarsBasket", urlPatterns = "/CarsBasket")
public class CarsBasket extends HttpServlet {


    public static final long serialVersionUID = 1L;
    public String URL = "jdbc:mysql://localhost:3306/base";
    public String USER = "root";
    public String PASSWORD = "";
    //public String DRIVER = "org.postgresql.Driver";
    Connection conn = null;
    protected UtilityKlient utilityKlient;

    public void init() throws ServletException {

        // Database connection through Driver Manager
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        utilityKlient = new UtilityKlient();
    }


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String imie = request.getParameter("imie");
        String nazwisko = request.getParameter("nazwisko");
        String telefon = request.getParameter("telefon");
        String email = request.getParameter("email");


        //String sql = "INSERT INTO base.carsclients(Imie, Nazwisko, Telefon, Email) values ('" + imie + "'"+" ,'" + nazwisko +"','" + telefon + "'"+" ,'" + email +"')";

        UtilityUser utilityUser = new UtilityUser();
        utilityUser.setImie(imie);
        utilityUser.setNazwisko(nazwisko);
        utilityUser.setTelefon(telefon);
        utilityUser.setEmail(email);

        try {
            utilityKlient.registerClient(utilityUser);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("BasketCars.jsp");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
