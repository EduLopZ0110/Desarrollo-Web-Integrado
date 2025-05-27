<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<!-- Vincular Bootstrap CSS desde CDN (si aún no está vinculado en tu header) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<main class="container py-5">
    <h2 class="text-center text-success mb-4">Nuestros Servicios</h2>
    <p class="text-center mb-5">
        En nuestra veterinaria, ofrecemos una amplia gama de servicios para mantener a tus mascotas saludables y felices.
    </p>

    <div class="row g-4">
        <!-- Servicio 1 -->
        <div class="col-md-6 col-lg-4">
            <div class="card h-100 shadow-sm">
                <img src="img/Consulta.jpg" class="card-img-top" alt="Consulta General">
                <div class="card-body">
                    <h5 class="card-title text-success">Consulta General</h5>
                    <p class="card-text">
                        Exámenes médicos completos para detectar cualquier problema de salud y ofrecer tratamiento oportuno.
                    </p>
                </div>
            </div>
        </div>

        <!-- Servicio 2 -->
        <div class="col-md-6 col-lg-4">
            <div class="card h-100 shadow-sm">
                <img src="img/Vacunacion.jpg" class="card-img-top" alt="Vacunación">
                <div class="card-body">
                    <h5 class="card-title text-success">Vacunación</h5>
                    <p class="card-text">
                        Vacunas esenciales para proteger a tus mascotas contra enfermedades peligrosas.
                    </p>
                </div>
            </div>
        </div>

        <!-- Servicio 3 -->
        <div class="col-md-6 col-lg-4">
            <div class="card h-100 shadow-sm">
                <img src="img/Cirugia.jpg" class="card-img-top" alt="Cirugía">
                <div class="card-body">
                    <h5 class="card-title text-success">Cirugías</h5>
                    <p class="card-text">
                        Procedimientos quirúrgicos seguros y profesionales para casos que lo requieran.
                    </p>
                </div>
            </div>
        </div>

        <!-- Servicio 4 -->
        <div class="col-md-6 col-lg-4">
            <div class="card h-100 shadow-sm">
                <img src="img/Baño.jpg" class="card-img-top" alt="Estética y Baños">
                <div class="card-body">
                    <h5 class="card-title text-success">Estética y Baños</h5>
                    <p class="card-text">
                        Servicios de peluquería, baños medicados y tratamientos de belleza para que luzcan increíbles.
                    </p>
                </div>
            </div>
        </div>

        <!-- Servicio 5 -->
        <div class="col-md-6 col-lg-4">
            <div class="card h-100 shadow-sm">
                <img src="img/Hospitalizacion.jpg" class="card-img-top" alt="Hospitalización">
                <div class="card-body">
                    <h5 class="card-title text-success">Hospitalización</h5>
                    <p class="card-text">
                        Atención médica especializada y cuidados constantes para animales que requieren observación.
                    </p>
                </div>
            </div>
        </div>

        <!-- Servicio 6 -->
        <div class="col-md-6 col-lg-4">
            <div class="card h-100 shadow-sm">
                <img src="img/Laboratorio.jpg" class="card-img-top" alt="Laboratorio">
                <div class="card-body">
                    <h5 class="card-title text-success">Laboratorio</h5>
                    <p class="card-text">
                        Análisis clínicos precisos para un diagnóstico efectivo y rápido.
                    </p>
                </div>
            </div>
        </div>
    </div>
</main>

<style>
    .card-img-top {
        height: 200px;
        object-fit: cover;
    }
</style>


<!-- Vincular Bootstrap JS (opcional, si vas a usar interactividad) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<%@ include file="footer.jsp" %>
