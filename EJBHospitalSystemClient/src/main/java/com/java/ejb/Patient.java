package com.java.ejb;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patient_master")
public class Patient implements Serializable{
	
	@Id
	@Column(name="pid")
	private String patientId;
	
	@Column(name="name")
	private String name;
	
	@Column(name="age")
	private int age;
	
	@Column(name="weight")
	private int weight;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="address")
	private String address;
	
	@Column(name="phoneno")
	private String phoneno;
	
	@Column(name="disease")
	private String disease;
	
	@Column(name="doctor_id")
	private String doctorId;
	
	@Column(name="password")
	private String password;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="Status")
	private String status;
	
	@Column(name="Otp")
	private String otp;

	public String getPatientId() {
		return patientId;
	}

	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(String doctorId) {
		this.doctorId = doctorId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Patient(String patientId, String name, int age, int weight, String gender, String address, String phoneno,
			String disease, String doctorId, String password, String email, String status, String otp) {
		super();
		this.patientId = patientId;
		this.name = name;
		this.age = age;
		this.weight = weight;
		this.gender = gender;
		this.address = address;
		this.phoneno = phoneno;
		this.disease = disease;
		this.doctorId = doctorId;
		this.password = password;
		this.email = email;
		this.status = status;
		this.otp = otp;
	}

	@Override
	public String toString() {
		return "Patient [patientId=" + patientId + ", name=" + name + ", age=" + age + ", weight=" + weight
				+ ", gender=" + gender + ", address=" + address + ", phoneno=" + phoneno + ", disease=" + disease
				+ ", doctorId=" + doctorId + ", password=" + password + ", email=" + email + ", status=" + status
				+ ", otp=" + otp + "]";
	}

	
	
}
