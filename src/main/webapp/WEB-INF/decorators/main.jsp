<%@ include file="/WEB-INF/include.jsp"%>

<!DOCTYPE html>
<html lang="es">

<head>
<meta charset="utf-8" />
<title>Rosela Desing Pro - <decorator:title /></title>
<link rel="icon" type="image/gif" href="${pageContext.request.contextPath}/estaticos/imagenes/rosela.png" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/estaticos/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/estaticos/css/bootstrap-submenu.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/estaticos/css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/estaticos/css/dataTables.jqueryui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/estaticos/css/banner.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/estaticos/css/principal.css"/>
</head>

<body>
	<div class="container">
		<div class="row-fluid col-lg-12">
			<nav class="navbar navbar-default" role="navigation">
				<div>
					<a class="navbar-brand" href="frmMenuPincipal.do"> <img alt="Rosela Desing Pro" src="${pageContext.request.contextPath}/estaticos/imagenes/rosela.png" class="img-responsive" style="width: 100px;" />
					</a>
					<p class="navbar-text pull-right">
						Usuario: <a href="viewCambioContra.do"><sec:authentication property="name" /></a>
						<sec:authentication property="authorities" />
						<br /> <a href="logout">Cerrar Sesi&oacute;n</a>
					</p>
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<span class="sr-only">Desplegar navegación</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
				</div>
	
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Configuraciones<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Nada</a></li>
								<li><a href="#">Nada</a></li>
								<li><a href="#">Nada</a></li>
								<li class="divider"></li>
								<li><a href="#">Nada</a></li>
							</ul></li>
					</ul>
					<sec:authorize access="hasRole('admin')">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Administraci&oacute;n<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">Nada</a></li>
									<li><a href="#">Nada</a></li>
									<li><a href="#">Nada</a></li>
									<li class="divider"></li>
									<li class="dropdown-submenu"><a tabindex="-1" href="#">Nada</a>
										<ul class="dropdown-menu">
											<li><a tabindex="-1" href="#">Nada</a></li>
											<li><a tabindex="-1" href="#">Nada</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a tabindex="-1" href="#">Nada</a>
										<ul class="dropdown-menu">
											<li><a href="#">Nada</a></li>
											<li><a href="#">Nada</a></li>
											<li><a href="#">Nada</a></li>
											<li><a href="#">Nada</a></li>
											<li><a href="#">Nada</a></li>
										</ul></li>
									<li class="divider"></li>
									<li><a href="catalogoUsersAdmin.do">Catalogo de Usuarios</a></li>
								</ul></li>
						</ul>
						
							<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> Ayuda<b class="caret"></b></a>
						</li>
						</ul>
						
						
					</sec:authorize>
				</div>
			</nav>
				
		</div>
	
		<div class="row-fluid col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<p class="titulo">
						<decorator:title />
					</p>
				</div>
				<div class="panel-body">
					<decorator:body />
				</div>
			</div>
		</div>
		
		<div class="row">
		<div class="col-lg-12 footer navbar navbar-default" id="estilo1">
			<div class="col-lg-12">
			</br>
			
				<p class="center-block">   Rosela Desings Pro 2016-2017 &copy; Todos los derechos reservados</p>
			</div>
			 <div class="col-lg-2"></div>
			<div class="col-lg-12">
				<a href="#" class="center-block">Aviso de privacidad</a>
			</div>
		</div>
	</div>

	</div>
	
	
	
	<script charset="UTF-8" src="${pageContext.request.contextPath}/estaticos/js/jquery-2.1.3.js"></script>
	<script charset="UTF-8" src="${pageContext.request.contextPath}/estaticos/js/bootstrap.js"></script>
	<script charset="UTF-8" src="${pageContext.request.contextPath}/estaticos/js/bootstrap.min.js"></script>
	<script charset="UTF-8" src="${pageContext.request.contextPath}/estaticos/js/bootstrap.min.js"></script>
	<script charset="UTF-8" src="${pageContext.request.contextPath}/estaticos/js/bootstrap-submenu.min.js"></script>
	<script charset="UTF-8" src="${pageContext.request.contextPath}/estaticos/js/jquery.dataTables.min.js"></script>
	<script charset="UTF-8" src="${pageContext.request.contextPath}/estaticos/js/dataTables.jqueryui.min.js"></script>
	<script charset="UTF-8" src="${pageContext.request.contextPath}/estaticos/js/dataTable.js"></script>
	<script charset="UTF-8" src="${pageContext.request.contextPath}/estaticos/js/personalizadas.js"></script>
	<script charset="UTF-8" src="${pageContext.request.contextPath}/estaticos/js/comunes.js"></script>
	<script src="${pageContext.request.contextPath}/estaticos/js/validaciones.js"></script>
		<script src="${pageContext.request.contextPath}/estaticos/js/MooTools-Core-1.6.0.js"></script>

</body>
</html>
