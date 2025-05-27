package controlador;

import dao.DAOMascota;
import modelo.Mascota;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/mascotas")
public class MascotaServlet extends HttpServlet {

    private DAOMascota daoMascota = new DAOMascota();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession(false);
        if (sesion == null || sesion.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        int idUsuario = (int) sesion.getAttribute("idUsuario");
        List<Mascota> mascotas = daoMascota.obtenerPorIdUsuario(idUsuario);
        request.setAttribute("mascotas", mascotas);
        request.getRequestDispatcher("mascotas.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession(false);
        if (sesion == null || sesion.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String nombre = request.getParameter("nombre");
        String tipo = request.getParameter("tipo");
        int idUsuario = (int) sesion.getAttribute("idUsuario");

        Mascota mascota = new Mascota();
        mascota.setNombreMascota(nombre);
        mascota.setTipoMascota(tipo);
        mascota.setIdUsuario(idUsuario);

        daoMascota.registrarMascota(mascota);

        response.sendRedirect("mascotas");
    }
}
