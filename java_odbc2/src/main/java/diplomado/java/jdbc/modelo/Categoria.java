package diplomado.java.jdbc.modelo;

import java.util.Date;

public class Categoria {
    private Long id;
    private String nombre;
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

}
