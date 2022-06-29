package com.humber.spring.entity;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

@Data
@Entity
@Table(name = "doctors")
public class Doctor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(unique = true, nullable = false)
	private String name;
	
	@JsonIgnore
	@OneToMany(mappedBy = "doctor")
	private List<Patient> patients;

	public Doctor() {
	}

	public Doctor(String name) {
		this.name = name;
	}

	public void addPatient(Patient patient) {
		if (patients == null) {
			patients = new ArrayList<>();
		}
		patients.add(patient);
		patient.setDoctor(this);
	}
	
	public Doctor removePatient(Patient patient)
    {
		patients.remove(patient);
		patient.setDoctor(null);
        return this;
    }

}
