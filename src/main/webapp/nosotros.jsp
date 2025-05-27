<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<!-- Bootstrap CSS (si aún no lo tienes en header) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

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
                    <img src="img/Foto1.jpeg" class="cuadro-mascota shadow" alt="Mascota 1">
                </div>
                <div class="col-6">
                    <img src="img/Foto2.jpeg" class="cuadro-mascota shadow" alt="Mascota 2">
                </div>
                <div class="col-6">
                    <img src="img/Foto3.jpeg" class="cuadro-mascota shadow" alt="Mascota 3">
                </div>
                <div class="col-6">
                    <img src="img/Foto4.jpeg" class="cuadro-mascota shadow" alt="Mascota 4">
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
            <img src="img/Doctor1.jpg" class="img-doctor shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 1">
            <div>
                <h5>Dr. Juan Pérez</h5>
                <p>Especialista en cirugía y emergencias veterinarias.</p>
            </div>
        </div>
        <!-- Doctor 2 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/Doctor2.jpg" class="img-doctor shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 2">
            <div>
                <h5>Dr. María López</h5>
                <p>Especialista en dermatología y diagnóstico clínico.</p>
            </div>
        </div>
        <!-- Doctor 3 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/Doctor3.jpg" class="img-doctor shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 3">
            <div>
                <h5>Dr. Carlos Rivera</h5>
                <p>Especialista en odontología y nutrición animal.</p>
            </div>
        </div>
        <!-- Doctor 4 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/Doctor4.jpg" class="img-doctor shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 4">
            <div>
                <h5>Dr. Laura Sánchez</h5>
                <p>Especialista en medicina interna y rehabilitación.</p>
            </div>
        </div>
        <!-- Doctor 5 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/Doctor5.jpg" class="img-doctor shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 5">
            <div>
                <h5>Dr. José Ramírez</h5>
                <p>Especialista en cardiología y cuidados intensivos.</p>
            </div>
        </div>
        <!-- Doctor 6 -->
        <div class="col-md-6 d-flex align-items-center">
            <img src="img/Doctor6.jpg" class="img-doctor shadow me-3" style="width: 100px; height: 100px;" alt="Dr. 6">
            <div>
                <h5>Dr. Ana Torres</h5>
                <p>Especialista en oftalmología y reproducción animal.</p>
            </div>
        </div>
    </div>
</main>

<!-- Bootstrap JS y FontAwesome -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>

 <style>
    .cuadro-mascota {
        width: 100%;
        height: 250px;
        object-fit: cover;
        border-radius: 10px;
    }

  .img-doctor {
    width: 100px;
    height: 100px;
    object-fit: cover;
    border-radius: 50%;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
  }
</style>

<!-- Vincular Bootstrap JS (opcional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<%@ include file="footer.jsp" %>
