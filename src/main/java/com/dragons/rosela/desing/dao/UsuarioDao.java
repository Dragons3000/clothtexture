package com.dragons.rosela.desing.dao;

import java.util.Collection;

import com.dragons.rosela.desing.domain.Usuario;

public interface UsuarioDao {

	Collection<Usuario> getAllUsers();

	Usuario findUserById(String idUsuario);

	Object addUsuario(Usuario usuario);

	Object deleteUser(Usuario usuario);

	Object changeStatusUser(String nombreUsuario, int estatusUsuario);

}
