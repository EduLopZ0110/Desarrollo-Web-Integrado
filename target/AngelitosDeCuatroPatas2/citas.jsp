<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>

<!-- Bootstrap CSS (si aún no lo tienes en el header) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<main class="container py-5">
    <!-- Título Principal -->
    <h2 class="text-center text-primary mb-4">Agendar Cita</h2>

    <form>
        <div class="row">
            <!-- Columna Izquierda: Datos de la Mascota -->
            <div class="col-md-8">
                <h4 class="mb-3">Datos de la Mascota</h4>
                
                <!-- Nombre -->
                <div class="mb-3">
                    <label for="nombreMascota" class="form-label">Nombre de la Mascota</label>
                    <input type="text" class="form-control" id="nombreMascota" placeholder="Ingrese el nombre">
                </div>

                <!-- Servicio -->
                <div class="mb-3">
                    <label for="servicio" class="form-label">Servicio</label>
                    <select class="form-select" id="servicio">
                        <option selected disabled>Seleccione un servicio</option>
                        <option>Diagnóstico</option>
                        <option>Consulta veterinaria</option>
                        <option>Programas de salud</option>
                        <option>Comportamiento</option>
                        <option>Vacunas</option>
                    </select>
                </div>

                <!-- Seleccione una Fecha -->
                <h5 class="mt-4">Seleccione una Fecha</h5>
                <div class="mb-3">
                    <input type="date" class="form-control" id="fechaCita">
                </div>
            </div>

            <!-- Columna Derecha: Raza y Edad -->
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="raza" class="form-label">Raza</label>
                    <select class="form-select" id="raza">
                        <option selected disabled>Seleccione una raza</option>
                        <option>Labrador Retriever</option>
                        <option>Pastor Alemán</option>
                        <option>Bulldog Francés</option>
                        <option>Beagle</option>
                        <option>Poodle</option>
                        <option>Chihuahua</option>
                        <option>Otras</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="edad" class="form-label">Edad</label>
                    <select class="form-select" id="edad">
                        <option selected disabled>Seleccione la edad</option>
                        <option>Cachorro (0-1 año)</option>
                        <option>Joven (1-3 años)</option>
                        <option>Adulto (3-7 años)</option>
                        <option>Senior (7+ años)</option>
                    </select>
                </div>
            </div>
        </div>

        <!-- Botones -->
        <div class="text-center mt-4">
            <button type="submit" class="btn btn-success me-2">Guardar</button>
            <button type="button" class="btn btn-secondary me-2">Añadir Otra Mascota</button>
            <button type="button" class="btn btn-primary">Registrar</button>
        </div>
    </form>
</main>

<!-- Bootstrap JS (opcional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<%@ include file="footer.jsp" %>
