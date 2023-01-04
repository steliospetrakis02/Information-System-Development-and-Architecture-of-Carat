package test;
import java.util.*;
import java.sql.*;

public class Goals {
    double goal_avetage_1;
    double goal_avetage_2;
    double goal_avetage_3;
    private Statement st = null;
    private Connection con=null;
    PreparedStatement pre = null;
    private static List<String> list_of_ids= new ArrayList<>();

    private ResultSet rs = null, rs1 = null;

        
    private List<String> client_goals= new ArrayList<>();

    public List<String> getClient_goals(String client_email,String goals_id) throws SQLException {
        
        Data_connection dc = new Data_connection();
        con = dc.get_connection();

        String staffQuery = "SELECT target_goals1,target_goals2,target_goals3,target_goals4 FROM Goals WHERE Goals.email = ? and Goals.goals_id = ?";
        pre = con.prepareStatement(staffQuery);
        pre.setString(1, client_email);
        pre.setString(2, goals_id);

        rs = pre.executeQuery();

        while (rs.next()){
            String target_goals1 = rs.getString("target_goals1");
            String target_goals2 = rs.getString("target_goals2");
            String target_goals3 = rs.getString("target_goals3");
            String target_goals4 = rs.getString("target_goals4");
            client_goals.add(target_goals1);
            client_goals.add(target_goals2);
            client_goals.add(target_goals3);
            client_goals.add(target_goals4);
            
            return client_goals;
        }
        return client_goals;
    }
    

    public void setClient_goals(String email , String target_goals1, String target_goals2 , String target_goals3, 
    String target_goals4,String goals_id) throws SQLException{

        Data_connection dc = new Data_connection();
        con = dc.get_connection();
      
       // String goals_id= getClient_of_goals_Last_id(email);
     
        String update = "Update Goals SET target_goals1=?,target_goals2=?,target_goals3=?,target_goals4=? WHERE goals_id=?";
       

        PreparedStatement preparedStmt = con.prepareStatement(update);
        preparedStmt.setString (1, target_goals1);
        preparedStmt.setString (2, target_goals2);
        preparedStmt.setString (3, target_goals3);
        preparedStmt.setString (4, target_goals4);
        preparedStmt.setString (5, goals_id);
       
       

        preparedStmt.execute();

    
    }
    
    public String getClient_of_goals_Last_id(String email) throws SQLException{
        Data_connection dc = new Data_connection();
        con = dc.get_connection();
        String sql2 = "Select goals_id from Goals where goals.email=?";
        pre = con.prepareStatement(sql2);
        pre.setString(1, email);
        rs = pre.executeQuery();
        String goal_id="";
        while(rs.next()){ 
            goal_id= rs.getString("goals_id");
           
        }
         
        String last = list_of_ids.get(list_of_ids.size() - 1);

        
        return last;
    }
    public List<String>getClientList_of_goals_ids(String email) throws SQLException {
        Data_connection dc = new Data_connection();
        con = dc.get_connection();
        String sql2 = "Select goals_id from Goals where goals.email=?";
        pre = con.prepareStatement(sql2);
        pre.setString(1, email);
        rs = pre.executeQuery();
        String goal_id="";
        while(rs.next()){ 
            goal_id= rs.getString("goals_id");
            list_of_ids.add(goal_id);
        }
         
       
        return list_of_ids;
        
       
    }
       

       
        

//debuging purpose
public static void main(String[] args) throws SQLException {

    Goals goal = new Goals();
    String client_email="AEGEAN@hotmail.com";
    System.out.println(goal.getClientList_of_goals_ids(client_email));

  // goal.setClient_goals(client_email, "80", "60", "95", "70","2");
   //System.out.println(goal.getClientList_of_goals_ids(client_email)); 
  // System.out.println(goal.getClient_goals(client_email,"2"));
}

}
