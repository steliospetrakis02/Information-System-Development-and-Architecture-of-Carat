package test;
import java.util.*;
import java.sql.*;

public class User_service {
    private Connection con = null;
    List <User> user = new ArrayList<User>();

    public boolean authenticate(String email , String password) throws Exception{
        
        try {
            String sql = "select * from User_ where User_.passwrd =?and User_.email=?";
            Data_connection dc = new Data_connection();
            con = dc.get_connection();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, password);
            stmt.setString(2, email);
            ResultSet rs = stmt.executeQuery();
            
            if(!rs.next()){
                //user does not exist
                return false;
            }
            else{
                
                return true;
            }
            

        } catch (Exception e) {
            throw new Exception(e.getMessage());
            
        }
        
    
        
    }

    public List<String> getUsers() throws Exception {

        List<String> users = new ArrayList<String>();

        String sql = "SELECT * FROM user_;";
        Connection con = null;
        Data_connection db = new Data_connection();

        try {
            
            con = db.get_connection();
            PreparedStatement stmt = con.prepareStatement(sql);
            // no need of setting parameters
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                                
                users.add(rs.getString("personal_name"));
  
            }

            rs.close();
            stmt.close();
            db.close();

            return users;

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {

            try {
                db.close();
            } catch (Exception e) {
                
            }

        }

    } 

    public User findUser(String username) throws Exception {
		
		Data_connection db = new Data_connection();
		
		String sql = "select * from user_ where user_.email =?";
		try {
           
			con = db.get_connection();
            PreparedStatement stmt = con.prepareStatement(sql);
           
			stmt.setString(1, username);
			ResultSet rs = stmt.executeQuery();

			
			if (!rs.next()) {
                //user does not exist
				rs.close();
                stmt.close();
                db.close();
				throw new Exception("User not found");
                
            }

			else{
                
                User usr = new User(rs.getString("email"),rs.getString("password"),rs.getString("personal_name"));
                return usr;
			}

		} catch (Exception e) {
            throw new Exception(e.getMessage());
            
		}
		finally{
			db.close();
			//stmt.close();
		}
    }

    //needs find user
    public void addUser(String email , String password, String username ) throws Exception{

            Data_connection dc = new Data_connection();
            String sql = "select * from User_ where User_.email = ? ";
            try {
               
                con = dc.get_connection();
                PreparedStatement stmt = con.prepareStatement(sql);
               
                stmt.setString(1, email);
               
                
                ResultSet rs = stmt.executeQuery();
    
                if (rs.next()) {
                    //user exist
                    dc.close();
                    stmt.close();
                    throw new Exception("Sorry, username or email already registered");
                    
                }
                //user does not exist
                else{
                    
                    String sql2 = "INSERT INTO User_ " 
                    + " (email, passwrd, personal_name) VALUES (?, ? ,?);";
                    PreparedStatement stmt2 = con.prepareStatement(sql2);
    
                    stmt2.setString(1, email);
                    stmt2.setString(2, password);
                    stmt2.setString(3, username);
    
                    stmt2.executeUpdate();
                    stmt2.close();
                    dc.close();
    
    
                }
            
            }
            catch (Exception e) {
                throw new Exception(e.getMessage());
    
            }
            finally{
                dc.close();
                //stmt.close();
            }
        }
        
        

    //debuging purpose
public static void main(String[] args) throws Exception {
    
    User_service usr_serv = new User_service();
   String client_email="Cosmoteee@gmail.com";
   String password = "12345678";
   //System.out.println(usr_serv.authenticate(client_email, password));
   
   String elname="Cosmote";
   
   usr_serv.addUser(client_email, "123",elname);
   System.out.println(usr_serv.getUsers()); 
}

}
