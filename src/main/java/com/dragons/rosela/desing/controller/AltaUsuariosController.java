package com.dragons.rosela.desing.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dragons.rosela.desing.domain.Usuario;
import com.dragons.rosela.desing.service.UsuarioService;

@Controller
public class AltaUsuariosController {

	@Autowired private UsuarioService usuarioService;

	@RequestMapping(value = "frmAltaUser.do")
	public ModelAndView frmAltaUsuario() {
		return new ModelAndView("users/frmAltaUsuarios");
	}

	@RequestMapping(value = "registrarUsers.do", method = RequestMethod.POST)
	public ModelAndView registraradmin(Usuario usuario) {
		usuarioService.addUsuario(usuario);
		return frmAltaUsuario();
	}

	@RequestMapping(value = "catalogoUsersAdmin.do")
	public ModelAndView catUsersAdmin() {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("usersadmin", usuarioService.getAllUsers());
		return new ModelAndView("users/catUsers", "model", model);
	}

	@RequestMapping(value = "changeStatusUser.do")
	public ModelAndView changeStatsu(@RequestParam String nombreUsuario, int estatusUsuario) {
		usuarioService.changeStatusUser(nombreUsuario, estatusUsuario);
		return catUsersAdmin();
	}
	
	
	@RequestMapping(value="eliminarUser.do")
	public ModelAndView eliminarServicio(@RequestParam Usuario usuario) {
		usuarioService.deleteUser(usuario);
		return  catUsersAdmin();
	}
	 

}
