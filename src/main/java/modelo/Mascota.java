package modelo;

public class Mascota {
    private int id;
    private int id_usuario;
    private String nombre;
    private String especie;
    private String raza;

    public Mascota() {}

    public Mascota(int id, int id_usuario, String nombre, String especie, String raza) {
        this.id = id;
        this.id_usuario = id_usuario;
        this.nombre = nombre;
        this.especie = especie;
        this.raza = raza;
    }

    // getters y setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getId_usuario() { return id_usuario; }
    public void setId_usuario(int id_usuario) { this.id_usuario = id_usuario; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getEspecie() { return especie; }
    public void setEspecie(String especie) { this.especie = especie; }

    public String getRaza() { return raza; }
    public void setRaza(String raza) { this.raza = raza; }
}
