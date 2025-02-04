package com.java.ejb;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 * Session Bean implementation class DoctorBean
 */
@Stateless
@Remote(DoctorBeanRemote.class)
public class DoctorBean implements DoctorBeanRemote {
	
	@PersistenceContext(unitName = "EmpMgmtPU")
	 private EntityManager entityManager;

    /**
     * Default constructor. 
     */
    public DoctorBean() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public List<Doctor> showDoctor() {
		// TODO Auto-generated method stub
		System.out.println("Entit Manager is  " +entityManager);
		Query query = entityManager.createQuery("SELECT d FROM Doctor d");
	    return (List<Doctor>) query.getResultList();
	}

	@Override
	public String AddDoctor(Doctor doctor) {
		entityManager.persist(doctor);
		return "Employ Record Inserted...";
	}

	@Override
	public Doctor SearchDoctor(String doctorId) {
		// TODO Auto-generated method stub
		Doctor doctor=entityManager.find(Doctor.class, doctorId);
		return doctor;
	}

	@Override
	public String UpdateDoctor(Doctor doctor) {
		// TODO Auto-generated method stub
		System.out.println("Hello i am  inide update server method");
		entityManager.merge(doctor);
		return "Doctor Record Updated...";
	}

	@Override
	public String DeleteDoctorDetails(Doctor doctor) {
		// TODO Auto-generated method stub
		Doctor doctorD=entityManager.find(Doctor.class, doctor.getDoctorId());
		if(doctorD!=null) {
			entityManager.remove(doctorD);
			return "Employ Record Deleted...";
		}else {
			return "Doctor with doctor Id"+doctor.getDoctorId()+"is not found or already removed";
		}
			
		
	}

	@Override
	public List<Patient> showPatient() {
		System.out.println("Entit Manager is  " +entityManager);
		Query query = entityManager.createQuery("SELECT p FROM Patient p");
	    return (List<Patient>) query.getResultList();
	}

	@Override
	public Patient SearchPatient(String patientId) {
		Patient patient=entityManager.find(Patient.class, patientId);
		if(patient!=null) {
			return patient;
		}else {
			return null;
		}	
	}

	@Override
	public String AddPatient(Patient patient) {
		// TODO Auto-generated method stub
		entityManager.persist(patient);
		return "Patient Added Sucessfully...";
	}

	@Override
	public String DeletePatientDetails(Patient Patient) {
		Patient patientD=entityManager.find(Patient.class, Patient.getPatientId());
		if(patientD!=null) {
			entityManager.remove(patientD);
			return "Employ Record Deleted...";
		}else {
			return "Doctor with doctor Id"+Patient.getPatientId()+"is not found or already removed";
		}
	}

	@Override
	public String UpdatePatient(Patient patient) {
		System.out.println("Hello i am  inside update server method");
		entityManager.merge(patient);
		return "Patient Record Updated...";
		
	}

	@Override
	public Patient GetUser(Patient patient) {
		System.out.println(patient);
		Query query = entityManager.createQuery("SELECT p FROM Patient p WHERE p.email = :email AND p.password = :password");
		query.setParameter("email", patient.getEmail());
		query.setParameter("password", patient.getPassword());
		return (Patient) query.getSingleResult();
		
	}

	
    
    

}
