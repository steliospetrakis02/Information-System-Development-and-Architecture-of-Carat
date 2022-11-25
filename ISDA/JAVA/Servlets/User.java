package Servlets;
import java.util.*;
import java.sql.*;

public class User {
    private Statement stmt1 = null;
    private PreparedStatement stmt = null;
    Connection con = null;
    List <User> user = new ArrayList<User>();

    public User(String string, String string2) {
    }
    public User(){

    }
    public boolean authenticate(String email , String password){
        
        try {
            String sql = "select * from User_ where User_.passwrd =?and User_.email=?";
            Data_connection dc = new Data_connection();
            con = dc.get_connection();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, password);
            stmt.setString(2, email);
            ResultSet rs = stmt.executeQuery();
            
            
            while (rs.next()) {
                user.add(new User(rs.getString("email"),rs.getString("passwrd")));
            }

            stmt.close();
            dc.close();
            
            if(user.size() < 1){
                //user does not exist
                
                return false;
            }
            else{
                
                return true;
            }
            

        } catch (Exception e) {
            
            
        }
        return false;
        

        
    }
    public void addUser(String email , String password, String sex , String elname , String efname) throws Exception{
        
        if(authenticate(email, password)==(true)){
            //user already exist
            System.out.println("User already exist");
            

        }
        else{
            String sql = "INSERT INTO User_ " 
            + " (email, passwrd, sex, elname, efname) VALUES (?, ? ,?, ?, ?);";
            Data_connection dc = new Data_connection();
            try {

                con = dc.get_connection();
                PreparedStatement stmt = con.prepareStatement(sql);
                // setting parameters
                stmt.setString(1, email);
                stmt.setString(2, password);
                stmt.setString(3, sex);
                stmt.setString(4, elname);
                stmt.setString(5, efname);
    
                stmt.executeUpdate();
                stmt.close();
                dc.close();
                
            } catch (Exception e) {
                throw new Exception(e.getMessage());
            } finally {
    
                try {
                    dc.close();
                } catch (Exception e) {
                    
                }
    
            }
            
            

        }
        
    }




    //debuging purpose
public static void main(String[] args) throws Exception {
    
    User usr = new User();
    String client_email="Cosmotee@gmail.com";
    String password = "12345678";
    System.out.println(usr.authenticate(client_email, password));
    String sex="male";
    String elname="Cosmote";
    String efname = "AE";
    usr.addUser(client_email, password,sex,elname,efname);
}

}
