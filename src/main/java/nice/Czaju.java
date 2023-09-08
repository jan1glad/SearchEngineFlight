package nice;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Czaju {

    public List getAllUsers() {
        final long serialVersionUID = 1L;
        String URL = "jdbc:mysql://localhost:3306/base";
        String USER = "root";
        String PASSWORD = "";
        Connection conn = null;
        ArrayList users = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            Statement stmt = conn.createStatement();
            // Create JDBC statement object, construct
            // the  query and execute the query.
            String sql = "SELECT * FROM base.warsaw WHERE FirstFlight= 'London'";
            ResultSet rs = stmt.executeQuery(sql);


            String firstFlight = rs.getString("FirstFlight");
            String landing = rs.getString("Landing");
            String hour = rs.getString("Hour");
            int cena = rs.getInt("Cena");
            while (rs.next()) {

            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
}
