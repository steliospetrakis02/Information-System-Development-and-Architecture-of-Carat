
import java.util.*;
import java.sql.*;

public class User_service {
    private Connection con = null;
    List <User> user = new ArrayList<User>();

    public boolean authenticate(String email , String password){
        
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
            
            
        }
        return false;
        

        
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
                
                User usr = new User(rs.getString("firstname"),rs.getString("lastname"),rs.getString("email") ,rs.getString("username"), rs.getString("password"));
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
    public void addUser(String email , String password, String sex , String elname , String efname) throws Exception{
        
        try {
            findUser(email);
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
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
                    throw new Exception(e.getMessage());
                }
    
            }
            

        }
        
    




    //debuging purpose
public static void main(String[] args) throws Exception {
    
    User_service usr_serv = new User_service();
    String client_email="Cosmotee@gmail.com";
    String password = "123456789";
    System.out.println(usr_serv.authenticate(client_email, password));
    String sex="male";
    String elname="Cosmote";
    String efname = "AE";
    usr_serv.addUser(client_email, password,sex,elname,efname);
}

}
