package com.spring.worldoffice;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.exception.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;

@Controller
@RequestMapping("/personas")
public class PersonaController {

	@Autowired
	PersonaService miservicio;
	
	@RequestMapping("/lista")
	public String mostrarPersonas(Model modelo) {
		modelo.addAttribute("lista",miservicio.buscarTodos());
		return "personas/lista";
	}
	
	@PostMapping("/upload-csv-file")
    public String uploadCSVFile1(@RequestParam("file") MultipartFile file, Model model) {

        // validate file
        if (file.isEmpty()) {
            model.addAttribute("message", "Please select a CSV file to upload.");
            model.addAttribute("status", false);
        } else {

            // parse CSV file to create a list of `User` objects
            try (Reader reader = new BufferedReader(new InputStreamReader(file.getInputStream()))) {

                // create csv bean reader
                CsvToBean<Empleado> csvToBean = new CsvToBeanBuilder(reader)
                        .withType(Empleado.class)
                        .withIgnoreLeadingWhiteSpace(true)
                        .build();

                // convert `CsvToBean` object to list of users
                List<Empleado> empleados = csvToBean.parse();
                
                for(Empleado empleado : empleados ) {
                	Persona persona = new Persona(empleado.getNombre(), empleado.getCargo(), 
                			empleado.getSalario(), empleado.getTiempo() == null ? Boolean.FALSE: empleado.getTiempo(), 
                			empleado.getDepartamento());
                	try {
                		miservicio.insertar(persona);
                	} catch(Exception ex) {
                		System.out.println(ex.getCause().toString());
                		if (ex.getCause().toString().indexOf("ConstraintViolationException") >= 0) {
                			miservicio.insertarDep(new Departamento(empleado.getDepartamento()));
                			miservicio.insertar(persona);
                		}
                	}
                	
                }

                // TODO: save users in DB?

                // save users list on model
                model.addAttribute("lista", empleados);
                model.addAttribute("status", true);

            } catch (Exception ex) {
                model.addAttribute("message", "An error occurred while processing the CSV file.");
                model.addAttribute("status", false);
            }
        }

        return "personas/lista";
    }
	
	
	
	
}
