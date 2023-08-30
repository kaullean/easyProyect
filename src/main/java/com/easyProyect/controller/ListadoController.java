package com.easyProyect.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easyProyect.dao.ProductoDAO;
import com.easyProyect.pojo.Producto;


@WebServlet("/api/ListadoController")
public class ListadoController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        //crear la instancia de PersonajeDAO
        ProductoDAO dao = new ProductoDAO();
        
        //invocar al metodo listarProductos()
        List<Producto> listadoProductos = dao.listarProductos();
        
        //grabar el listado en el request para que lo vea la siguiente pagina
        req.setAttribute("listadoProductos", listadoProductos);
        
        //ir a la siguiente pagina
        if(id!=null && Integer.parseInt(id)==1){
            getServletContext().getRequestDispatcher("/listadoProductosModificar.jsp").forward(req, resp);
        }
        else{
            getServletContext().getRequestDispatcher("/listadoProductos.jsp").forward(req, resp);

        }
    }
}
