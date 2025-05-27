<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<main class="registro">
    <h2>Registro</h2>
    <form action="RegistroServlet" method="post">
        <input type="text" name="nombre" placeholder="Nombre">
        <input type="email" name="correo" placeholder="Correo">
        <input type="password" name="clave" placeholder="Contraseña">
        <button type="submit">Registrar</button>
    </form>
</main>

<%@ include file="footer.jsp" %>
