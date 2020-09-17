package com.spring.worldoffice;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="departamento")
public class Departamento {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int iddepartamento;
	private String nombredepartamento;
	public int getIddepartamento() {
		return iddepartamento;
	}
	public void setIddepartamento(int iddepartamento) {
		this.iddepartamento = iddepartamento;
	}
	public String getNombredepartamento() {
		return nombredepartamento;
	}
	public void setNombredepartamento(String nombredepartamento) {
		this.nombredepartamento = nombredepartamento;
	}
	public Departamento(int iddepartamento, String nombredepartamento) {
		super();
		this.iddepartamento = iddepartamento;
		this.nombredepartamento = nombredepartamento;
	}
	public Departamento() {
		super();
	}
	public Departamento(String nombredepartamento) {
		super();
		this.nombredepartamento = nombredepartamento;
	}
	
	
	
}
	
	
	
