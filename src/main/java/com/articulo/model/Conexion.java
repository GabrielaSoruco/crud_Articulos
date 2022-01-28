package com.articulo.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private Connection jdbcConnection;
    private final String jdbcUrl = "jdbc:mysql://localhost:3306/pruebaconexion?autoReconnect=true&useSSL=false&serverTimezone=UTC";
    private final String jdbcUser = "root";
    private final String jdbcPassword = "261997";

    public Conexion(){}

    public void conectar() throws SQLException {
        if(jdbcConnection == null || jdbcConnection.isClosed()){
            try{
                Class.forName("com.mysql.jdbc.Driver");
            } catch(ClassNotFoundException e){
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);
        }
    }

    public void desconectar() throws SQLException {
        if(jdbcConnection != null && !jdbcConnection.isClosed()){
            jdbcConnection.close();
        }
    }

    public Connection getJdbcConnection(){
        return jdbcConnection;
    }
}
