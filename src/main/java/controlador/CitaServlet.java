package controlador;

import dao.DAOCita;
import dao.DAOMascota;
import modelo.Cita;
import modelo.Mascota;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/citas")
public class CitaServlet extends HttpServlet {

    private DAOCita daoCita = new DAOCita();
    private DAOMascota daoMascota = new DAOMascota();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession(false);
        if (sesion == null || sesion.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        int idUsuario = (int) sesion.getAttribute("idUsuario");
        List<Cita> citas = daoCita.obtenerPorIdUsuario(idUsuario);
        List<Mascota> mascotas = daoMascota.obtenerPorIdUsuario(idUsuario);
        request.setAttribute("citas", citas);
        request.setAttribute("mascotas", mascotas);
        request.getRequestDispatcher("citas.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession(false);
        if (sesion == null || sesion.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        int idMascota = Integer.parseInt(request.getParameter("idMascota"));
        String fechaStr = request.getParameter("fecha");
        String motivo = request.getParameter("motivo");

        try {
            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
            Date fecha = formato.parse(fechaStr);

            Cita cita = new Cita();
            cita.setIdMascota(idMascota);
            cita.setFechaCita(fecha);
            cita.setMotivo(motivo);

            daoCita.registrarCita(cita);
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("citas");
    }
}
