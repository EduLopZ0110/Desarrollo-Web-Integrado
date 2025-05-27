package dao;

import modelo.Mascota;
import utils.ConexionDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DAOMascota {

    public List<Mascota> obtenerPorIdUsuario(int idUsuario) {
        List<Mascota> mascotas = new ArrayList<>();
        String sql = "SELECT * FROM MASCOTA WHERE IdUsuario = ?";
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, idUsuario);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Mascota mascota = new Mascota();
                mascota.setIdMascota(rs.getInt("IdMascota"));
                mascota.setNombreMascota(rs.getString("NombreMascota"));
                mascota.setTipoMascota(rs.getString("TipoMascota"));
                mascota.setIdUsuario(rs.getInt("IdUsuario"));
                mascotas.add(mascota);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mascotas;
    }

    public boolean registrarMascota(Mascota mascota) {
        String sql = "INSERT INTO MASCOTA (NombreMascota, TipoMascota, IdUsuario) VALUES (?, ?, ?)";
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, mascota.getNombreMascota());
            stmt.setString(2, mascota.getTipoMascota());
            stmt.setInt(3, mascota.getIdUsuario());
            int filas = stmt.executeUpdate();
            return filas > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
