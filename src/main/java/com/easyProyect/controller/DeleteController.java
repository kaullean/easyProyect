package com.easyProyect.controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easyProyect.dao.ProductoDAO;

@WebServlet("/api/DeleteController")
public class DeleteController extends HttpServlet {


  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {

    String id = req.getParameter("id");

    try {
        long idx = Long.parseLong(id);
        ProductoDAO dao = new ProductoDAO();
        dao.deleteProducto(idx);
        resp.sendRedirect(req.getContextPath()+"/api/ListadoController?id=1");
        
    }catch (Exception e) {
        e.printStackTrace();
    }
    }

}
