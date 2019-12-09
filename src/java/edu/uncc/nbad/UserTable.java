package edu.uncc.nbad;

import java.io.*;
import java.util.*;
import java.sql.*;
//import murach.business.User;
import sun.reflect.generics.reflectiveObjects.NotImplementedException;

public class UserTable {
    
    static String url = "jdbc:mysql://localhost:3306/shop";
    static String username = "user";
    static String password = "123";
    
    static Connection connection = null;
    static PreparedStatement selectProduct = null;
    static ResultSet resultset = null;
	
	//Static initializer
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
            System.exit(1);
        }
    }
    
    static {
        try {
            connection = DriverManager.getConnection (url, username, password);
        }
        catch (SQLException e) {
            for (Throwable t : e)
                t.printStackTrace();
        }
    }
    
    public static void addRecord(User user) throws IOException {
        try {
            String preparedSQL = "INSERT INTO shop.users (fullName,rank,email,password,userType,userBio) VALUES (?,?,?,?,?,?);";
            selectProduct = connection.prepareStatement(preparedSQL);
            selectProduct.setString(1, user.getFullName());
            selectProduct.setString(2, user.getLastName());
            selectProduct.setString(3, user.getEmail());
            selectProduct.setString(4, user.getPassword());
            selectProduct.executeUpdate();
        }
        catch (SQLException e) {
            for (Throwable t : e)
                t.printStackTrace();
        }

    }
    //getUser using email address
    public static User getUser(String emailAddress) throws IOException {
        User user = new User();
        boolean sqlWork = false;
        try {
            String preparedSQL = "SELECT firstName,lastName,email,password FROM shop.users WHERE email = ?;";
            selectProduct = connection.prepareStatement(preparedSQL);
            selectProduct.setString(1, emailAddress);
            resultset = selectProduct.executeQuery();
            
            while (resultset.next()) {
                user.setFirstName(resultset.getString("firstName"));
                user.setLastName(resultset.getString("lastName"));
                user.setEmail(resultset.getString("email"));
                user.setPassword(resultset.getString("password"));
            }
            sqlWork = true;
        }
        catch (SQLException e) {
            for (Throwable t : e)
                t.printStackTrace();
        }
        if (!sqlWork) {
            user = null;
        }
        return user;

    }
    //getUser ArrayList
    public static ArrayList<User> getUsers() throws IOException {
        ArrayList<User> users = new ArrayList<>();
        boolean sqlWork = false;
        try {
            String preparedSQL = "SELECT firstName,lastName,email,password FROM shop.users;";
            selectProduct = connection.prepareStatement(preparedSQL);
            resultset = selectProduct.executeQuery();
            
            while (resultset.next()) {
                User user = new User(resultset.getString("firstName"),resultset.getString("lastName"),resultset.getString("email"),resultset.getString("password"));
                users.add(user);
            }
            sqlWork = true;
        }
        catch (SQLException e) {
            for (Throwable t : e)
                t.printStackTrace();
        }
        if (!sqlWork) {
            users = null;
        }
        return users;
    }
    //getUser HashMap
    public static HashMap<String, User> getUsersMap() throws IOException {
        HashMap<String, User> users = new HashMap<String, User>();
        boolean sqlWork = false;
        try {
            String preparedSQL = "SELECT firstName,lastName,email,password FROM shop.users;";
            selectProduct = connection.prepareStatement(preparedSQL);
            resultset = selectProduct.executeQuery();
            
            while (resultset.next()) {
                String email = resultset.getString("email");
                User user = new User(resultset.getString("firstName"),resultset.getString("lastName"),email,resultset.getString("password"));
                users.put(email, user);
            }
            sqlWork = true;
        }
        catch (SQLException e) {
            for (Throwable t : e)
                t.printStackTrace();
        }
        if (!sqlWork) {
            users = null;
        }
        return users;
    }
}
