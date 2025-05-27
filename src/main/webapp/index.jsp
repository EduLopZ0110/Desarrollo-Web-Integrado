<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<main class="inicio">
    <!-- Sección de bienvenida -->
    <section class="hero">
        <div class="contenido-hero">
            <h2>¡El paraíso canino!</h2>
            <p>Tu lugar de confianza para el cuidado de tus mascotas.</p>
            <div class="video">
                <video controls poster="img/poster_video.jpg">
                    <source src="videos/paraiso.mp4" type="video/mp4">
                    Tu navegador no soporta videos.
                </video>
            </div>
        </div>
    </section>

    <!-- Sección rápida de registro -->
    <section class="quick-signup">
        <h3>¡Únete a la familia!</h3>
        <button class="btn-google">Regístrate con Google</button>
        <p>O utiliza tu correo electrónico</p>
        <form action="registro.jsp" method="post">
            <input type="text" name="nombre" placeholder="Nombre Completo" required>
            <input type="email" name="email" placeholder="Correo electrónico" required>
            <input type="password" name="password" placeholder="Contraseña" required minlength="8">
            <p><button type="submit" class="btn-registrar">Registrarte</button></p>
        </form>
    </section>

    <!-- Sección destacados -->
    <section class="destacados">
        <h3>¿Por qué elegirnos?</h3>
        <div class="grid-servicios">
            <div class="card">
                <img src="img/experiencia.jpg" alt="Experiencia">
                <h4>Experiencia</h4>
                <p>Expertos veterinarios al cuidado de tus mascotas</p>
            </div>
            <div class="card">
                <img src="img/tratamiento.jpg" alt="Tratamiento">
                <h4>Tratamiento personalizado</h4>
                <p>Cuidado individual para cada mascota</p>
            </div>
            <div class="card">
                <img src="img/equipo.jpg" alt="Equipo">
                <h4>Trabajo en equipo</h4>
                <p>Colaboración y pasión por los animales</p>
            </div>
            <div class="card">
                <img src="img/comunidad.jpg" alt="Comunidad">
                <h4>Comunidad</h4>
                <p>Únete a nuestra familia pet lover</p>
            </div>
        </div>
        <h4>¡Agenda tu consulta hoy mismo!</h4>
    </section>
</main>

<style>
/* Estilos adaptados para el diseño veterinario */
main.inicio {
    font-family: Arial, sans-serif;
    background-color: #f6fbf9; /* Verde pastel veterinario */
    color: #333;
    padding: 20px;
}

.hero {
    text-align: center;
    padding: 40px 20px;
    background: linear-gradient(to right, #a8e6cf, #dcedc1);
    border-radius: 10px;
    margin-bottom: 20px;
}

.hero h2 {
    font-size: 2em;
    color: #034d3d;
}

.hero p {
    font-size: 1.1em;
    margin-bottom: 20px;
}

.hero .video video {
    width: 100%;
    max-width: 600px;
    border-radius: 10px;
}

.quick-signup {
    background-color: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    text-align: center;
    margin: 20px 0;
}

.quick-signup h3 {
    color: #034d3d;
}

.quick-signup .btn-google {
    background-color: #4285f4;
    color: white;
    padding: 10px 20px;
    border: none;
    margin-bottom: 10px;
    border-radius: 5px;
    cursor: pointer;
}

.quick-signup input[type="text"],
.quick-signup input[type="email"],
.quick-signup input[type="password"] {
    width: 80%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.quick-signup .btn-registrar {
    background-color: #4caf50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.destacados {
    padding: 20px 0;
    text-align: center;
}

.destacados h3 {
    color: #034d3d;
    margin-bottom: 20px;
}

.grid-servicios {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 20px;
    padding: 0 20px;
}

.grid-servicios .card {
    background-color: #ffffff;
    padding: 15px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}

.grid-servicios .card img {
    width: 100%;
    border-radius: 10px;
}

.grid-servicios .card h4 {
    color: #034d3d;
    margin-top: 10px;
}

.grid-servicios .card p {
    font-size: 0.9em;
    color: #666;
}

.destacados h4 {
    margin-top: 30px;
    font-size: 1.2em;
    color: #034d3d;
}
</style>

<%@ include file="footer.jsp" %>
