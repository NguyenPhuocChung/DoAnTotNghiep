/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author nguye
 */
public class ProfileUserModel {

    private String userName;
    private String email;
    private String image;
    private String phone;
    private Date birthday;
    private String gender;
    private int point;
    private int numberTourTaken;
    private Date dateLogin;
    private String description;

    public ProfileUserModel(String userName, String email, String image, String phone, Date birthday, String gender, int point, int numberTourTaken, Date dateLogin,String description) {
        this.userName = userName;
        this.email = email;
        this.image = image;
        this.phone = phone;
        this.birthday = birthday;
        this.gender = gender;
        this.point = point;
        this.numberTourTaken = numberTourTaken;
        this.dateLogin = dateLogin;
        this.description=description;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public int getNumberTourTaken() {
        return numberTourTaken;
    }

    public void setNumberTourTaken(int numberTourTaken) {
        this.numberTourTaken = numberTourTaken;
    }

    public Date getDateLogin() {
        return dateLogin;
    }

    public void setDateLogin(Date dateLogin) {
        this.dateLogin = dateLogin;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
