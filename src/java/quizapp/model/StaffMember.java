package quizapp.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StaffMember {
    
    /*
    methods here for getting and setting staff details from database
    */

    public boolean isValidStaff(String staffID) {
        
        boolean isStaff = false;
        
        String driverName = "com.mysql.jdbc.Driver";
        
        String localUrl = "jdbc:mysql://localhost:3306/";
        String localdb = "quizapp";
        String luserID = "root";
        //craig's local db
        String lpassword = "abc";
        
        try {
            Class.forName(driverName);
        } catch (ClassNotFoundException e) {
        }
        
        Connection connection = null;
        
        String getStaffID = "SELECT staff_id_number FROM staff WHERE staff_id_number=" + staffID;
        
        try {
            connection = DriverManager.getConnection(localUrl + localdb, luserID, lpassword);
            Statement statement = connection.createStatement();
            
            ResultSet resultSet = statement.executeQuery(getStaffID);
            
            if(resultSet.next()) {
                isStaff = true;
                System.out.println("LoggedIn");
            } else {
                System.out.println("Failed to login");
                isStaff = false;
            }
            
            connection.close();
        } catch (SQLException e) {
            e.getMessage();
        }
        
        return isStaff;
    }  
}