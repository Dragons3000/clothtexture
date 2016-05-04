<%@ include file="/WEB-INF/include.jsp"%>

<!DOCTYPE html>
<html lang="es">

<head>
<meta name="decorator" content="main" />
<meta charset="UTF-8" />
<title>Registro de Admistradores</title>
</head>

<body>

	<form action="registrarUsuarios.do" method="post" id="formulario" accept-charset="UTF-8">

		<div class="col-lg-3">

			<input name="uno" id="uno" type="text" maxlength="100"
				required="required" class="form-control"
				placeholder="Nombre de usuario" />


		</div>

		<div class="col-lg-3">
			<select name="tres" class="form-control" required="required">
				<option value="">Seleccione un rol</option>
				<option value="2">Administrador</option>
				<option value="3">Empleado</option>
			</select>
		</div>

		<div class="col-lg-3">

			<input name="dos" id="dos" type="password"
				required="required" class="form-control" placeholder="Contrase&ntilde;a" pattern="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,20})$"/>


		</div>

		<div class="col-lg-3">

			<input type="password"  required="required"
				class="form-control" id="dos_again" name="dos_again"  placeholder="Vuelva a escribir su contrase&ntilde;a" />

		</div>

		<br /> <br /> <br />
		<div class="col-lg-12">
			<button type="submit" value="Guardar"
				class="botonForm btn btn-success pull-right" id="guardar">Guardar</button>
			<a href="catalogoUsersAdmin.do"
				class="botonForm btn btn-warning pull-right">Cancelar</a>
		</div>
	</form>



</body>

</html>