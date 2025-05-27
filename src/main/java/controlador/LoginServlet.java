package controlador;

import dao.DAOUsuario;
import modelo.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private DAOUsuario daoUsuario = new DAOUsuario();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombreUsuario = request.getParameter("nombreUsuario");
        String contrasena = request.getParameter("contrasena");

        if (daoUsuario.validarCredenciales(nombreUsuario, contrasena)) {
            Usuario usuario = daoUsuario.obtenerPorNombreUsuario(nombreUsuario);
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);
            response.sendRedirect("perfil");
        } else {
            request.setAttribute("error", "Credenciales inválidas");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
