package com.humber.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.humber.spring.entity.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Integer> {

}

