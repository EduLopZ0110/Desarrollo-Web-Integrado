package controlador;

import dao.DAOMascota;
import modelo.Mascota;
import modelo.Usuario;

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
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        List<Mascota> lista = daoMascota.listarPorUsuario(usuario.getId());
        request.setAttribute("mascotas", lista);
        request.getRequestDispatcher("mascotas.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        Usuario usuario = (Usuario) session.getAttribute("usuario");

        String nombre = request.getParameter("nombre");
        String especie = request.getParameter("especie");
        String raza = request.getParameter("raza");

        Mascota mascota = new Mascota();
        mascota.setId_usuario(usuario.getId());
        mascota.setNombre(nombre);
        mascota.setEspecie(especie);
        mascota.setRaza(raza);

        daoMascota.agregarMascota(mascota);

        response.sendRedirect("mascotas");
    }
}
