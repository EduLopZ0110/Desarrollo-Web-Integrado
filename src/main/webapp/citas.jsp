<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<main class="citas">
    <h2>Consulta tus Citas</h2>
    <form action="ConsultaCitasServlet" method="post">
        <input type="email" name="correo" placeholder="Correo" required>
        <button type="submit">Consultar</button>
    </form>
</main>

<%@ include file="footer.jsp" %>
