package Servlets;
import java.util.*;
import java.sql.*;
import java.util.List;



public class Preferences {
    
    //private final String userQuery = "select username from users where username =?  and password =?";
    private PreparedStatement stmt = null;
    private Statement stmt1 = null;
    private ResultSet rs = null, rs1 = null;
    private final static String staffQuery = "select * from Preferences";

    private String reports[];
    private String statistics[];
    private List<String> client_pref_res = new ArrayList<>();

 

    public List<String> get_Client_Preferences(Connection conn) throws SQLException{
        stmt1 = conn.createStatement();
        rs1 = stmt1.executeQuery(staffQuery);
        while (rs1.next()){

          String email = rs1.getString("email");
          String ind1 = rs1.getString("indicator1");
          String ind2 = rs1.getString("indicator1");
          String ind3 = rs1.getString("indicator1");
          String ind4 = rs1.getString("indicator1");
          String ind5 = rs1.getString("indicator1");
          String stat_indicator1 = rs1.getString("stat_indicator1");
          String stat_indicator2 = rs1.getString("stat_indicator2");
          String company_name = rs1.getString("Company_name");


          client_pref_res.add(email);
          client_pref_res.add(ind1);
          client_pref_res.add(ind2);
          client_pref_res.add(ind3);
          client_pref_res.add(ind4);
          client_pref_res.add(ind5);
          client_pref_res.add(stat_indicator1);
          client_pref_res.add(stat_indicator2);
          client_pref_res.add(company_name);
        
        } 

        return client_pref_res;
    }

    public void set_Client_Preferences(Connection conn , String email , String ind1, String ind2 , String ind3, 
                                        String ind4, String ind5,String stat_ind_1 , String stat_ind_2,
                                        String stat_ind_3,String company_name ) throws SQLException {

       // stmt1 = conn.createStatement();
        String insert = "insert into Preferences(indicator1,indicator2,indicator3,indicator4,indicator5,stat_indicator1,stat_indicator2,stat_indicator3,Company_name,email)" 
        +"values(?, ?, ?, ?, ?,?, ?, ?, ?, ?)";

        PreparedStatement preparedStmt = conn.prepareStatement(insert);
        preparedStmt.setString (1, ind1);
        preparedStmt.setString (2, ind2);
        preparedStmt.setString (3, ind3);
        preparedStmt.setString (4, ind4);
        preparedStmt.setString (5, ind5);
        preparedStmt.setString (6, stat_ind_1);
        preparedStmt.setString (7, stat_ind_2);
        preparedStmt.setString (8, stat_ind_3);
        preparedStmt.setString (9, company_name);
        preparedStmt.setString (10, email);

        preparedStmt.execute();

    }

   
    //debuging purpose
    public static void main(String[] args) throws SQLException {
        Data_connection dc = new Data_connection();
        dc.open();

        Preferences pref = new Preferences();
        pref.set_Client_Preferences(dc.get_con(),"vodafone@gmail","12","1","1","1","1","1222","Vodafone","Vodafone@gmail.com", staffQuery);

        System.out.println(pref.get_Client_Preferences(dc.get_con()));
    }

    }
