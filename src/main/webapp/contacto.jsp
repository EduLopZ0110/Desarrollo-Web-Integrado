<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<!-- Bootstrap CSS (si aún no lo tienes en header) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

<main class="container py-5">
    <h2 class="text-center text-primary mb-4">Contáctate con nosotros</h2>

    <div class="row">
        <!-- Columna Izquierda: Información de Contacto -->
        <div class="col-md-6">
            <p class="lead text-muted">Estamos aquí para ayudarte con lo que necesites. No dudes en ponerte en contacto con nosotros.</p>

            <!-- Dirección -->
            <div class="d-flex align-items-start mb-3">
                <i class="fas fa-map-marker-alt fa-lg me-2 text-danger"></i>
                <div>
                    <strong>Dirección</strong><br>
                    Av. Las Palmeras 123, Lima, Perú
                </div>
            </div>

            <!-- Teléfono -->
            <div class="d-flex align-items-start mb-3">
                <i class="fas fa-phone fa-lg me-2 text-success"></i>
                <div>
                    <strong>Teléfono</strong><br>
                    +51 987 654 321
                </div>
            </div>

            <!-- Correo -->
            <div class="d-flex align-items-start mb-3">
                <i class="fas fa-envelope fa-lg me-2 text-warning"></i>
                <div>
                    <strong>Correo electrónico</strong><br>
                    contacto@veterinariafeliz.com
                </div>
            </div>

            <!-- Horario -->
            <div class="d-flex align-items-start mb-3">
                <i class="fas fa-clock fa-lg me-2 text-primary"></i>
                <div>
                    <strong>Horario de atención</strong><br>
                    Lunes a Viernes: 10:00 a.m. - 8:00 p.m.<br>
                    Sábados: 10:00 a.m. - 6:00 p.m.
                </div>
            </div>

            <!-- Redes Sociales -->
            <h5 class="mt-4">Síguenos en:</h5>
            <div>
                <a href="#" class="me-3 text-decoration-none text-primary"><i class="fab fa-facebook fa-2x"></i></a>
                <a href="#" class="me-3 text-decoration-none text-danger"><i class="fab fa-youtube fa-2x"></i></a>
                <a href="#" class="me-3 text-decoration-none text-success"><i class="fab fa-whatsapp fa-2x"></i></a>
                <a href="#" class="text-decoration-none text-pink"><i class="fab fa-instagram fa-2x"></i></a>
            </div>
        </div>

        <!-- Columna Derecha: Formulario de Contacto -->
        <div class="col-md-6">
            <div class="card shadow-sm p-4">
                <h4 class="text-center text-success mb-4">Formulario de contacto</h4>
                <form>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="nombres" class="form-label">Nombres</label>
                            <input type="text" class="form-control" id="nombres" placeholder="Ingrese sus nombres">
                        </div>
                        <div class="col">
                            <label for="apellidos" class="form-label">Apellidos</label>
                            <input type="text" class="form-control" id="apellidos" placeholder="Ingrese sus apellidos">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <label for="correo" class="form-label">Correo electrónico</label>
                            <input type="email" class="form-control" id="correo" placeholder="Ingrese su correo">
                        </div>
                        <div class="col">
                            <label for="telefono" class="form-label">Teléfono</label>
                            <input type="tel" class="form-control" id="telefono" placeholder="Ingrese su teléfono">
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="asunto" class="form-label">Seleccione Asunto</label>
                        <select class="form-select" id="asunto">
                            <option selected disabled>Seleccione un asunto</option>
                            <option>Parvovirus</option>
                            <option>Moquillo</option>
                            <option>Rabia</option>
                            <option>Sarna</option>
                            <option>Plaga de pulgas y/o garrapatas</option>
                            <option>Epilepsia</option>
                            <option>Otro (especifique)</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="mensaje" class="form-label">Mensaje</label>
                        <textarea class="form-control" id="mensaje" rows="4" placeholder="Describa su consulta"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Enviar Formulario</button>
                </form>
            </div>
        </div>
    </div>
</main>

<!-- Bootstrap JS y FontAwesome (si aún no lo tienes) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>

<%@ include file="footer.jsp" %>
