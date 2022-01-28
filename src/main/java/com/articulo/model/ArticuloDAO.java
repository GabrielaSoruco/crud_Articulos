package com.articulo.model;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

//Esta clase contiene todos los métodos CRUD para la tabla artículos
public class ArticuloDAO {
    private Conexion conexion;
    private Connection connection;

    public ArticuloDAO(){
        conexion = new Conexion();
    }

    public boolean insertarArticulo(Articulo articulo) throws SQLException{

        String sql = "insert into articulos (id, codigo, nombre, descripcion, stock, precio) values (?, ?, ?, ?, ?, ?)";
        conexion.conectar();
        connection = conexion.getJdbcConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, null);
        ps.setString(2, articulo.getCodigo());
        ps.setString(3, articulo.getNombre());
        ps.setString(4, articulo.getDescripcion());
        ps.setInt(5, articulo.getStock());
        ps.setDouble(6, articulo.getPrecio());
        boolean rowInserted = ps.executeUpdate() > 0; //The executeUpdate() method returns the number of rows affected by the SQL statement (an INSERT typically affects one row, but an UPDATE or DELETE statement can affect more).
        ps.close();
        connection.close();
        return rowInserted;
    }

    public List<Articulo> listarArticulos() throws SQLException{

        List<Articulo> listaArticulos = new ArrayList<Articulo>();
        String sql = "select * from articulos";
        conexion.conectar();
        connection = conexion.getJdbcConnection();
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(sql);
        while(rs.next()){
            int id = rs.getInt("id");
            String codigo = rs.getString("codigo");
            String nombre = rs.getString("nombre");
            String descripcion = rs.getString("descripcion");
            int stock = rs.getInt("stock");
            double precio = rs.getDouble("precio");

            Articulo art = new Articulo(id, codigo, nombre, descripcion, stock, precio);
            listaArticulos.add(art);
        }
        conexion.desconectar();
        return listaArticulos;
    }

    public Articulo obtenerPorID(int id) throws SQLException{

        Articulo articulo = null;
        String sql = "select * from articulos where id = ?";
        conexion.conectar();
        connection = conexion.getJdbcConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            articulo = new Articulo(rs.getInt("id"), rs.getString("codigo"), rs.getString("nombre"), rs.getString("descripcion"), rs.getInt("stock"), rs.getDouble("precio"));
        }
        return articulo;
    }

    public boolean actualizarArticulo(Articulo articulo) throws SQLException{
        boolean rowsUpdated = false;
        String sql = "update articulos set codigo=?, nombre=?, descripcion=?, stock=?, precio=? where id=?";
        conexion.conectar();
        connection = conexion.getJdbcConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, articulo.getCodigo());
        ps.setString(2, articulo.getNombre());
        ps.setString(3, articulo.getDescripcion());
        ps.setInt(4, articulo.getStock());
        ps.setDouble(5, articulo.getPrecio());
        ps.setInt(6, articulo.getId());

        rowsUpdated = ps.executeUpdate() > 0;
        ps.close();
        conexion.desconectar();
        return rowsUpdated;
    }

    public boolean eliminarArticulo(Articulo articulo) throws SQLException{
        boolean rowsDeleted = false;
        String sql = "delete from articulos where id=?";
        conexion.conectar();
        connection = conexion.getJdbcConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, articulo.getId());

        rowsDeleted = ps.executeUpdate() > 0;
        return rowsDeleted;
    }

}
