package com.humber.spring.service;

import java.util.List;
import com.humber.spring.entity.Patient;

public interface PatientService {

	Patient savePatient(Patient patient);

	List<Patient> listAllPatients();

	Patient getPatientById(int patientId);

	Patient updatePatientById(int patientId, Patient patient);

	void deletePatientById(int patientId);

	Patient assignDoctorToPatient(int patientId, int doctorId);
}
