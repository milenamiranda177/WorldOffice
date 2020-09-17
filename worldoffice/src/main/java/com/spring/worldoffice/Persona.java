package com.spring.worldoffice;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="empleado")
public class Persona {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idempleado;
	private String nombre;
	private String cargo;
	private Double salario;
	private boolean tiempo;
	private String departamento;
	public String getNombre() {
		return nombre;
	}
	
	
	public int getIdempleado() {
		return idempleado;
	}


	public void setIdempleado(int idempleado) {
		this.idempleado = idempleado;
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
	
	public boolean isTiempo() {
		return tiempo;
	}
	public void setTiempo(boolean tiempo) {
		this.tiempo = tiempo;
	}
	public String getDepartamento() {
		return departamento;
	}
	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}
	public Persona(String nombre, String cargo, Double salario, boolean tiempo, String departamento) {
		super();
		this.nombre = nombre;
		this.cargo = cargo;
		this.salario = salario;
		this.tiempo = tiempo;
		this.departamento = departamento ;
	}
	public Persona() {
		super();
	}
	public Persona(String nombre) {
		super();
		this.nombre = nombre;
	}


	public Persona(Double salario, String departamento) {
		super();
		this.salario = salario;
		this.departamento = departamento;
	}
	
	
	
	
	
	
	
	
	
}
