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




@WebServlet(name = "ReturnFlight", urlPatterns = "/ReturnFlight")
public class ReturnFlightServlet extends HttpServlet {



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
            out.println("<title>Loty</title>");
            out.println("</head>");
            out.println("<body>");

            Statement stmt = conn.createStatement();

            String first = request.getParameter("selectedFirst");
            String second = request.getParameter("selectedSecond");
            String price = request.getParameter("selectedCena");
            String sql = "SELECT * FROM base.warsaw WHERE FirstFlight= '" + second + "'"+" AND Landing= '" + first + "'";
            ResultSet rs = stmt.executeQuery(sql);


            // List to hold Student objects
            ArrayList<Utility> utt = new ArrayList<Utility>();
            while (rs.next()){
                String firstFlight = rs.getString("FirstFlight");
                String landing = rs.getString("Landing");
                String hour = rs.getString("Hour");
                int cena = rs.getInt("Cena");
                utt.add(new Utility(firstFlight,landing,hour,cena));

            }
            request.setAttribute("data", utt);
            request.setAttribute("suma",price);

            RequestDispatcher rd =
                    request.getRequestDispatcher("ReturnFlight.jsp");


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
