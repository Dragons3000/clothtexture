package com.dragons.rosela.desing.service.impl;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dragons.rosela.desing.dao.UsuarioDao;
import com.dragons.rosela.desing.domain.Usuario;
import com.dragons.rosela.desing.service.UsuarioService;

@Service
public class UsuarioServicelmpl implements UsuarioService{
	
	@Autowired private UsuarioDao usuarioDao;
	
	@Override
	public Collection<Usuario> getAllUsers() {
		return usuarioDao.getAllUsers();
	}

	@Override
	public Usuario findUserById(String idUsuario) {
		return usuarioDao.findUserById(idUsuario);
	}

	@Override
	public Object addUsuario(Usuario usuario) {
		return usuarioDao.addUsuario(usuario);
	}

	@Override
	public Object deleteUser(Usuario usuario) {
		return usuarioDao.deleteUser(usuario);
	}

	@Override
	public Object changeStatusUser(String uno, int estatusUsuario) {
		return usuarioDao.changeStatusUser(uno, estatusUsuario);
	}

}
