package com.dragons.rosela.desing.util;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class UtilProperties {

	private Properties propiedades;

	@Autowired
	@Qualifier("propiedades")
	public void setPropiedades(Properties propiedades) {
		this.propiedades = propiedades;
	}

	public String getPropiedad(String key) {
		return (String) propiedades.get(key);
	}

}