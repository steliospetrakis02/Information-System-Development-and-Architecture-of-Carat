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

        String sql = "select company_name from client_";
        Connection con = null;
        Data_connection db = new Data_connection();

        try {
            
            con = db.get_connection();
            PreparedStatement stmt = con.prepareStatement(sql);
            // no need of setting parameters
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                                
                users.add(rs.getString("company_name"));
  
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
                
                User usr = new User(rs.getString("email"),rs.getString("passwrd"),rs.getString("personal_name"));
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
    public User findUser2(String personal_name) throws Exception {
		
		Data_connection db = new Data_connection();
		
		String sql = "select * from user_ where user_.personal_name =?";
		try {
           
			con = db.get_connection();
            PreparedStatement stmt = con.prepareStatement(sql);
           
			stmt.setString(1, personal_name);
			ResultSet rs = stmt.executeQuery();

			
			if (!rs.next()) {
                //user does not exist
				rs.close();
                stmt.close();
                db.close();
				throw new Exception("User not found");
                
            }

			else{
                
                User usr = new User(rs.getString("email"),rs.getString("passwrd"),rs.getString("personal_name"));
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

        public void addClient(String email , String password, String username ) throws Exception{

            Data_connection dc = new Data_connection();
            String sql = "select * from client_ where client_.email = ? ";
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
                    
                    
                    String sql3 = "INSERT INTO client_ " 
                    + " (campaign,Company_name,email) VALUES (?, ? ,?);";
                    PreparedStatement stmt3 = con.prepareStatement(sql3);
    
                    stmt3.setString(1, null);
                    stmt3.setString(2, username.toUpperCase());
                    stmt3.setString(3, email);
    
                    stmt3.executeUpdate();
                    
    
    
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
        
        

 
public static void main(String[] args) throws Exception {
    User_service myUser_Service = new User_service();
    List<String> users = myUser_Service.getUsers(); 

    myUser_Service.addClient("test@", "test", "test");
 /*    for(String user: users) { 
    User thisUser = myUser_Service.findUser(user);
    System.out.println(user);
        }*/
    System.out.println(users);
}

}
