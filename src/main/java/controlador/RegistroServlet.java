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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("registro.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");

        Usuario usuario = new Usuario();
        usuario.setNombre(nombre);
        usuario.setCorreo(correo);
        usuario.setContrasena(contrasena);

        boolean registrado = daoUsuario.registrar(usuario);
        if (registrado) {
            // Login automático después de registrar
            Usuario u = daoUsuario.validar(correo, contrasena);
            HttpSession session = request.getSession();
            session.setAttribute("usuario", u);
            response.sendRedirect("perfil.jsp");
        } else {
            request.setAttribute("error", "Error al registrar usuario. El correo puede estar duplicado.");
            request.getRequestDispatcher("registro.jsp").forward(request, response);
        }
    }
}
