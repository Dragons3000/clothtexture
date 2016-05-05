package com.dragons.rosela.desing.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.dragons.rosela.desing.dao.UsuarioDao;
import com.dragons.rosela.desing.domain.Usuario;
import com.dragons.rosela.desing.util.UtilDao;

@Repository
public class UsuarioDaolmpl extends UtilDao implements UsuarioDao {

	private static final Logger LOG = Logger.getLogger(UsuarioDaolmpl.class.getName());
	String error = "Se presento el error: ";

	@Override
	@Autowired
	@Qualifier("dataSourceRoselaDesing")
	public void setDataSource(DataSource ds) {
		super.setDataSource(ds);
	};

	@Override
	public Collection<Usuario> getAllUsers() {
		try {
			Collection<Usuario> listUsers = getJdbcTemplate().query(getQuery("users.catalogo"),
					new RowMapper<Usuario>() {
						public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
							Usuario usuario = new Usuario();
							usuario.setNombreUsuario(rs.getString("nombreUsuario"));
							usuario.setEstatusUsuario(rs.getBoolean("estatusUsuario"));
							return usuario;
						}
					});
			return listUsers;
		} catch (EmptyResultDataAccessException e) {
			LOG.debug(error + e.getMessage() + " En getAllUsers");
			return null;
		}
	}

	@Override
	public Usuario findUserById(String idUsuario) {
		LOG.info("Buscando en Usuaios: " + idUsuario);
		try {
			Usuario usuario = getJdbcTemplate().queryForObject(getQuery("usuario.consulta"),
					new Object[] { new String(idUsuario) }, new RowMapper<Usuario>() {
						public Usuario mapRow(ResultSet rs, int arg1) throws SQLException {
							Usuario user = new Usuario();
							user.setNombreUsuario(rs.getString("nombreUsuario"));
							user.setContraUsuario(rs.getString("contraUsuario"));
							user.setEstatusUsuario(rs.getBoolean("estatusUsuario"));
							user.setRolUsuario(rs.getString("rolUsuario"));
							return user;
						}
					});
			LOG.debug(usuario);
			return usuario;
		} catch (EmptyResultDataAccessException ex) {
			LOG.debug(error + ex.getMessage() + " En findUnixsigaByID");
			return null;
		}
	}

	@Override
	public Object addUsuario(Usuario usuario) {
		return getJdbcTemplate().update(getQuery("user.alta"), usuario.getNombreUsuario(), usuario.getContraUsuario(),
				usuario.getRolUsuario());
	}

	@Override
	public Object deleteUser(Usuario usuario) {
		return getJdbcTemplate().update(getQuery("user.delete"), usuario);
	}

	@Override
	public Object changeStatusUser(String nombreUsuario, int estatusUsuario) {
		return getJdbcTemplate().update(getQuery("userstatus.change"), estatusUsuario, nombreUsuario);
	}

}
