package com.easyProyect.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easyProyect.dao.ProductoDAO;

@WebServlet("/api/CreateController")
public class CreateController extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nombre = req.getParameter("nombre");
		String descripcion = req.getParameter("descripcion");
		String stock = req.getParameter("stock");
		String codigoDeBarras = req.getParameter("codigoDeBarras");
		String imgUrl = req.getParameter("imgUrl");

		//Crear ProductoDAO
		ProductoDAO dao = new ProductoDAO();
		
		//invocar actualizarProducto(params)
		dao.crearProducto(nombre, descripcion, Integer.parseInt(stock), Long.parseLong(codigoDeBarras),imgUrl );

		//ir a la siguiente pagina
		resp.sendRedirect(req.getContextPath()+"/api/ListadoController?id=1");
	}
}
