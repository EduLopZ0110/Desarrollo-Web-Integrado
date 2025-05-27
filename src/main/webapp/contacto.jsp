<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<main class="contacto">
    <h2>Contacto</h2>
    <p>Formulario atractivo para contacto.</p>
    <form action="ContactoServlet" method="post">
        <input type="text" name="nombre" placeholder="Tu nombre" required>
        <input type="email" name="correo" placeholder="Correo" required>
        <textarea name="mensaje" placeholder="Mensaje"></textarea>
        <button type="submit">Enviar</button>
    </form>
</main>

<%@ include file="footer.jsp" %>
