/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBConnection.DBConnect;
import Model.ProfileUserModel;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class ProfileUserDAO {

    Connection conn;

    public ProfileUserDAO() {
        try {
            conn = DBConnect.connect();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProfileUserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ProfileUserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ProfileUserModel getProfileUSer(int idUser) {
        String query = "SELECT  [userName], [email], [image], [phone], [brithday], [gender], [point], [numberTourTaken],[dateLogin],[description] FROM Users where userId=?";
        ProfileUserModel user = null;
        try ( PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setInt(1, idUser);
            try ( ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    String userName = rs.getString("userName");
                    String email = rs.getString("email");
                    String image = rs.getString("image");
                    String phone = rs.getString("phone");
                    Date birthday = rs.getDate("brithday");
                    String gender = rs.getString("gender");
                    int point = rs.getInt("point");
                    int numberTourTaken = rs.getInt("numberTourTaken");
                    Date dateLogin = rs.getDate("dateLogin");
                    String description = rs.getString("description");
                    user = new ProfileUserModel(userName, email, image, phone, birthday, gender, point, numberTourTaken, dateLogin, description);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;

    }

    public void editProfile(ProfileUserModel profileUser) {
        
        
    }
}
