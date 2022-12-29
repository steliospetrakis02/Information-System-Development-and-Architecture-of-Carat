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

    private ResultSet rs = null, rs1 = null;

        
    private List<String> client_goals= new ArrayList<>();

    public List<String> getClient_goals(String client_email) throws SQLException {
        
        Data_connection dc = new Data_connection();
        con = dc.get_connection();

        String staffQuery = "SELECT target_goals1,target_goals2,target_goals3,target_goals4 FROM Goals WHERE Goals.email = ?";
        pre = con.prepareStatement(staffQuery);
        pre.setString(1, client_email);
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
    String target_goals4) throws SQLException{

        Data_connection dc = new Data_connection();
        con = dc.get_connection();
      

     
        String update = "Update Goals SET target_goals1=?,target_goals2=?,target_goals3=?,target_goals4=? WHERE email=?";
       

        PreparedStatement preparedStmt = con.prepareStatement(update);
        preparedStmt.setString (1, target_goals1);
        preparedStmt.setString (2, target_goals2);
        preparedStmt.setString (3, target_goals3);
        preparedStmt.setString (4, target_goals4);
        preparedStmt.setString (5, email);
       
       

        preparedStmt.execute();

    
    }
    
 
        

//debuging purpose
public static void main(String[] args) throws SQLException {

    Goals goal = new Goals();
    String client_email="AEGEAN@hotmail.com";
    goal.setClient_goals(client_email, "80", "60", "95", "70");
    System.out.println(goal.getClient_goals(client_email));
}

}
