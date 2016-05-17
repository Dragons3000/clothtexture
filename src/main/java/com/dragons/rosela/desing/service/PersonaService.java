package src.main.java.com.dragons.rosela.desing.service;


import java.util.Collection;

import com.dragons.rosela.desing.domain.Persona;

public interface PersonaService {

	Collection<Persona> obtenerTodos();

	Persona buscarUsuarioID(int idPersonas);

	Object agregarPersona(Persona usuario);

	Object borrarPersona(Persona usuario);

}
