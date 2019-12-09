/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uncc.nbad;

/**
 *
 * @author LeeS
 */
import java.io.Serializable;

public class User implements Serializable {

    private String fullName;
    private String rank;
    private String email;
    private String password;
    private String userType;
    private String userBio;

    public User() {
        fullName = "";
        rank = "";
        email = "";
        password = "";
        userType = "";
        userBio = "";
    }

    public User(String firstName, String lastName, String email, String password) {
        this.fullName = fullName;
        this.rank = rank;
        this.email = email;
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rnak) {
        this.rank = rank;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getUserType() {
        return userType;
    }
    
    public void setUserType(String userType) {
        this.userType = userType;
    }
    public String getuserBio() {
        return userBio;
    }
    
    public void setUserBio(String userBio) {
        this.userBio = userBio;
    }
}