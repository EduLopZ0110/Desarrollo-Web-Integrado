<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<!-- Vincular Bootstrap CSS desde CDN (si aún no está en tu header) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<main class="container py-5">
    <!-- Título Principal -->
    <h2 class="text-center text-primary mb-4">Acerca de Nosotros</h2>

    <!-- Título Secundario: Equipo Administrativo -->
    <div class="my-5">
        <h3 class="text-center bg-success text-white py-2 rounded">Equipo Administrativo</h3>
    </div>

    <!-- Sección: Amigos de Cuatro Patas + Imágenes -->
    <div class="row align-items-center mb-5">
        <div class="col-md-6">
            <h4 class="text-success">Amigos de Cuatro Patas - Especialidades</h4>
            <p>
                Nuestra veterinaria se especializa en el cuidado integral de tus mascotas: consultas generales, cirugías, estética, hospitalización y mucho más. 
                Contamos con especialistas que aman a los animales y brindan la mejor atención.
            </p>
        </div>
        <div class="col-md-6">
            <div class="row g-2">
                <div class="col-6">
                    <img src="img/mascota1.jpg" class="img-fluid rounded shadow" alt="Mascota 1">
                </div>
                <div class="col-6">
                    <img src="img/mascota2.jpg" class="img-fluid rounded shadow" alt="Mascota 2">
                </div>
                <div class="col-6">
                    <img src="img/mascota3.jpg" class="img-fluid rounded shadow" alt="Mascota 3">
                </div>
                <div class="col-6">
                    <img src="img/mascota4.jpg" class="img-fluid rounded shadow" alt="Mascota 4">
                </div>
            </div>
        </div>
    </div>

    <!-- Título: Equipo Médico -->
    <div class="my-5">
        <h3 class="text-center bg-primary text-white py-2 rounded">Equipo Médico</h3>
    </div>

    <!-- Sección: Doctores -->
    <div class="row g-4">
        <!-- Doctor 1 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/doctor1.jpg" class="img-fluid rounded shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 1">
            <div>
                <h5>Dr. Juan Pérez</h5>
                <p>Especialista en cirugía y emergencias veterinarias.</p>
            </div>
        </div>
        <!-- Doctor 2 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/doctor2.jpg" class="img-fluid rounded shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 2">
            <div>
                <h5>Dr. María López</h5>
                <p>Especialista en dermatología y diagnóstico clínico.</p>
            </div>
        </div>
        <!-- Doctor 3 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/doctor3.jpg" class="img-fluid rounded shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 3">
            <div>
                <h5>Dr. Carlos Rivera</h5>
                <p>Especialista en odontología y nutrición animal.</p>
            </div>
        </div>
        <!-- Doctor 4 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/doctor4.jpg" class="img-fluid rounded shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 4">
            <div>
                <h5>Dr. Laura Sánchez</h5>
                <p>Especialista en medicina interna y rehabilitación.</p>
            </div>
        </div>
        <!-- Doctor 5 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/doctor5.jpg" class="img-fluid rounded shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 5">
            <div>
                <h5>Dr. José Ramírez</h5>
                <p>Especialista en cardiología y cuidados intensivos.</p>
            </div>
        </div>
        <!-- Doctor 6 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/doctor6.jpg" class="img-fluid rounded shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 6">
            <div>
                <h5>Dr. Ana Torres</h5>
                <p>Especialista en oftalmología y reproducción animal.</p>
            </div>
        </div>
    </div>
</main>

<!-- Vincular Bootstrap JS (opcional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<%@ include file="footer.jsp" %>
