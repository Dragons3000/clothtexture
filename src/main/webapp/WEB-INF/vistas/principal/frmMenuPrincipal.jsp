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
		<div class="list-group" id="borde2">
		<a href="#" class="list-group-item active">Panel de selección</a> 
		<a href="#" class="list-group-item">Selección</a> 
		<a href="#" class="list-group-item">Aplicar Textura</a> 
		<a href="#" class="list-group-item">Aplicar Decoración</a> 
		<a href="#" class="list-group-item">Exportar</a>
		</div>
		</div>
		
        <div id="columna2">
        <div>
        <img src="https://image.freepik.com/foto-gratis/texturas--ropa--vestuario--telas_3293102.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="236">
        </div>
        </div>
        <div id="columna3">
        <div id="borde"></div>
        </br>
        <div id="borde"></div>
        </br>
        <div id="borde">
      <label>Brillo:</label>
      <input type="range"  value="50" min="0" max="100">
       <label>Opacidad:</label>
      <input type="range"  value="50" min="0" max="100">
        </div>
 
        <div id="div4">
         <button type="button" class="btn btn-info btn-xs" id="anchobtn">Importar Decoración</button>
         <button type="button" class="btn btn-warning btn-xs" id="anchobtn">Importar Textura</button>
        </div>
        </div>
        
    </div>
    

    
</div>



</body>

</html>