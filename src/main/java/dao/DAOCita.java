package dao;

import modelo.Cita;
import utils.ConexionDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DAOCita {

    private Connection con;

    public DAOCita() {
        con = ConexionDB.getConnection();
    }

    public void registrarCita(Cita cita) {
        String sql = "INSERT INTO Cita (id_mascota, fecha_cita, motivo) VALUES (?, ?, ?)";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, cita.getIdMascota());
            ps.setDate(2, new java.sql.Date(cita.getFechaCita().getTime()));
            ps.setString(3, cita.getMotivo());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Cita> obtenerPorIdUsuario(int idUsuario) {
        List<Cita> citas = new ArrayList<>();
        String sql = "SELECT c.id_cita, c.id_mascota, c.fecha_cita, c.motivo, m.nombre_mascota " +
                     "FROM Cita c JOIN Mascota m ON c.id_mascota = m.id_mascota " +
                     "WHERE m.id_usuario = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, idUsuario);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Cita cita = new Cita();
                cita.setIdCita(rs.getInt("id_cita"));
                cita.setIdMascota(rs.getInt("id_mascota"));
                cita.setFechaCita(rs.getDate("fecha_cita"));
                cita.setMotivo(rs.getString("motivo"));
                cita.setNombreMascota(rs.getString("nombre_mascota")); // Si tienes este campo en Cita
                citas.add(cita);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return citas;
    }
}
