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

    public ProfileUserModel getProfileUSer(int isAdmin) {
        String query = "SELECT  [userName], [email], [image], [phone], [brithday], [gender], [point], [numberTourTaken],[dateLogin],[address],[description] FROM Users where isAdmin=?";
        ProfileUserModel user = null;
        try ( PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setInt(1, isAdmin);
            try ( ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    String userName = rs.getString("userName");
                    String email = rs.getString("email");
                    String image = rs.getString("image");
                    String phone = rs.getString("phone");
                    Date birthday = rs.getDate("brithday");
                    int gender = rs.getInt("gender");
                    int point = rs.getInt("point");
                    int numberTourTaken = rs.getInt("numberTourTaken");
                    Date dateLogin = rs.getDate("dateLogin");
                    String address = rs.getString("address");
                    String description = rs.getString("description");
                    user = new ProfileUserModel(userName, email, image, phone, birthday, gender, point, numberTourTaken, dateLogin, address, description);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;

    }

    public ProfileUserModel updateProfile(ProfileUserModel profileUser, int isAdmin) {
        int count = 0;
        String sql = "UPDATE Users "
                + "SET userName = ?, "
                + "email = ?, "
                + "image = ?, "
                + "phone = ?, "
                + "brithday = ?, "
                + "description = ?,"
                + "gender = ?,"
                + "address = ? "
                + "WHERE isAdmin = ?";

        try ( PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, profileUser.getUserName());
            ps.setString(2, profileUser.getEmail());
            ps.setString(3, profileUser.getImage());
            ps.setString(4, profileUser.getPhone());
            ps.setDate(5, profileUser.getBirthday());
            ps.setString(6, profileUser.getDescription());
            ps.setInt(7, profileUser.getGender());
            ps.setString(8, profileUser.getAddress());
            ps.setInt(9, isAdmin);
            count = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProfileUserDAO.class.getName()).log(Level.SEVERE, "Update failed", ex);
        }
        return (count == 0) ? null : profileUser;
    }

}
