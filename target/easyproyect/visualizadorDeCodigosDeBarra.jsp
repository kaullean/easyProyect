<!doctype html>
<html lang="en" data-bs-theme="danger">
	<head>
        <%@include file="head.jsp" %>	
        

        
		<title>Visualizador de codigos de barra</title>
	</head>

	<body>
        <script>
            function getCodigo(){
            if(document.getElementById('imagenCodigo')){
                document.getElementById("imagenCodigo").remove();
            }
            var codigo = document.getElementById('codigoDeBarras').value;
            var url = 'https://barcode.tec-it.com/barcode.ashx?data='+codigo+'&code=EAN13&translate-esc=on';
            var image = new Image();
            image.src = url;
            image.id= "imagenCodigo";
            document.getElementById('container').appendChild(image);
        }
        </script>
		<div class="d-flex align-items-center flex-column">
           
            <div class=" row col-6 mt-5 mx-0">
                <input type="number" name="codigo" id="codigoDeBarras"  placeholder="Ingrese codigo de barras" style="height: 3em;">
                <button type="submit"  onclick="getCodigo()"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSILDRC-i_VrZ3zc1ZAazUTYb8LnDhn_UvDNX65idA9Qw&s" alt="Bootstrap" width="48" height="48">
                </button>
            </div>
                
            
            <div class="row col-6 mx-0 mt-5"id="container">
            </div>
        </div>
        
        <script type="text/javascript" src="./visualizadorDeCodigosDeBarra.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
		

	</body>	
</html>