package modelo;

import java.sql.Date;
import java.sql.Time;

public class Cita {
    private int id;
    private int id_mascota;
    private Date fecha;
    private Time hora;
    private String motivo;

    public Cita() {}

    public Cita(int id, int id_mascota, Date fecha, Time hora, String motivo) {
        this.id = id;
        this.id_mascota = id_mascota;
        this.fecha = fecha;
        this.hora = hora;
        this.motivo = motivo;
    }

    // getters y setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getId_mascota() { return id_mascota; }
    public void setId_mascota(int id_mascota) { this.id_mascota = id_mascota; }

    public Date getFecha() { return fecha; }
    public void setFecha(Date fecha) { this.fecha = fecha; }

    public Time getHora() { return hora; }
    public void setHora(Time hora) { this.hora = hora; }

    public String getMotivo() { return motivo; }
    public void setMotivo(String motivo) { this.motivo = motivo; }
}
