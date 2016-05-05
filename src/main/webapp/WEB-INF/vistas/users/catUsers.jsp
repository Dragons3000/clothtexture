<%@ include file="/WEB-INF/include.jsp"%>

<!DOCTYPE html>
<html lang="es">

<head>
<meta name="decorator" content="main" />
<meta charset="UTF-8" />
<title>Cat&aacute;logo de Usuarios</title>
</head>

<body>

	<div class="row-fluid pull-right" style="margin-bottom: 1%;">
		<a href="frmAltaUser.do" class="btn btn-primary btn-xs" style="width: 80px;">Nuevo</a>
	</div>
	
	
	
	
	<div>
		<table id="tablaUsers" class="display compact">
			<thead>
				<tr>
					<th class="text-center">USUARIO</th>
					<th class="text-center">ESTATUS</th>
					<th class="text-center">ELIMINAR</th>
				</tr>
			</thead>
			<c:forEach items="${model.usersadmin}" var="usersadmin">
				<tr>
					<td class="text-center">${usersadmin.nombreUsuario}</td>


					<td class="text-center"><c:choose>
							<c:when test="${usersadmin.estatusUsuario==false}">
								<a href="changeStatusUser.do?estatusUsuario=1&nombreUsuario=${usersadmin.nombreUsuario}"
									class="text-danger" title="Habilitar"><span
									class="glyphicon glyphicon-ban-circle"></span></a>
							</c:when>
							<c:when test="${usersadmin.estatusUsuario==true}">
								<a href="changeStatusUser.do?nombreUsuario=${usersadmin.nombreUsuario}&estatusUsuario=0"
									class="text-primary text-success" title="Deshabilitar"><span
									class="glyphicon glyphicon-ok"></span></a>
							</c:when>
						</c:choose></td>

						 <td class="text-center"><a href="#" onclick="confirmaEliminacion('${usersadmin.nombreUsuario}',1);" class="text-danger" title="Eliminar"><span class="glyphicon glyphicon-trash"></span></a></td>
				</tr>
			</c:forEach>
		</table>

	</div>
	<div id="confirmacion" title="Confirmación de Eliminación"></div>
</body>

</html>