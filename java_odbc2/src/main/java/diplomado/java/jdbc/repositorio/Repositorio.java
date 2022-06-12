package diplomado.java.jdbc.repositorio;
import diplomado.java.jdbc.modelo.Producto;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface Repositorio<T> {

    void setConn(Connection conn);
    List<T> listar() throws SQLException;
    T porId(Long id) throws SQLException;
    T guardar(T t) throws SQLException;
    void eliminar(Long id) throws SQLException;
}
