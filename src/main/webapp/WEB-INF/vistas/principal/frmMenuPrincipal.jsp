<%@ include file="/WEB-INF/include.jsp"%>

<!DOCTYPE html>
<html lang="es">

<head>
<meta name="decorator" content="main" />
<meta charset="UTF-8" />
<title>Rosela Desing Pro</title>
</head>

<body>

	<div id="imagen"> <img src="${pageContext.request.contextPath}/estaticos/imagenes/perro.jpg" width="550" height="400"></div>
	<form action="">
	<p id="texto">Control visual de la imagen</p>
	<p>
	<input type="button" value="Esconder imagen" onclick="#('imagen').setOpacity(0);">
	<input type="button" value="Difuminar 50%" onclick="#('imagen').setOpacity(5);">
	<input type="button" value="Reestablecer imagen" onclick="#('imagen').setOpacity(1);">
	<input type="button" value="Texto Rojo" onclick="#('texto').setStyle('color','red');">
	<input type="button" value="Texto Azul" onclick="#('texto').setStyle('color','blue');">
	</p>
	</form>



</body>

</html>