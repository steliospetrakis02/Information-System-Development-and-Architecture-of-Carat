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
      
        
        String check="select * from goals where email=?;";
        PreparedStatement preparedStmt0 = con.prepareStatement(check);
        preparedStmt0.setString (1, email);
        rs = preparedStmt0.executeQuery();
        if(!rs.next()){ 
            for(int i = 0; i <9;i++){
                String insert="Insert into goals(email,target_goals1,target_goals2,target_goals3,target_goals4,goals_id)values(?,?,?,?,?,?);";
                PreparedStatement preparedStmt = con.prepareStatement(insert);
                preparedStmt.setString (1, email);
                preparedStmt.setString (2, "0");
                preparedStmt.setString (3, "0");
                preparedStmt.setString (4, "0");
                preparedStmt.setString (5, "0");
                int int_goal__id=Integer.parseInt(goals_id+i);
                preparedStmt.setString (6, Integer.toString(int_goal__id));
                preparedStmt.execute();
            }
            String insert="Insert into goals(email,target_goals1,target_goals2,target_goals3,target_goals4,goals_id)values(?,?,?,?,?,?);";
            PreparedStatement preparedStmt = con.prepareStatement(insert);
            preparedStmt.setString (1, email);
            preparedStmt.setString (2, target_goals1);
            preparedStmt.setString (3, target_goals2);
            preparedStmt.setString (4, target_goals3);
            preparedStmt.setString (5, target_goals4);
            preparedStmt.setString (6, goals_id);
            preparedStmt.execute();
        }

        String update = "Update Goals SET target_goals1=?,target_goals2=?,target_goals3=?,target_goals4=? WHERE goals_id=?";
       

        PreparedStatement preparedStmt = con.prepareStatement(update);
        preparedStmt.setString (1, target_goals1);
        preparedStmt.setString (2, target_goals2);
        preparedStmt.setString (3, target_goals3);
        preparedStmt.setString (4, target_goals4);
        preparedStmt.setString (5, goals_id);
       
       

        preparedStmt.execute();

    
    }
    public void setup(String email) throws SQLException{
        int goals_id=getClient_of_goals_global_Last_id()+1;
        for(int i = 0; i <8;i++){
            String insert="Insert into goals(email,target_goals1,target_goals2,target_goals3,target_goals4,goals_id)values(?,?,?,?,?,?);";
            PreparedStatement preparedStmt = con.prepareStatement(insert);
            preparedStmt.setString (1, email);
            preparedStmt.setString (2, "0");
            preparedStmt.setString (3, "0");
            preparedStmt.setString (4, "0");
            preparedStmt.setString (5, "0");
            preparedStmt.setString (6, Integer.toString(goals_id+i));
            preparedStmt.execute();
        }
       
    }
    
    public Integer getClient_of_goals_global_Last_id() throws SQLException{
        Data_connection dc = new Data_connection();
        List<Integer> list_of_ids_= new ArrayList<>();

        con = dc.get_connection();
        String sql2 = "Select goals_id from Goals ";
        pre = con.prepareStatement(sql2);
        rs = pre.executeQuery();
        String goal_id="";
        while(rs.next()){ 
            goal_id= rs.getString("goals_id");
            int i=Integer.parseInt(goal_id);  

            list_of_ids_.add(i);
           
        }
         

        return Collections.max(list_of_ids_);
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
    String client_email="test6@gmail.com";
    //System.out.println(goal.getClientList_of_goals_ids(client_email));
    goal.setup(client_email);
    //goal.setClient_goals(client_email, "8330", "60", "95", "70","28");
   //System.out.println(goal.getClientList_of_goals_ids(client_email)); 
  // System.out.println(goal.getClient_goals(client_email,"2"));
}

}
