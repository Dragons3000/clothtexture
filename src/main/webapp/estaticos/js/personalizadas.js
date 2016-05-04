
$(document).ready(function(){
	dataTableToAll();
});

function dataTableToAll(){
	$("#tablaAutor").dataTable(parametrosDataTable);
	$("#tablaLibros").dataTable(parametrosDataTable);
	
}

var parametrosDataTable={
	"responsive": true,
	"ordering": true,
	"bJQueryUI":true,
	"bFilter": true,
	"sbPaginationType":"full_numbers",
	"iDisplayLength": 10,
	"oLanguage":{
		"sEmtyTable":"No se encontraron datos",
		"sInfo":"Mostrando (_START_ - _END_) de _TOTAL_ registros",
		"sLengthMenu":"Mostrar <select>"+
			'<option value="5">5</option>'+
			'<option value="10">10</option>'+
			'<option value="15">15</option>'+
			'<option value="-1">Todos</option>'+
			'</select> registros',
		"sSearch":"Buscar  ",
		"sZeroRecords":"No hay registros coincidentes",
		"oPaginate":{
			"sFirst":"Primero",
			"sLast":"Ultimo",
			"sNext":"Siguiente",
			"sPrevious":"Anterior"
			}
		}
};

