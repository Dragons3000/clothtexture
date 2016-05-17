package com.dragons.rosela.desing.domain;

public class Usuario {

	private int idPersonas;
	private String nombrePersona;
	private String appPat;
	private String appMat;
	private String direccion;
	private String cp;
	
	
	public int getIdPersonas() {
		return idPersonas;
	}
	public void setIdPersonas(int idPersonas) {
		this.idPersonas = idPersonas;
	}
	public String getNombrePersona() {
		return nombrePersona;
	}
	public void setNombrePersona(String nombrePersona) {
		this.nombrePersona = nombrePersona;
	}
	public String getAppPat() {
		return appPat;
	}
	public void setAppPat(String appPat) {
		this.appPat = appPat;
	}
	public String getAppMat() {
		return appMat;
	}
	public void setAppMat(String appMat) {
		this.appMat = appMat;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getCp() {
		return cp;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}

}
