<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<!-- Bootstrap CSS (si aún no lo tienes en header) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

<main class="container py-5">
    <!-- Título principal -->
    <h2 class="text-center text-primary mb-4">Ubícanos cerca de ti</h2>

    <div class="row">
        <!-- Columna izquierda: Información de contacto -->
        <div class="col-md-6">
            <p class="lead text-muted">Estamos aquí para cuidar a tu mascota. Ven a visitarnos o contáctanos para más información.</p>

            <div class="d-flex align-items-start mb-3">
                <i class="fas fa-map-marker-alt fa-lg me-2 text-danger"></i>
                <div>
                    <strong>Dirección</strong><br>
                    Av. Las Palmeras 123, Lima, Perú
                </div>
            </div>

            <div class="d-flex align-items-start mb-3">
                <i class="fas fa-phone fa-lg me-2 text-success"></i>
                <div>
                    <strong>Teléfono</strong><br>
                    +51 987 654 321
                </div>
            </div>

            <div class="d-flex align-items-start mb-3">
                <i class="fas fa-envelope fa-lg me-2 text-warning"></i>
                <div>
                    <strong>Correo electrónico</strong><br>
                    contacto@veterinariafeliz.com
                </div>
            </div>

            <div class="d-flex align-items-start mb-3">
                <i class="fas fa-clock fa-lg me-2 text-primary"></i>
                <div>
                    <strong>Horario de atención</strong><br>
                    Lunes a Viernes: 10:00 a.m. - 8:00 p.m.<br>
                    Sábados: 10:00 a.m. - 6:00 p.m.
                </div>
            </div>

            <h5 class="mt-4">Síguenos en:</h5>
            <div>
                <a href="#" class="me-3 text-decoration-none text-primary"><i class="fab fa-facebook fa-2x"></i></a>
                <a href="#" class="me-3 text-decoration-none text-danger"><i class="fab fa-youtube fa-2x"></i></a>
                <a href="#" class="me-3 text-decoration-none text-success"><i class="fab fa-whatsapp fa-2x"></i></a>
                <a href="#" class="text-decoration-none text-pink"><i class="fab fa-instagram fa-2x"></i></a>
            </div>
        </div>

        <!-- Columna derecha: Google Maps -->
        <div class="col-md-6">
            <div class="ratio ratio-4x3 rounded-3 shadow-sm">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.708551066241!2d-77.03820498464957!3d-12.099437045203537!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c8e90bdb6e4b%3A0x9d9f6f0e9980a69!2sAv.%20Las%20Palmeras%2C%20Lima!5e0!3m2!1ses-419!2spe!4v1684942369598!5m2!1ses-419!2spe" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>

       <!-- Sección: ¿Por qué visitarnos con tu mascota? -->
<h3 class="text-center text-success my-5">¿Por qué visitarnos con tu mascota?</h3>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5 d-flex flex-column align-items-center mb-4">
            <div class="d-flex flex-column align-items-center text-center">
                <i class="fas fa-thumbs-up fa-2x text-primary mb-2"></i>
                <h5>Experiencia</h5>
                <p class="text-muted">Años de experiencia en el cuidado de la salud animal.</p>
            </div>

            <div class="d-flex flex-column align-items-center text-center mt-4">
                <i class="fas fa-users fa-2x text-warning mb-2"></i>
                <h5>Trabajo en equipo</h5>
                <p class="text-muted">Profesionales comprometidos y apasionados por los animales.</p>
            </div>
        </div>

        <div class="col-md-5 d-flex flex-column align-items-center mb-4">
            <div class="d-flex flex-column align-items-center text-center">
                <i class="fas fa-paw fa-2x text-success mb-2"></i>
                <h5>Tratamiento personalizado</h5>
                <p class="text-muted">Atención única y adaptada a cada mascota.</p>
            </div>

            <div class="d-flex flex-column align-items-center text-center mt-4">
                <i class="fas fa-hand-holding-heart fa-2x text-danger mb-2"></i>
                <h5>Comunidad</h5>
                <p class="text-muted">Construimos lazos de confianza y apoyo mutuo.</p>
            </div>
        </div>
    </div>
</div

    <!-- Mensaje final -->
    <h2 class="text-center text-primary my-5">¡Realiza tu consulta sin compromiso!</h2>
</main>

<!-- Bootstrap JS y FontAwesome -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>

<%@ include file="footer.jsp" %>
