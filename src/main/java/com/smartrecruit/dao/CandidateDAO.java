package com.smartrecruit.dao;

import com.smartrecruit.model.Candidate;
import com.smartrecruit.util.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CandidateDAO {
    public List<Candidate> getAllCandidates() {
        List<Candidate> candidates = new ArrayList<>();
        String sql = "SELECT * FROM candidat";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Candidate candidate = new Candidate();
                candidate.setId(rs.getInt("id"));
                candidate.setNom(rs.getString("nom"));
                candidate.setPrenom(rs.getString("prenom"));
                candidate.setEmail(rs.getString("email"));
                candidate.setTelephone(rs.getString("telephone"));
                candidate.setDateInscription(rs.getTimestamp("date_inscription"));
                candidates.add(candidate);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return candidates;
    }

    public boolean createCandidate(Candidate candidate) {
        String sql = "INSERT INTO candidat (nom, prenom, email, telephone) VALUES (?, ?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, candidate.getNom());
            stmt.setString(2, candidate.getPrenom());
            stmt.setString(3, candidate.getEmail());
            stmt.setString(4, candidate.getTelephone());

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}