<%@page import="java.util.List"%>
<%@page import="com.easyProyect.pojo.Producto"%>
<!doctype html>
<html lang="en" data-bs-theme="danger">
	<head>
		<%@include file="head.jsp" %>	
		<title>ListadoProductos</title>
	</head>
	
	<body class="container">
		<!-- ACA VA EL NAVBAR  -->
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
		<main>
			<style>
            .cstm-height-card .card-img-top {
                height: 100px;
                object-fit: cover;
              }</style>
            <div class="container">
                <a class="btn btn-success mt-2" href="<%=request.getContextPath()%>/crearProducto.jsp" role="button">Crear Producto</a>

                <h2 class="text-center font-monospace fw-bolder my-2">LISTADO DE PRODUCTOS </h2>
                <% 
                    List<Producto> listadoProductos = (List<Producto>)request.getAttribute("listadoProductos");
				%>
                
                <div class="row mb-5">
                    <%
					   	for(Producto unProducto : listadoProductos) {
				    %>
                        <div class="col-md-4 pb-4">
                            <div class="card">
                                <img src="<%=unProducto.getImgUrl() %>" class="p-3 card-img-top" width="10%" height="80%"alt="...">
                                <div class="card-body">
                                    <h3 class="card-title text-center"><%=unProducto.getNombre() %></h3>
                                    <p class="card-text"><%=unProducto.getDescripcion() %></p>

                                    <ul class="list-group list-group-flush">
                                        <li class="px-0 list-group-item">Stock: <%=unProducto.getStock() %></li>
                                        <li class="px-0 list-group-item">Codigo de barras: <%=unProducto.getCodigoDeBarras() %></li>
                                        <li class="px-0 list-group-item">Id: <%=unProducto.getId() %></li>
                                    </ul>
                                    <div class="card-body">
                                        <a href="#" class="btn btn-warning text-dark">Ver codigo de barras</a>  
                                        <a class="btn btn-danger" href="<%=request.getContextPath()%>/api/DeleteController?id=<%=unProducto.getId()%>" role="button">Borrar</a>
                                        <a class="btn btn-primary" href="<%=request.getContextPath()%>/api/EditController?id=<%=unProducto.getId()%>" role="button">Editar</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    <%
                        }
                    %>
                </div>
               
            </div>
		</main>
	</body>	
</html>