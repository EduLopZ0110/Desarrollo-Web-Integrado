package controlador;

import dao.DAOUsuario;
import modelo.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/perfil")
public class PerfilServlet extends HttpServlet {
    private DAOUsuario daoUsuario = new DAOUsuario();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        request.getRequestDispatcher("perfil.jsp").forward(request, response);
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
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");

        usuario.setNombre(nombre);
        usuario.setCorreo(correo);
        usuario.setContrasena(contrasena);

        boolean actualizado = daoUsuario.actualizar(usuario);
        if (actualizado) {
            session.setAttribute("usuario", usuario);
            request.setAttribute("msg", "Perfil actualizado correctamente");
        } else {
            request.setAttribute("error", "Error al actualizar perfil");
        }
        request.getRequestDispatcher("perfil.jsp").forward(request, response);
    }
}
