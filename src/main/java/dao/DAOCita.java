package dao;

import modelo.Cita;
import utils.ConexionDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DAOCita {

    public boolean agregarCita(Cita cita) {
        String sql = "INSERT INTO citas(id_mascota, fecha, hora, motivo) VALUES (?, ?, ?, ?)";
        try (Connection con = ConexionDB.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, cita.getId_mascota());
            ps.setDate(2, cita.getFecha());
            ps.setTime(3, cita.getHora());
            ps.setString(4, cita.getMotivo());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Cita> listarPorUsuario(int id_usuario) {
        List<Cita> lista = new ArrayList<>();
        String sql = "SELECT c.* FROM citas c JOIN mascotas m ON c.id_mascota = m.id WHERE m.id_usuario = ?";
        try (Connection con = ConexionDB.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id_usuario);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Cita cita = new Cita();
                cita.setId(rs.getInt("id"));
                cita.setId_mascota(rs.getInt("id_mascota"));
                cita.setFecha(rs.getDate("fecha"));
                cita.setHora(rs.getTime("hora"));
                cita.setMotivo(rs.getString("motivo"));
                lista.add(cita);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }
}
