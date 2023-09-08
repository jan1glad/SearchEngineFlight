package CarsRental;

import paczka.UtilityCars;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Rome", urlPatterns = "/Rome")
public class CarRomeServlet extends HttpServlet {

    public static final long serialVersionUID = 1L;
    public String URL = "jdbc:mysql://localhost:3306/base";
    public String USER = "root";
    public String PASSWORD = "";
    //public String DRIVER = "org.postgresql.Driver";
    Connection conn = null;

    public void init() throws ServletException {

        // Database connection through Driver Manager
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Samochody z Barcelony</title>");
            out.println("</head>");
            out.println("<body>");

            Statement stmt = conn.createStatement();
            String sql = "SELECT * FROM base.modele WHERE City= 'Rome'";
            ResultSet rs = stmt.executeQuery(sql);


            // List to hold Student objects
            ArrayList<UtilityCars> utt = new ArrayList<UtilityCars>();
            while (rs.next()){
                String model = rs.getString("Model");
                int rocznik = rs.getInt("Rocznik");
                String typ = rs.getString("Typ");
                String paliwo = rs.getString("Paliwo");
                int cena = rs.getInt("Cena");
                utt.add(new UtilityCars(model,rocznik,typ,paliwo,cena));
            }

            request.setAttribute("data", utt);


            RequestDispatcher rd =
                    request.getRequestDispatcher("CarRome.jsp");


            rd.forward(request, response);
            out.println("</body>");
            out.println("</html>");
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
