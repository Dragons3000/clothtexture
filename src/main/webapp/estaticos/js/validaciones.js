$.validator.addMethod("regex", function(value, element, regexp) {
var check = false;
return this.optional(element) || regexp.test(value);
});
$.validator.addMethod("select", function(value, element, arg){
 return arg != value;
});

$("#formulario")
		.validate(
				{
					rules : {
						dos : {
							regex : /(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,20})$/
						},
						dos_again : {
							equalTo : "#dos"
						 }
						}

					},
					messages : {
						dos_again : "La contrase\u00f1a no coincide",
						dos : {
							regex : "Introduzca una contrase\u00f1a de m\u00ednimo 8 caract\u00e9res incluyendo 1 n\u00famero"
						}
						
					}

				});
