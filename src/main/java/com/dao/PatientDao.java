package com.dao;

import com.dao.bean.Patient;
import com.dao.bean.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PatientDao {
	public static Connection getConnection() {
		
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/assignment2", "root", "200186");
		}catch (Exception e) {
			System.out.println(e);
		}	
		return con;
	}
	
	public static int save(Patient p)
	{
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into patient (IC, patient_name, gender, birthday, phone_number, date) values (?,?,?,?,?,?)");
			pst.setString(1, p.getIC());
			pst.setString(2, p.getPatient_name());
			pst.setString(3, p.getGender());
			pst.setString(4, p.getBirthday());
			pst.setString(5, p.getPhone_number());
			pst.setString(6, p.getDate());
			
			status = pst.executeUpdate();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int update(Patient p)
	{
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update patient set IC=?, patient_name=?, gender=?, birthday=?, phone_number=?, date=?, prescriptions=? where patient_id=?");
			pst.setString(1, p.getIC());
			pst.setString(2, p.getPatient_name());
			pst.setString(3, p.getGender());
			pst.setString(4, p.getBirthday());
			pst.setString(5, p.getPhone_number());
			pst.setString(6, p.getDate());
			pst.setString(7, p.getPrescriptions());
			pst.setInt(8, p.getPatient_id());
			
			status = pst.executeUpdate();
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static int delete(Patient p) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("delete from patient where patient_id=?");
			pst.setInt(1, p.getPatient_id());
			
			status = pst.executeUpdate();
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return status;	
	}
	
	public static List<Patient> getAllPatients(){
		List<Patient> list = new ArrayList<Patient>();
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from patient");
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Patient p = new Patient();
				p.setPatient_id(rs.getInt("patient_id"));
				p.setIC(rs.getString("IC"));
				p.setPatient_name(rs.getString("patient_name"));
				p.setGender(rs.getString("gender"));
				p.setBirthday(rs.getString("birthday"));
				p.setDate(rs.getString("date"));
				p.setPrescriptions(rs.getString("prescriptions"));
				p.setPhone_number(rs.getString("phone_number"));
				
				list.add(p);
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static Patient getPatientByIC(String IC)
	{
		Patient p = null;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from patient where IC=?");
			pst.setString(1, IC);
			ResultSet rs = pst.executeQuery();
			p = new Patient();
			while(rs.next()) {
				p.setPatient_id(rs.getInt("patient_id"));
				p.setIC(rs.getString("IC"));
				p.setPatient_name(rs.getString("patient_name"));
				p.setGender(rs.getString("gender"));
				p.setBirthday(rs.getString("birthday"));
				p.setDate(rs.getString("date"));
				p.setPrescriptions(rs.getString("prescriptions"));
				p.setPhone_number(rs.getString("phone_number"));
			}
			
		}catch (Exception e) {
			System.out.println(e);
		}
		return p;
	}
	
	public static Patient getPatientByPatientId(int patient_id)
	{
		Patient p = null;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from patient where patient_id=?");
			pst.setInt(1, patient_id);
			ResultSet rs = pst.executeQuery();
			p = new Patient();
			while(rs.next()) {
				p.setPatient_id(rs.getInt("patient_id"));
				p.setIC(rs.getString("IC"));
				p.setPatient_name(rs.getString("patient_name"));
				p.setGender(rs.getString("gender"));
				p.setBirthday(rs.getString("birthday"));
				p.setDate(rs.getString("date"));
				p.setPrescriptions(rs.getString("prescriptions"));
				p.setPhone_number(rs.getString("phone_number"));
			}
			
		}catch (Exception e) {
			System.out.println(e);
		}
		return p;
	}
}











































