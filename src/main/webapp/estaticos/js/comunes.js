$(document).ready(function(){
    $('[data-toggle="popover"]').popover({
    	html:true,
    	placement: "top",
    	trigger: "hover"
    }); 
});

var mensajeEliminacionUsuario="<p style='align-text:jutify;'>" +
		"<span class='ui-icon ui-icon-alert' style='float:left; margin:0 7px 20px 0;'></span>" +
		"¿Está seguro de eliminar al usuario: <strong>reemplazar</strong>?<br />"+
		"Considere que al eliminarlo, tambień se eliminará cualquier movimiento relacionado " +
		"con este usuario y no se podrán deshacer las afectaciones."+
		"</p>";	



function confirmaEliminacion(elementoEliminar,tipo){
	var mensaje;
	var url;
	switch (tipo) {
	case 1:
		url="eliminarUser.do?usuario="+elementoEliminar;
		mensaje=mensajeEliminacionUsuario;
		break;
	}
	
	$("#confirmacion").html(mensaje.replace("reemplazar",elementoEliminar));
	$("#confirmacion").dialog(
		{
			resizable : false,
			height : 250,
			width: 500,
			modal : true,
			buttons : {
				"No, cancelar" : function() {
					$(this).dialog("close");
				},
				"Sí, eliminar" : function() {
					window.location=url;
					$(this).dialog("close");
				}
			}
		}	
	);
}