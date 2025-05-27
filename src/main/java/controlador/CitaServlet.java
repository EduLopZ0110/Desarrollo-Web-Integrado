package controlador;

import dao.DAOCita;
import dao.DAOMascota;
import modelo.Cita;
import modelo.Mascota;
import modelo.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.util.List;

@WebServlet("/citas")
public class CitaServlet extends HttpServlet {
    private DAOCita daoCita = new DAOCita();
    private DAOMascota daoMascota = new DAOMascota();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        List<Mascota> mascotas = daoMascota.listarPorUsuario(usuario.getId());
        List<Cita> citas = daoCita.listarPorUsuario(usuario.getId());

        request.setAttribute("mascotas", mascotas);
        request.setAttribute("citas", citas);
        request.getRequestDispatcher("citas.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        int id_mascota = Integer.parseInt(request.getParameter("id_mascota"));
        Date fecha = Date.valueOf(request.getParameter("fecha"));
        Time hora = Time.valueOf(request.getParameter("hora") + ":00");
        String motivo = request.getParameter("motivo");

        Cita cita = new Cita();
        cita.setId_mascota(id_mascota);
        cita.setFecha(fecha);
        cita.setHora(hora);
        cita.setMotivo(motivo);

        daoCita.agregarCita(cita);

        response.sendRedirect("citas");
    }
}
