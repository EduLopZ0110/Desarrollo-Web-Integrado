package dao;

import modelo.Mascota;
import utils.ConexionDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DAOMascota {

    public boolean agregarMascota(Mascota mascota) {
        String sql = "INSERT INTO mascotas(id_usuario, nombre, especie, raza) VALUES (?, ?, ?, ?)";
        try (Connection con = ConexionDB.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, mascota.getId_usuario());
            ps.setString(2, mascota.getNombre());
            ps.setString(3, mascota.getEspecie());
            ps.setString(4, mascota.getRaza());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Mascota> listarPorUsuario(int id_usuario) {
        List<Mascota> lista = new ArrayList<>();
        String sql = "SELECT * FROM mascotas WHERE id_usuario = ?";
        try (Connection con = ConexionDB.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id_usuario);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Mascota m = new Mascota();
                m.setId(rs.getInt("id"));
                m.setId_usuario(rs.getInt("id_usuario"));
                m.setNombre(rs.getString("nombre"));
                m.setEspecie(rs.getString("especie"));
                m.setRaza(rs.getString("raza"));
                lista.add(m);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }

    public Mascota obtenerPorId(int id) {
        Mascota mascota = null;
        String sql = "SELECT * FROM mascotas WHERE id = ?";
        try (Connection con = ConexionDB.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                mascota = new Mascota();
                mascota.setId(rs.getInt("id"));
                mascota.setId_usuario(rs.getInt("id_usuario"));
                mascota.setNombre(rs.getString("nombre"));
                mascota.setEspecie(rs.getString("especie"));
                mascota.setRaza(rs.getString("raza"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mascota;
    }
}
