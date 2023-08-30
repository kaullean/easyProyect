package com.easyProyect.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.easyProyect.connection.AdministradorDeConexiones;
import com.easyProyect.pojo.Producto;

public class ProductoDAO {

	public List<Producto> listarProductos() {
		//Connection
    Connection con = AdministradorDeConexiones.getConnection();
		List<Producto> list = new ArrayList<>();

		if(con != null) {
			String sql = "select * from productos";
			try{
			// Se crea un Statement, para realizar la consulta
			Statement s = con.createStatement();
			
			// Se realiza la consulta. Los resultados se guardan en el 
			// ResultSet rs
			ResultSet rs = s.executeQuery (sql);
			while(rs.next()) {
				// rs > sacando los datos
				long id = rs.getLong(1);//toma la primer columna
				String nombre = rs.getString(2);
				String descripcion = rs.getString(3);
				long codigoDeBarras = rs.getLong(4);
				int stock = rs.getInt(5);
				String imgUrl = rs.getString(6);

				//campos crear un objeto????
				Producto p = new Producto();
				p.setId(id);
				p.setNombre(nombre);
                p.setDescripcion(descripcion);
				p.setCodigoDeBarras(codigoDeBarras);
				p.setStock(stock);
				p.setImgUrl(imgUrl);
				
				//agrego a la lista 
				list.add(p);
			}
			//cierro la conexion
			con.close();
		 } catch(SQLException e){
			e.printStackTrace();
		 }
		 }
			return list;
	}
	
	public void deleteProducto(Long id)
    {
        Connection con = AdministradorDeConexiones.getConnection();
		System.out.println("Texto del mensaje");

        if(con != null) { 
            // delete de la db > SQL: DELETE WHERE ID
            String sql = "DELETE FROM PRODUCTOS WHERE ID = " + id;
            //control de errores
            try {
                Statement st = con.createStatement();
                st.execute(sql);
				
                //cierre de conexion
                con.close();

            }catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

	public Producto obtenerPorId(Long id) {
		String sql = "SELECT * FROM PRODUCTOS WHERE ID=" + id;
		
		//Connection
		Connection con = AdministradorDeConexiones.getConnection();
	
		Producto p = null;
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//VIENE UN SOLO REGISTRO!!!
			
			if(rs.next()) {//si existe, hay uno solo
				long idx = rs.getLong(1);//toma la primer columna
				String nombre = rs.getString(2);
				String descripcion = rs.getString(3);
				long codigoDeBarras = rs.getLong(4);
				int stock = rs.getInt(5);
				String imgUrl = rs.getString(6);
				
				p = new Producto();
				p.setId(idx);
				p.setNombre(nombre);
                p.setDescripcion(descripcion);
				p.setCodigoDeBarras(codigoDeBarras);
				p.setStock(stock);
				p.setImgUrl(imgUrl);
			
			}			
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		return p;
	}
	
	public void actualizarProducto(long id, String nombre, String descripcion, int stock, long codigoDeBarras, String imgUrl) throws NumberFormatException {
		Connection con = AdministradorDeConexiones.getConnection();
		if(con != null) { 	
			    String sql = "UPDATE PRODUCTOS set nombre='"+nombre+"', descripcion='"+descripcion+"', codigoDeBarras="+codigoDeBarras+", stock="+stock+", imgUrl='"+imgUrl+"' WHERE id = "+id ; 			
					
			try {
				Statement st = con.createStatement();			
				st.executeUpdate(sql);
				
				con.close();
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public void crearProducto( String nombre, String descripcion, int stock, long codigoDeBarras, String imgUrl) throws NumberFormatException{
		Connection con = AdministradorDeConexiones.getConnection();
		
		if(con != null) { 
			String sql = "INSERT INTO productos(nombre,descripcion,codigoDebarras,stock,imgUrl) ";
			sql += "VALUES('"+nombre+"','"+descripcion+"',"+codigoDeBarras+","+stock+",'"+imgUrl+"');" ; 			

			try {
				Statement st = con.createStatement();			
				st.execute(sql);
				
				//cierre de conexion
				con.close();
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	
	}
}