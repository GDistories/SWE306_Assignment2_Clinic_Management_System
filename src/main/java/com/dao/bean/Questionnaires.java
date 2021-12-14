package com.dao.bean;

public class Questionnaires {
	private int id, patient_id;
	private String choice, vaccinated, symptoms,clusters,close_contact;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}
	public String getChoice() {
		return choice;
	}
	public void setChoice(String choice) {
		this.choice = choice;
	}
	public String getVaccinated() {
		return vaccinated;
	}
	public void setVaccinated(String vaccinated) {
		this.vaccinated = vaccinated;
	}
	public String getSymptoms() {
		return symptoms;
	}
	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}
	public String getClusters() {
		return clusters;
	}
	public void setClusters(String clusters) {
		this.clusters = clusters;
	}
	public String getClose_contact() {
		return close_contact;
	}
	public void setClose_contact(String close_contact) {
		this.close_contact = close_contact;
	}
	
}
