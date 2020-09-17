package com.spring.worldoffice;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonaService {

	@Autowired
	PersonaRepository repositorio;
	@Autowired
	DepartamentoRepository repositorioDep;
	
	
	public Iterable<Persona> buscarTodos() {
		
		return repositorio.findAll();
	}
	
	public void insertar(Persona persona) {
		repositorio.save(persona);
		
	}
	
	public void insertarDep(Departamento departamento) {
		repositorioDep.save(departamento);
		
	}
	
	public Iterable<Persona> buscarRanking() {
		return repositorio.rankingfive();
	}
	
	public Iterable<Object[]> buscarAgrupacion() {
		return repositorio.rankingGroup();
	}
	
	
	
	
}
