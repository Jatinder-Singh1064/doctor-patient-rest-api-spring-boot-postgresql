package com.humber.spring.entity;

import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="patients")
public class Patient {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String disease;
	private Date dateOfBirth;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "doctor_id", referencedColumnName = "id")
	private Doctor doctor;

	public Patient() {
	}

	public Patient(String name, String disease, Date dateOfBirth, Doctor doctor) {
		this.name = name;
		this.disease = disease;
		this.dateOfBirth = dateOfBirth;
		this.doctor = doctor;
	}
	
}
