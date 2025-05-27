<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<!-- Estilos adicionales -->
<style>
  .login-container {
    max-width: 450px;
    margin: 50px auto;
    background: #fff;
    padding: 2rem;
    border-radius: 10px;
    box-shadow: 0px 0px 10px #ccc;
  }

  .login-title {
    color: orange;
    font-weight: bold;
    text-align: center;
    margin-bottom: 1rem;
  }

  .btn-google {
    background-color: #fff;
    color: #444;
    border: 1px solid #ccc;
  }

  .btn-google i {
    color: red;
    margin-right: 8px;
  }

  .form-control::placeholder {
    color: #999;
  }

  label {
    font-weight: bold;
    color: #000;
  }

  .btn-primary {
    background-color: orange;
    border-color: orange;
  }

  .btn-primary:hover {
    background-color: #e69500;
    border-color: #e69500;
  }

</style>

<div class="container">
  <h2 class="text-center login-title">Accede con tu cuenta</h2>

  <div class="login-container">
    <h4 class="text-center mb-4">Ingresa</h4>

    <!-- Botón de Google -->
    <div class="d-grid mb-3">
      <button class="btn btn-google">
        <i class="fab fa-google"></i> Ingresa con Google
      </button>
    </div>

    <p class="text-center text-muted">o utiliza tu correo electrónico</p>

    <!-- Formulario de login -->
    <form action="LoginServlet" method="post">
      <div class="mb-3">
        <label for="email">Correo electrónico</label>
        <input type="email" class="form-control" id="email" name="correo" placeholder="correo@ejemplo.com" required>
      </div>

      <div class="mb-4">
        <label for="password">Contraseña</label>
        <input type="password" class="form-control" id="password" name="clave" placeholder="********" required>
      </div>

      <div class="d-grid">
        <button type="submit" class="btn btn-primary">Acceder</button>
      </div>
    </form>
  </div>
</div>

<%@ include file="footer.jsp" %>
