<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<main class="login">
    <h2>Iniciar Sesión</h2>
    <form action="LoginServlet" method="post">
        <input type="text" name="usuario" placeholder="Usuario">
        <input type="password" name="clave" placeholder="Contraseña">
        <button type="submit">Entrar</button>
    </form>
</main>

<%@ include file="footer.jsp" %>
