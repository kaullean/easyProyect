<%@page import="com.easyProyect.pojo.Producto"%>
<!doctype html>
<html lang="en">
	<head>
		<%@include file="head.jsp" %>
    <title>Editar Producto</title>
	</head>
	
	<body>
		<main>
			<div class="container">
				<section>
					<% 
                         Producto producto = (Producto)request.getAttribute("producto");
				  	%>
					<h1>Editar Producto ID=<%=producto.getId()%></h1>
					<!--  JSP -->
					<form method="POST"
						action="<%=request.getContextPath()%>/api/EditController">
						<div hidden>
							<input name="id" value="<%=producto.getId()%>" type="text">
						</div>
						<div class="mb-3">
						  <label for="nombre" class="form-label">Nombre</label>
						  <input name="nombre"
						  	value="<%=producto.getNombre()%>"  
						  	type="text" class="form-control" id="nombre" placeholder="Nombre" maxlength="50">
						</div>
                        <div class="mb-3">
						  <label for="descripcion" class="form-label">Descripcion</label>
						  <input name="descripcion"
						  	value="<%=producto.getDescripcion()%>"
						  	type="text" class="form-control" id="descripcion" placeholder="Descripcion" maxlength="200">
						</div>
                        <div class="mb-3">
                            <label for="stock" class="form-label">Stock</label>
                            <input name="stock"
                                value="<%=producto.getStock()%>" 
                                type="number" class="form-control" id="stock">
                        </div>
						<div class="mb-3">
						  <label for="codigoDeBarras" class="form-label">Codigo de barras</label>
						  <input name="codigoDeBarras"
						  	value="<%=producto.getCodigoDeBarras()%>" 
						  	type="number" class="form-control" id="codigoDeBarras">
						</div>
                        <div class="mb-3">
                            <label for="imgUrl" class="form-label">Img Url</label>
                            <input name="imgUrl"
                                value="<%=producto.getImgUrl()%>"  
                                type="text" class="form-control" id="imgUrl" placeholder="imgUrl" maxlength="200">
                        </div>
                        
						<button class="btn btn-primary">
							Actualizar
						</button>
					</form>
				</section>
			</div>
		</main>
	</body>	
</html>