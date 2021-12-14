package com.dao;

import com.dao.bean.Questionnaires;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class QuestionnairesDao {
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
	
	public static int save(Questionnaires q)
	{
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into questionnaires (patient_id, choice, vaccinated, symptoms, clusters, close_contact) values (?,?,?,?,?,?)");
			pst.setInt(1, q.getPatient_id());
			pst.setString(2, q.getChoice());
			pst.setString(3, q.getVaccinated());
			pst.setString(4, q.getSymptoms());
			pst.setString(5, q.getClusters());
			pst.setString(6, q.getClose_contact());
			
			status = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static Questionnaires getQuestionnairesByPatientId(int patient_id)
	{
		Questionnaires q = null;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from questionnaires where patient_id=?");
			pst.setInt(1, patient_id);
			ResultSet rs = pst.executeQuery();
			q = new Questionnaires();
			while(rs.next())
			{
				q.setId(rs.getInt("id"));
				q.setPatient_id(rs.getInt("patient_id"));
				q.setChoice(rs.getString("choice"));
				q.setVaccinated(rs.getString("vaccinated"));
				q.setSymptoms(rs.getString("symptoms"));
				q.setClusters(rs.getString("clusters"));
				q.setClose_contact(rs.getString("close_contact"));
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		return q;
	}
	
}
