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

        
    private List<String> client_pref_goals= new ArrayList<>();

    public List<String> getClient_pref_goals(String client_email) throws SQLException {
        
        Data_connection dc = new Data_connection();
        con = dc.get_connection();

        String staffQuery = "SELECT * FROM Goals WHERE client_.email = ?";
        pre = con.prepareStatement(staffQuery);
        pre.setString(1, client_email);
        rs = pre.executeQuery();

        while (rs.next()){
            String email2 = rs.getString("email");
            client_pref_goals.add(email2);
            return client_pref_goals;
        }
        return client_pref_goals;
    }
    

    public void setClient_pref_goals(){

    }


//debuging purpose
public static void main(String[] args) throws SQLException {

    Goals goal = new Goals();
    String client_email="Vodafone@gmail.com";
    System.out.println(goal.getClient_pref_goals(client_email));
}

}
