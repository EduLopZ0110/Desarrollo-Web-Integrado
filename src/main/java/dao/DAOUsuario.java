package dao;

import modelo.Usuario;
import utils.ConexionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAOUsuario {
    public Usuario obtenerPorNombreUsuario(String nombreUsuario) {
        Usuario usuario = null;
        String sql = "SELECT * FROM USUARIO WHERE NombreUsuario = ?";
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, nombreUsuario);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                usuario = new Usuario();
                usuario.setIdUsuario(rs.getInt("IdUsuario"));
                usuario.setNombreUsuario(rs.getString("NombreUsuario"));
                usuario.setContrasenaHash(rs.getString("ContrasenaHash"));
                usuario.setIdRol(rs.getInt("IdRol"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return usuario;
    }

    public boolean validarCredenciales(String nombreUsuario, String contrasena) {
        Usuario usuario = obtenerPorNombreUsuario(nombreUsuario);
        if (usuario != null) {
            return usuario.getContrasenaHash().equals(contrasena);
        }
        return false;
    }

    public boolean registrarUsuario(Usuario usuario) {
        String sql = "INSERT INTO USUARIO (NombreUsuario, ContrasenaHash, IdRol) VALUES (?, ?, ?)";
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, usuario.getNombreUsuario());
            stmt.setString(2, usuario.getContrasenaHash());
            stmt.setInt(3, usuario.getIdRol());
            int filas = stmt.executeUpdate();
            return filas > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
