package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    private static final String URL = "jdbc:mysql://localhost:3306/veterinaria?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root"; // cambia si tienes otro usuario
    private static final String PASSWORD = ""; // tu contraseña

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
