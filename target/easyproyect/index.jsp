<!doctype html>
<html lang="es">
  <head>
    <%@include file="head.jsp" %>
    <title>Testing Web</title>
  </head>
<body>
<!-- ACA VA EL NAVBAR  -->
<main>
  

  <div class="container">
    <div class="row d-flex justify-content-center mb-5">  
      <div class="col-md-6 ">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Easy-Logo.svg/1200px-Easy-Logo.svg.png " class="img-fluid">

      </div>
    </div>
    <div class="d-flex align-items-center justify-content-evenly flex-column">
      <div class="container-fluid d-flex align-items-center justify-content-evenly">
        <a class="col-6 col-md-10 btn btn-danger mb-3" href="<%=request.getContextPath()%>/api" role="button">Iniciar Sesion</a>
      </div>
      <div class="container-fluid d-flex align-items-center justify-content-evenly">
        <a class="col-6 col-md-10 btn btn-danger mb-3" href="<%=request.getContextPath()%>/api/ListadoController" role="button">Ver Folleto</a>
      </div>
      <div class="container-fluid d-flex align-items-center justify-content-evenly">
        <a class="col-6 col-md-10 btn btn-danger mb-3" href="<%=request.getContextPath()%>/visualizadorDeCodigosDeBarra.jsp" role="button">Generador De codigos de barra</a>
      </div>
      <div class="container-fluid d-flex align-items-center justify-content-evenly">
        <a class="col-6 col-md-10 btn btn-danger mb-3" href="/easyproyect/api/ListadoController?id=1" role="button">Modificar Folleto</a>
      </div>
    </div>
  </div>

</main>

</body>
</html>