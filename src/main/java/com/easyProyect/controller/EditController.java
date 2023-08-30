package com.easyProyect.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easyProyect.dao.ProductoDAO;
import com.easyProyect.pojo.Producto;

@WebServlet("/api/EditController")
public class EditController extends HttpServlet {

	@Override
  protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws IOException, ServletException {

    String id = req.getParameter("id");//Crear PersonajeDAO
		ProductoDAO dao = new ProductoDAO();
		
		//invocar el metodo obtenerPorId(id)
        Producto p = dao.obtenerPorId(Long.parseLong(id));
		
		//guardar en el request el producto
		req.setAttribute("producto", p);
		
		//ir a la siguiente pagina
		getServletContext().getRequestDispatcher("/editarProducto.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    String idx = req.getParameter("id");
		String nombre = req.getParameter("nombre");
		String descripcion = req.getParameter("descripcion");
		String stock = req.getParameter("stock");
		String codigoDeBarras = req.getParameter("codigoDeBarras");
		String imgUrl = req.getParameter("imgUrl");

		//Crear ProductoDAO
		ProductoDAO dao = new ProductoDAO();
		
		//invocar actualizarProducto(params)
		dao.actualizarProducto(Long.parseLong(idx), nombre, descripcion, Integer.parseInt(stock), Long.parseLong(codigoDeBarras),imgUrl );

		//ir a la siguiente pagina
		resp.sendRedirect(req.getContextPath()+"/api/ListadoController?id=1");
	}
}
