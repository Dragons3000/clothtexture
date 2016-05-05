package com.dragons.rosela.desing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PrincipalController {

	@RequestMapping(value = "frmMenuPincipal.do")
	public ModelAndView frmMenu() {
		return new ModelAndView("principal/frmMenuPrincipal");
	}

	// @RequestMapping(value = "registrarUsuarios.do", method =
	// RequestMethod.POST)
	// public ModelAndView registraradmin(Unixsiga unixsiga) {
	// unixsigaService.addUnixsiga(unixsiga);
	// return frmAltaUsuario();
	// }
}
