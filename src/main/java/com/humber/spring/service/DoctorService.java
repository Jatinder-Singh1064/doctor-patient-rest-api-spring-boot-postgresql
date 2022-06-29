package com.humber.spring.service;

import java.util.List;
import com.humber.spring.entity.Doctor;
import com.humber.spring.entity.Patient;

public interface DoctorService {
	
	Doctor saveDoctor(Doctor doctor);
	
	List<Doctor> listAllDoctors();
	
	Doctor getDoctorById(int doctorId);
	
	Doctor updateDoctorNameById(int doctorId, String doctorName);
     
    void deleteDoctorById(int doctorId);
    
    void addPatientUnderDoctor(int doctorId, Patient patient);

	void dischargePatient(int doctorId, int patientId);
}
