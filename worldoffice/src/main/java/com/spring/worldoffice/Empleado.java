package com.spring.worldoffice;

import com.opencsv.bean.CsvBindByName;

public class Empleado {

    @CsvBindByName
    private String nombre;
    @CsvBindByName
    private String cargo;
    @CsvBindByName
    private Double salario;
    @CsvBindByName
    private Boolean tiempo;
    @CsvBindByName
    private String departamento;
	public Empleado(String nombre, String cargo, Double salario, Boolean tiempo, String departamento) {
		super();
		this.nombre = nombre;
		this.cargo = cargo;
		this.salario = salario;
		this.tiempo = tiempo;
		this.departamento = departamento;
	}
	public Empleado() {
		super();
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	public Double getSalario() {
		return salario;
	}
	public void setSalario(Double salario) {
		this.salario = salario;
	}
	public Boolean getTiempo() {
		return tiempo;
	}
	public void setTiempo(Boolean tiempo) {
		this.tiempo = tiempo;
	}
	public String getDepartamento() {
		return departamento;
	}
	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}
	
	

    
    
    // getters and setters removed for the sake of brevity
 }
