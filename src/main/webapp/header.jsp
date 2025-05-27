<%@ page session="true" %>
<head>
    <meta charset="UTF-8">
    <title>Amigos de Cuatro Patas</title>
    <link rel="stylesheet" href="css/estilos.css">
    
    <!-- Librerías de iconos -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <!-- Si usas Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #FFA500;">
  <div class="container">
    <!-- Logo con ícono de perro -->
    <a class="navbar-brand d-flex align-items-center text-black" href="index.jsp">
      <i class="fas fa-dog fa-2x me-2"></i>
      <span>Amigos de Cuatro Patas</span>
    </a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link text-black" href="index.jsp">Inicio</a></li>
        <li class="nav-item"><a class="nav-link text-black" href="servicios.jsp">Servicios</a></li>
        <li class="nav-item"><a class="nav-link text-black" href="nosotros.jsp">Nosotros</a></li>
        <li class="nav-item"><a class="nav-link text-black" href="citas.jsp">Citas</a></li>
        <li class="nav-item"><a class="nav-link text-black" href="ubicanos.jsp">Ubícanos</a></li>
        <li class="nav-item"><a class="nav-link text-black" href="contacto.jsp">Contacto</a></li>

        <%
          String usuario = (String) session.getAttribute("usuario");
          if (usuario == null) {
        %>
          <li class="nav-item"><a class="btn btn-dark btn-sm ms-2" href="login.jsp">Iniciar Sesión</a></li>
        <%
          } else {
        %>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-black" href="#" role="button" data-bs-toggle="dropdown">
              <i class="fas fa-user-circle"></i> <%= usuario %>
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="perfil.jsp">Mi Perfil</a></li>
              <li><a class="dropdown-item" href="cerrarSesion.jsp">Cerrar Sesión</a></li>
            </ul>
          </li>
        <%
          }
        %>
      </ul>
    </div>
  </div>
</nav>
