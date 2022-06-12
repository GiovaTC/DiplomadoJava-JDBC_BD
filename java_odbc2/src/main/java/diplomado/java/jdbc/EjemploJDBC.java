package diplomado.java.jdbc;

import diplomado.java.jdbc.modelo.Categoria;
import diplomado.java.jdbc.modelo.Producto;
import diplomado.java.jdbc.repositorio.CategoriaRepositorioImpl;
import diplomado.java.jdbc.repositorio.ProductoRepositorioImpl;
import diplomado.java.jdbc.repositorio.Repositorio;
import diplomado.java.jdbc.servicio.CatalogoServicio;
import diplomado.java.jdbc.servicio.Servicio;
import diplomado.java.jdbc.util.ConexionBaseDatos;
import java.sql.*;
import java.util.Date;

import java.sql.*;

public class EjemploJDBC {
    public static void main(String[] args) throws SQLException {
        Servicio servicio = new CatalogoServicio();
        System.out.println("========= listar ========");
        servicio.listar().forEach(System.out::println);
        Categoria categoria = new Categoria();
        categoria.setNombre("Iluminación");

        Producto producto = new Producto();
        producto.setNombre("Lampara led escritorio");
        producto.setPrecio(990);
        producto.setFechaRegistro(new Date());
        producto.setSku("abcdefgh12");
        servicio.guardarProductoconCategoria(producto, categoria);
        System.out.println("Producto guardado con éxito: "+ producto.getId());
        servicio.listar().forEach(System.out::println);
    }
}
