package com.java.ejb;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.faces.context.FacesContext;
import javax.naming.NamingException;

public class DoctorEjbImpl {
	
	public List<Doctor> showDoctorEjb() throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		return remote.showDoctor();
	}
	
	public String AddDoctor(Doctor doctor) throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		 remote.AddDoctor(doctor);
		 return"DoctorShow.jsp?faces-redirect=true";
	}
	
	public String ShowDoctorDetails(Doctor doctoredit) throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		 Doctor doctorUp=remote.SearchDoctor(doctoredit.getDoctorId());
		Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		sessionMap.put("editdoctor", doctorUp);
		 return"UpdateDoctor.jsp?faces-redirect=true";
	}
	
	public String SearchDoctor(String doctorId) throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		
		 Doctor doctor=remote.SearchDoctor(doctorId);
		 if(doctor!=null) {
			 Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
				sessionMap.put("doctorr", doctor);
			 return"SearchDoctorShow.jsp?faces-redirect=true";
		 }else {
			return"Record Not Found...."; 
		 }	 
	}
	
	
	public String UpdateDoctor(Doctor doctor) throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		System.out.println("Hello i am inside client update method...");
		 remote.UpdateDoctor(doctor);
		 return"DoctorShow.jsp?faces-redirect=true";
	}
	
	public String DeleteDoctorDetails(Doctor doctor) throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		 remote.DeleteDoctorDetails(doctor);
		 return"DoctorShow.jsp?faces-redirect=true";
	}
	
//	Patient method start from here
	
	public List<Patient> showPatientEjb() throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		return remote.showPatient();
	}
	
	
	
	public String SearchPatient(String patientId) throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		
		 Patient patientt=remote.SearchPatient(patientId);
		 if(patientt!=null) {
			 Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
				sessionMap.put("patientt", patientt);
			 return"SearchPatientShow.jsp?faces-redirect=true";
		 }else {
			return"Record Not Found..."; 
		 }	 
	}
	
	
	public String AddPatient(Patient patient) throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		String otp=Integer.toString(GenerarteOtp.generateOtp());
		patient.setOtp(otp);
		String pwd=EncryptPassword.getCode(patient.getPassword());
		patient.setPassword(pwd);
		System.out.println(patient);
		String body = "Welcome to Mr/Miss " + patient.getName() + "\r\n" + "Your OTP Generated Successfully"+"And send it"
				+patient.getEmail() + "\r\n" + "OTP is " + otp +"you are currently having a serious disease "+patient.getDisease();

		MailSend.mailSend(patient.getEmail(), "Otp Sent Successfully...", body);
		 remote.AddPatient(patient);
		 return"VerifyOtp.jsp?faces-redirect=true";
	}
	
	
	public String DeletePatientDetails(Patient patient) throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		 remote.DeletePatientDetails(patient);
		 return"PatientShow.jsp?faces-redirect=true";
	}
	
	public String ShowPatientDetails(Patient patientedit) throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		
		 Patient patientUp=remote.SearchPatient(patientedit.getPatientId());
		 if(patientUp!=null) {
			 Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
				sessionMap.put("patientUp", patientUp);
				return"UpdatePatient.jsp?faces-redirect=true";
		 }else {
			return"Record Not Found..."; 
		 }	 
		
		
	}
	
	public String VerifyOtp(Patient patient) throws NamingException {
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		
		Patient pt=remote.SearchPatient(patient.getPatientId());
		
		System.out.println(pt);
		 
		 if(pt.getOtp().equals(patient.getOtp()) && pt != null) {
			 System.out.println("email is isnide client if"+ pt.getEmail());
			 return "Login.jsp?faces-redirect=true";
		 }else {
			 System.out.println("Kyun nahi ho ri padhai kyun nahi chal raha code...");
			 return "VerifyOtp.jsp?faces-redirect=true";
		 }	 
	}
	
	public String Login(Patient patient) throws NamingException {
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		String pwd=EncryptPassword.getCode(patient.getPassword()).trim();
		System.out.println("PassWord is"+pwd);
		patient.setPassword(pwd);
		
		System.out.println(patient);
		Patient pt=remote.SearchPatient(patient.getPatientId());
		if(pt!=null) {
			return"Home.jsp?faces-redirect=true";
		}else {
			return "Login.jsp?faces-redirect=true"; 
		}
	}
	
	
	public String UpdatePatient(Patient patient) throws ClassNotFoundException, SQLException, NamingException{
		DoctorBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
		System.out.println("Hello i am inside client update method...");
		 remote.UpdatePatient(patient);
		 return"PatientShow.jsp?faces-redirect=true";
	}
	

}
