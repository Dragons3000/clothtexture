<%@ include file="/WEB-INF/include.jsp"%>

<!DOCTYPE html>
<html lang="es">

<head>
	
	<meta name="decorator" content="main" />
	<meta charset="UTF-8" />
	
	<title>Rosela Desing Pro<decorator:title /></title>
	
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/estaticos/images/rosela.png" />
	<link rel="icon" type="image/gif" href="${pageContext.request.contextPath}/estaticos/images/rosela.png" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/estaticos/css/bootstrap.min.css" />
</head>

<body>

	<div class="row">
		<div class="row-fluid col-lg-12 cabecera">
			<div class="col-lg-3">
				<p class="pull-left" id="fechaHora"></p>
			</div>
			<div class="col-lg-9">
				<p class="pull-right">
						Usuario: <a href="viewCambioContra.do"><sec:authentication property="name" /></a>
						<sec:authentication property="authorities" />
						<br /> <a href="logout">Cerrar Sesi&oacute;n</a>
				</p>
			</div>
		</div>
	</div>

	<div class="row bandaLogo">
		<div class="row col-lg-3">
			<img alt="SIGA" src="${pageContext.request.contextPath}/estaticos/images/siga.png" class="img-responsive img-circle imgLogo" />
		</div>
		<div class="row col-lg-9"></div>
	</div>

	<div class="row col-lg-12">
		<div class="col-lg-3">
			<div class="panel-group" id="accordion">
			

				
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion" href="#menuCompras"> <span class="glyphicon glyphicon-folder-close"></span>Compras</a>
						</h4>
					</div>
					<div id="menuCompras" class="panel-collapse collapse">
						<ul class="list-group">
							<li class="list-group-item">
								<span class="glyphicon glyphicon-th-list text-info"></span>
								<a href="frmRealizarCompra.do?claveEmpresa=<sec:authentication property='name' />">Compras</a>
							</li>
							<li class="list-group-item">
								<span class="glyphicon glyphicon-th-list text-info"></span>
								<a href="catalogoProductos.do?claveEmpresa=<sec:authentication property='name' />">Productos</a>
							</li>
							<li class="list-group-item">
								<span class="glyphicon glyphicon-th-list text-info"></span>
								<a href="catalogoLinea.do?claveEmpresa=<sec:authentication property='name' />">Lineas</a>
							</li>
							<li class="list-group-item">
								<span class="glyphicon glyphicon-th-list text-info"></span>
								<a href="catalogoMarca.do?claveEmpresa=<sec:authentication property='name' />">Marcas</a>
							</li>
							<li class="list-group-item">
								<span class="glyphicon glyphicon-th-list text-info"></span>
								<a href="catalogoProveedores.do?claveEmpresa=<sec:authentication property='name' />">Proveedores</a>
							</li>
							
							<li class="list-group-item">
								<span class="glyphicon glyphicon-th-list text-info"></span>
								<a href="frmAsignaPrecios.do?claveEmpresa=<sec:authentication property='name' />">Asignar Precios</a>
							</li>
						</ul>
					</div>
				</div>
				
				


				
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion" href="#menuSeis"> <span class="glyphicon glyphicon-folder-close"></span>Finanzas
							</a>
						</h4>
					</div>
					<div id="menuSeis" class="panel-collapse collapse">
						<ul class="list-group">
							<li class="list-group-item"><span class="glyphicon glyphicon-pencil text-primary"></span> <a href="#">Articles</a>
								<ul class="list-group">
									<li class="list-group-item"><span class="glyphicon glyphicon-pencil text-primary"></span> <a href="#">Articles</a></li>
									<li class="list-group-item"><span class="glyphicon glyphicon-file text-info"></span> <a href="#">Newsletters</a></li>
									<li class="list-group-item"><span class="glyphicon glyphicon-comment text-success"></span> <a href="#">Comments</a></li>
								</ul></li>
						</ul>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion" href="#menuSiete"> <span class="glyphicon glyphicon-briefcase"></span>Inteligencia de Negocio
							</a>
						</h4>
					</div>
				
				</div>
			</div>
		</div>

		<div class="col-lg-9">
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

	</div>

	<div class="row">
		<div class="row col-lg-12 footer">
			<div class="col-lg-12">
				<p class="center-block">   Rosela Desin 2016-2017 &copy; Todos los derechos reservados</p>
			</div>
			<div class="col-lg-12">
				<a href="#" class="center-block">Aviso de privacidad</a>
			</div>
		</div>
	</div>

<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/jquery-2.1.3.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/jquery-ui-1.9.2.custom.min.js"></script> --%>
	<script src="${pageContext.request.contextPath}/estaticos/js/bootstrap.min.js"></script>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/direcciones.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/jquery.validate.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/jquery.dataTables.min.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/dataTables.jqueryui.min.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/personalizadas.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/reloj.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/validaciones.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/precio.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/jquery-ui-1.9.2.custom.min.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/comunes.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/jquery-ui.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/asignacreditocliente.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/asignapreciosproducto.js"></script>  --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/lineas-marcas.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/bootstrap-toggle.min.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/variables.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/jqxcore.js"></script> --%>
<%--     <script src="${pageContext.request.contextPath}/estaticos/js/jqxdata.js"></script> --%>
<%--     <script src="${pageContext.request.contextPath}/estaticos/js/jqxdraw.js"></script> --%>
<%--     <script src="${pageContext.request.contextPath}/estaticos/js/jqxgauge.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/estaticos/js/indicadores.js"></script> --%>
	
	
	

</body>
</html>
