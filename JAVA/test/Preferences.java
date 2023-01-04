package test;
import java.util.*;
import java.sql.*;
import java.util.List;



public class Preferences {
    
    //private final String userQuery = "select username from users where username =?  and password =?";
    
    PreparedStatement pre = null;
    private Connection con = null;

    private ResultSet rs = null, rs1 = null;
   // private final static String staffQuery = "select * from Preferences";
    private List<String> client_pref_res = new ArrayList<>();
    private List<String> pref_ids = new ArrayList<>();


 
    public String getClientPreference_id(String email) throws SQLException{
        Data_connection dc = new Data_connection();
        con = dc.get_connection();
        String sql2 = "Select preferences_id from Preferences where preferences.email=?";
        pre = con.prepareStatement(sql2);
        pre.setString(1, email);
        rs = pre.executeQuery();
        String pref_id="";
        while(rs.next()){ 
            pref_id= rs.getString("preferences_id");
           
        }
        
 
        
        return pref_id;
    }
    
    public List<String> get_Client_Preferences(String email) throws SQLException{
        Data_connection dc = new Data_connection();
        con = dc.get_connection();
        String sql2 = "Select indicator1,indicator2,indicator3,indicator4 from Preferences where email=?";
        pre = con.prepareStatement(sql2);
        pre.setString(1, email);
        rs = pre.executeQuery();

        while (rs.next()){

         // String email = rs1.getString("email");
          String ind1 = rs.getString("indicator1");
          String ind2 = rs.getString("indicator2");
          String ind3 = rs.getString("indicator3");
          String ind4 = rs.getString("indicator4");
         // String stat_indicator1 = rs1.getString("stat_indicator1");
         // String stat_indicator2 = rs1.getString("stat_indicator2");


         // client_pref_res.add(email);
          client_pref_res.add(ind1);
          client_pref_res.add(ind2);
          client_pref_res.add(ind3);
          client_pref_res.add(ind4);
        //  client_pref_res.add(stat_indicator1);
         // client_pref_res.add(stat_indicator2);
        
        } 

        return client_pref_res;
    }
    public Integer getLast_global_report_id() throws SQLException{
        Data_connection dc = new Data_connection();
        con = dc.get_connection();
        String sql2 = "Select preferences_id from Preferences ";
        pre = con.prepareStatement(sql2);
        rs = pre.executeQuery();
        String preferences_id="";
        while(rs.next()){ 
            preferences_id= rs.getString("preferences_id");
          
        }
 
        return Integer.parseInt(preferences_id);
    }
    public boolean check_if_customer_is_new(String email){
        String sql = "SELECT * FROM preferences WHERE email=?;";
        Data_connection db = new Data_connection();

		try {
			// open connection and get Connection object
			con = db.get_connection();

			PreparedStatement stmt = con.prepareStatement(sql);

			// set values to parameter
			stmt.setString(1, email);

			// execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
			ResultSet rs = stmt.executeQuery();
            if(!rs.next()){
                return true;
            }
            else{
                return false;
            }
			

		} catch (Exception e) {

			

                } finally {

			try {
			  
			} catch (Exception e) {

			}

		}
        return false;
        
        
    }

    public void set_Client_Preferences(String email , String ind1, String ind2 , String ind3, 
                                        String ind4) throws SQLException {
                                    
        
        
                              
        Data_connection dc = new Data_connection();
        con = dc.get_connection();
                                            
        if(check_if_customer_is_new(email)==true) {
            //this customer needs new object report
            int pref_id=getLast_global_report_id()+1;
            String cast_id= Integer.toString(pref_id);
            String sql="insert into Preferences (indicator1, indicator2, indicator3, indicator4,email, preferences_id) values (?,?,?,?,?,?);";
            PreparedStatement preparedStmt = con.prepareStatement(sql);
            preparedStmt.setString (1, ind1);
            preparedStmt.setString (2, ind2);
            preparedStmt.setString (3, ind3);
            preparedStmt.setString (4, ind4);
            preparedStmt.setString (5, email);
            preparedStmt.setString (6, cast_id);
       

        preparedStmt.execute();
        }
        else{
        //just update
           
     
        String update = "Update Preferences SET indicator1=?,indicator2=?,indicator3=?,indicator4=? WHERE email=?";
       

        PreparedStatement preparedStmt = con.prepareStatement(update);
        preparedStmt.setString (1, ind1);
        preparedStmt.setString (2, ind2);
        preparedStmt.setString (3, ind3);
        preparedStmt.setString (4, ind4);
        preparedStmt.setString (5, email);
       

        preparedStmt.execute();

        }
    }
   
    //debuging purpose
    public static void main(String[] args) throws SQLException {
        
        

        Preferences pref = new Preferences();
        //pref.set_Client_Preferences("AEGEAN@hotmail.com","Insertions","Weeks(4x)","SOV","Reach 1+");
        //System.out.println(pref.get_Client_Preferences("VODAFONE@hotmail.com"));
        //System.out.println(pref.getClientList_of_Pref_ids("AEGEAN@hotmail.com"));
      // System.out.println(pref.getClientPreference_id());
      pref.set_Client_Preferences("amazon@hotmail.com", "eee", null, null, null);
    }

    }
