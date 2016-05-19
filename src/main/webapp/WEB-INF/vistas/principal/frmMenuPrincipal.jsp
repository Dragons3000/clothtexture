<%@ include file="/WEB-INF/include.jsp"%>

<!DOCTYPE html>
<html lang="es">

<head>
<meta name="decorator" content="main" />
<meta charset="UTF-8" />
<title>Rosela Desing Pro</title>
</head>

<body>

	<div id="contenedor">
	
    <div id="contenidos">
    
       <div id="columna1">
		<div class="list-group">
		<a href="#" class="list-group-item active">Herramientas</a> 
		<a href="#" class="list-group-item"><img alt="Seleccionar" src="${pageContext.request.contextPath}/estaticos/imagenes/varita.png" class="img-responsive" id="imagen"/></a> 
		<a href="#" class="list-group-item"><img alt="Aplicar textura" src="${pageContext.request.contextPath}/estaticos/imagenes/textura.png" class="img-responsive"id="imagen" /></a> 
		<a href="#" class="list-group-item"><img alt="Aplicar decoración" src="${pageContext.request.contextPath}/estaticos/imagenes/decorcion.png" class="img-responsive" id="imagen"/></a> 
		<a href="#" class="list-group-item"><img alt="Exportar imagen" src="${pageContext.request.contextPath}/estaticos/imagenes/exportar.png" class="img-responsive" id="imagen"/></a>
		<a href="#" class="list-group-item"><img alt="Cancelar" src="${pageContext.request.contextPath}/estaticos/imagenes/cancelar.png" class="img-responsive" id="imagen"/></a>
		</div>
		</div>
		
		<div id="hola">sdfsdfddddddddddddddddddddddddddddddddddd
		d
		sdsf
		ds
		sd
		sd
		ds
		ds
		ds
		sd
		d
		ss
		d
		ds
		sd
		sd
		ds
		ds
		ds
		
		ds
		d
		sd
		
		
		
		
		
		</div>

        <div id="columna3">
        <div id="borde"></div>
        </br>
        <div id="borde"></div>
 
        <div id="div4">
        <label>Brillo:</label>
      	<input type="range"  value="50" min="0" max="100">
       	<label>Opacidad:</label>
      	<input type="range"  value="50" min="0" max="100">
      	<hr>
         <button type="button" class="btn btn-info btn-xs" id="anchobtn">Importar Decoración</button>
         <br> <br>
         <button type="button" class="btn btn-warning btn-xs" id="anchobtn">Importar Textura</button>
        </div>
        </div>
        
    </div>
    

    
</div>



</body>

</html>