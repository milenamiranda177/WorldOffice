package com.spring.worldoffice;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


public interface PersonaRepository extends CrudRepository<Persona,String> {

	@Query(nativeQuery = true, value = "SELECT e.idempleado,e.nombre, e.cargo, e.salario, e.tiempo, e.departamento FROM Empleado e ORDER BY e.salario DESC LIMIT 5")
	public List<Persona> rankingfive();
	
	@Query(nativeQuery = true,value="SELECT v.departamento, sum(v.salario) from empleado v GROUP BY v.departamento")
	public List<Object[]> rankingGroup();
	
	
	
}
