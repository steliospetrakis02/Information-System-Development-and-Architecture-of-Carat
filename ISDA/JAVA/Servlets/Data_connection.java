package Servlets;

import java.io.*;
import java.text.*;
import java.util.*;
import java.sql.*;
public class Data_connection {

    private String errorMessages = "";
    private Connection con = null;

    

    public void open() throws SQLException {
        try {

            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e1) {
          errorMessages = "MySQL Driver error: <br>" + e1.getMessage();
          throw new SQLException(errorMessages);
        }
    
        try {
          con = DriverManager.getConnection(
              "jdbc:mysql://195.251.249.131:3306/ismgroup60",
              "ismgroup60", "82gyrs");
                           
        } catch (Exception e2) {
          errorMessages = "Could not establish connection with the Database Server: <br>"
              + e2.getMessage();
          con = null;
          throw new SQLException(errorMessages);
        }
    
      }

      public Connection get_con(){
        return con;

      }
}
