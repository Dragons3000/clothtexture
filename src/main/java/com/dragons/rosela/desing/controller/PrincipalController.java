package com.dragons.rosela.desing.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dragons.rosela.desing.service.PrinciaplService;

@Controller
public class PrincipalController {

	@Autowired
	private PrinciaplService autorService;

	@RequestMapping(value = "frmPincipal.do")
	public ModelAndView frmMenu() {
		return new ModelAndView("principal/frmMenuPrincipal");
	}

//	@RequestMapping(value = "registrarUsuarios.do", method = RequestMethod.POST)
//	public ModelAndView registraradmin(Unixsiga unixsiga) {
//		unixsigaService.addUnixsiga(unixsiga);
//		return frmAltaUsuario();
//	}
}
