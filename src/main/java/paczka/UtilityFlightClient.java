package paczka;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import paczka.UtilityUser;

public class UtilityFlightClient {

    public int registerClient(UtilityUser utilityUser) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO flightclients" +
                "  (Imie, Nazwisko, Telefon, Email, IloscPasazerow,CenaLotu) VALUES " +
                " (?, ?, ?, ?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/base", "root", "");

             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, utilityUser.getImie());
            preparedStatement.setString(2, utilityUser.getNazwisko());
            preparedStatement.setString(3, utilityUser.getTelefon());
            preparedStatement.setString(4, utilityUser.getEmail());
            preparedStatement.setString(5, utilityUser.getIloscPasazerow());
            preparedStatement.setString(6, utilityUser.getCenaLotu());

            System.out.println(preparedStatement);
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}