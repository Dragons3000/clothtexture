package com.dragons.rosela.desing.domain;

public class Usuario {
	private String nombreUsuario;
	private String contraUsuario;
	private boolean estatusUsuario;
	private String rolUsuario;

	public String getNombreUsuario() {
		return nombreUsuario;
	}

	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}

	public String getContraUsuario() {
		return contraUsuario;
	}

	public void setContraUsuario(String contraUsuario) {
		this.contraUsuario = contraUsuario;
	}

	public boolean isEstatusUsuario() {
		return estatusUsuario;
	}

	public void setEstatusUsuario(boolean estatusUsuario) {
		this.estatusUsuario = estatusUsuario;
	}

	public String getRolUsuario() {
		return rolUsuario;
	}

	public void setRolUsuario(String rolUsuario) {
		this.rolUsuario = rolUsuario;
	}
}
