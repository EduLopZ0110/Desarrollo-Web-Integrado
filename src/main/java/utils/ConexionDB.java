package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    private static final String URL = "jdbc:mysql://localhost:3306/veterinaria";  // Cambia por tu URL
    private static final String USER = "root";    // Tu usuario
    private static final String PASSWORD = "";    // Tu contraseña

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");  // Carga el driver de MySQL
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
