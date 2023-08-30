<!doctype html>
<html lang="en">
	<head>
		<%@include file="head.jsp" %>
    <title>Crear Producto</title>
	</head>
	
	<body>
		<main>

			<div class="container">
				<section>
					<h1>Crear Producto</h1>
					<!--  JSP -->
					<form method="POST"
						action="<%=request.getContextPath()%>/api/CreateController">
						<div class="mb-3">
						  <label for="nombre" class="form-label">Nombre</label>
						  <input name="nombre" 
						  	type="text" class="form-control" id="nombre" placeholder="Nombre" maxlength="50">
						</div>
                        <div class="mb-3">
						  <label for="descripcion" class="form-label">Descripcion</label>
						  <input name="descripcion"
						  	type="text" class="form-control" id="descripcion" placeholder="Descripcion" maxlength="200">
						</div>
                        <div class="mb-3">
                            <label for="stock" class="form-label">Stock</label>
                            <input name="stock"
                                type="number" class="form-control" id="stock">
                        </div>
						<div class="mb-3">
						  <label for="codigoDeBarras" class="form-label">Codigo de barras</label>
						  <input name="codigoDeBarras"
						  	type="number" class="form-control" id="codigoDeBarras">
						</div>
                        <div class="mb-3">
                            <label for="imgUrl" class="form-label">Img Url</label>
                            <input name="imgUrl"
                                type="text" class="form-control" id="imgUrl" placeholder="imgUrl" maxlength="200">
                        </div>
                        
						<button class="btn btn-primary">
							Crear
						</button>
					</form>
				</section>
			</div>
		</main>
	</body>	
</html>