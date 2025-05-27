package controlador;

import dao.DAOUsuario;
import modelo.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/registro")
public class RegistroServlet extends HttpServlet {
    private DAOUsuario daoUsuario = new DAOUsuario();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombreUsuario = request.getParameter("nombreUsuario");
        String contrasena = request.getParameter("contrasena");

        Usuario nuevoUsuario = new Usuario();
        nuevoUsuario.setNombreUsuario(nombreUsuario);
        nuevoUsuario.setContrasenaHash(contrasena);
        nuevoUsuario.setIdRol(2); // Cliente por defecto

        if (daoUsuario.registrarUsuario(nuevoUsuario)) {
            response.sendRedirect("login.jsp");
        } else {
            request.setAttribute("error", "No se pudo registrar");
            request.getRequestDispatcher("registro.jsp").forward(request, response);
        }
    }
}
