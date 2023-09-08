import paczka.Utility;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet(name = "FlightBasket", urlPatterns = "/FlightBasket")
public class FlightBasket extends HttpServlet {



    public static final long serialVersionUID = 1L;
    public String URL = "jdbc:mysql://localhost:3306/base";
    public String USER = "root";
    public String PASSWORD = "";
    Connection conn = null;

    public void init() throws ServletException {

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
            out.println("<title>Loty</title>");
            out.println("</head>");
            out.println("<body>");



            int price = Integer.parseInt(request.getParameter("cena"));
            String first = request.getParameter("first");
            String second = request.getParameter("second");


            request.setAttribute("obaloty", price);
            request.setAttribute("first", first);
            request.setAttribute("second", second);

            RequestDispatcher rd =
                    request.getRequestDispatcher("BasketFlights.jsp");


            rd.forward(request, response);
            out.println("</body>");
            out.println("</html>");
        }

    }
}
