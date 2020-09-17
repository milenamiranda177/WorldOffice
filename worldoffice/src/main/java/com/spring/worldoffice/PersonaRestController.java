package com.spring.worldoffice;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.Reader;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;

@RestController
@RequestMapping("webapi")
public class PersonaRestController {

	@Autowired
	PersonaRepository repositorio;
	
	@Autowired
	PersonaService miservice;

	@GetMapping("/personas")
	public Iterable<Persona> buscarTodos() {

		return repositorio.findAll();
	}
	
	@GetMapping("/countEmpleados")
	public long countEmpleados() {

		return repositorio.count();
	}
	
	@GetMapping("/rankingCinco")
	public Iterable<Persona> rankingCinco() {
		return miservice.buscarRanking();
	}
	
	@GetMapping("/buscarAgrupacion")
	public List<Persona> buscarAgrupacion() {
		List<Persona> listaPer = new ArrayList<Persona>();
		for(Object[] obj : miservice.buscarAgrupacion()){
		     String departamento = (String) obj[0];
		     BigDecimal salario = (BigDecimal) obj[1];
		     listaPer.add(new Persona(salario.doubleValue(),departamento));
		}
		
		return listaPer;
	}
	

}
