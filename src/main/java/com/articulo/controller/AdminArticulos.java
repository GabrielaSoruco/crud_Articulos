package com.articulo.controller;

import com.articulo.model.Articulo;
import com.articulo.model.ArticuloDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AdminArticulos", value = "/AdminArticulos")
public class AdminArticulos extends HttpServlet {
    ArticuloDAO articuloDAO;

    public void init(){
        articuloDAO = new ArticuloDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        try{
            switch (action){
                case "index":{
                    index(request, response);
                    break;
                }
                case "nuevo":{
                    nuevo(request, response);
                    break;
                }
                case "registrar":{
                    registrar(request, response);
                    break;
                }
                case "mostrar":{
                    mostrar(request, response);
                    break;
                }
                case "showEditar":{
                    showEditar(request, response);
                    break;
                }
                case "editar":{
                    editar(request, response);
                    break;
                }
                case "eliminar":{
                    eliminar(request, response);
                    break;
                }
                default:
                    break;
            }
        } catch (SQLException e){
            System.out.println("Error " +e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private void index(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
        Articulo articulo = new Articulo(0, request.getParameter("codigo"), request.getParameter("nombre"), request.getParameter("descripcion"), Integer.parseInt(request.getParameter("stock")), Double.parseDouble(request.getParameter("precio")));
        articuloDAO.insertarArticulo(articulo);

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    private void nuevo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("registrar.jsp");
        dispatcher.forward(request, response);
    }

    private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException , ServletException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("mostrarArticulos.jsp");
        List<Articulo> listaArticulos= articuloDAO.listarArticulos();
        request.setAttribute("listaArticulos", listaArticulos);
        dispatcher.forward(request, response);
    }

    private void showEditar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
        Articulo articulo = articuloDAO.obtenerPorID(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("articulo", articulo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("editar.jsp");
        dispatcher.forward(request, response);
    }

    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
        Articulo articulo = new Articulo(Integer.parseInt(request.getParameter("id")), request.getParameter("codigo"), request.getParameter("nombre"), request.getParameter("descripcion"), Integer.parseInt(request.getParameter("stock")), Double.parseDouble(request.getParameter("precio")));
        articuloDAO.actualizarArticulo(articulo);
        index(request, response);
    }

    private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        Articulo articulo = articuloDAO.obtenerPorID(Integer.parseInt(request.getParameter("id")));
        articuloDAO.eliminarArticulo(articulo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

}
