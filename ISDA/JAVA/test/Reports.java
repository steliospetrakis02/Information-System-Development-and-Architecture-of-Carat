package test;
import java.util.*;


import java.sql.*;

public class Reports {
    private double[][] report_data = new double[16][12];
   

    private static List<Integer> list_of_indicators= new ArrayList<>();
    private static List<String> list_of_ids= new ArrayList<>();
    private static List<String> list_of_Weeks_4x= new ArrayList<>();
    PreparedStatement pre = null;
    private ResultSet rs = null, rs1 = null;
    private Connection con=null;

   
    public double[][] get_data(String email,String report_id) throws Exception{
        
        Data_connection dc = new Data_connection();
        con = dc.get_connection();

        
        String sql2="select GRPs, Reach_1, Reach_3, SOV, Insertions, GRPs_Week, Weeks, Weeks_4x, Impressions, clicks, click_rate, Viewability, reports_id from indicators where reports_id=?";
        pre = con.prepareStatement(sql2);
        
        
        pre.setString(1, report_id);
        rs = pre.executeQuery();
        int weeks_ind=0;
        while (rs.next()){
            
            double ind1 = rs.getDouble("GRPs");
            double ind2 = rs.getDouble("Reach_1");
            double ind3 = rs.getDouble("Reach_3");
            double ind4 = rs.getDouble("SOV");
            double ind5 = rs.getDouble("Insertions");
            double ind6 = rs.getDouble("GRPs_Week");
            double ind7 = rs.getDouble("Weeks");
            String ind8 = rs.getString("Weeks_4x");
            double ind9 = rs.getDouble("Impressions");
            double ind10 = rs.getDouble("clicks");
            double ind11 = rs.getDouble("click_rate");
            double ind12 = rs.getDouble("Viewability");
           
            report_data[weeks_ind][0]=weeks_ind+1;
            report_data[weeks_ind][1]=ind1;
            report_data[weeks_ind][2]=ind2;
            report_data[weeks_ind][3]=ind3;
            report_data[weeks_ind][4]=ind4;
            report_data[weeks_ind][5]=ind5;
            report_data[weeks_ind][6]=ind6;
            report_data[weeks_ind][7]=ind7;
           // report_data[weeks_ind][8]= Double.valueOf(ind8);
            report_data[weeks_ind][8]=ind9;
            report_data[weeks_ind][9]=ind10;
            report_data[weeks_ind][10]=ind11;
            report_data[weeks_ind][11]=ind12;
           

            list_of_Weeks_4x.add(ind8);

            weeks_ind++;
  
        }
        
        return report_data;
    }
   
    public void set_data(String email,String GRPs, String Reach_1, String Reach_3, String SOV, 
    String Insertions, String GRPs_Week, String Weeks, String Weeks_4x, String Impressions, String clicks,
     String click_rate, String Viewability) throws SQLException{
      Data_connection db = new Data_connection();
        con = db.get_connection();

        Date2 dt = new Date2();
        

        
        String reports_id = get_Client__last_rep_id(email);
        System.out.println(reports_id);
        if(check_if_indicators_are_full_given_report_id(reports_id)==true) {
            //report id stays as it is
        
        }
        else{
           
        try {
            int reports_id_= getLast_global_report_id() +1;
           reports_id= Integer.toString(reports_id_);
            System.out.println(reports_id);
           String sql="insert into reports (reports_id, size, type_, employee_id,date_, email) values (?,?,?,?,?,?);";
           pre = con.prepareStatement(sql);
           pre.setString(1, reports_id);
           pre.setDouble(2, 299.0);
           pre.setString(3, "Informative message");
           pre.setString(4, "1");
           pre.setDate(5, dt.getDate_2());
           pre.setString(6, email);
            //create new reports_id
           pre.executeUpdate();
            }
            catch(Exception e){
                System.out.println(e);
            }
        }


        String sql2="INSERT INTO indicators(GRPs, Reach_1, Reach_3, SOV, Insertions, GRPs_Week, Weeks, Weeks_4x, Impressions, clicks, click_rate, Viewability,reports_id) "
         + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        pre = con.prepareStatement(sql2);
        
        pre.setString(1, GRPs);
        pre.setString(2, Reach_1);
        pre.setString(3, Reach_3);
        pre.setString(4, SOV);
        pre.setString(5, Insertions);
        pre.setString(6, GRPs_Week);
        pre.setString(7, Weeks);
        pre.setString(8, Weeks_4x);
        pre.setString(9, Impressions);
        pre.setString(10, clicks);
        pre.setString(11, click_rate);
        pre.setString(12, Viewability);
        pre.setString(13, reports_id);

        pre.executeUpdate();

    }

    public List<String> getList_of_Weeks_4x() {
        return list_of_Weeks_4x;
    }

    public double caclulate_Average(String indicator, List<String> client_pref) {
        
        Integer indx = 0;
        for (int i = 0; i < client_pref.size(); i++) {
            if(indicator.equals(client_pref.get(i))) {
                indx = i;
                System.out.println(indx);
            }
        }

        double sum = 0;
        for(double row[]:report_data) {
            sum += row[indx];

        }
        //average
        return sum/16;
    }
    
    //+2 indicato
    public static double calculate_deviation(Integer element_1, Integer element_2) 
    {
        double sum = 0.0, standardDeviation = 0.0;
        list_of_indicators.add(element_1, element_2);
        
        int length = list_of_indicators.size();
        //for()

        for(double num : list_of_indicators) {
            sum += num;
        }

        double mean = sum/length;

        for(double num: list_of_indicators) {
            standardDeviation += Math.pow(num - mean, 2);
        }

        return Math.sqrt(standardDeviation/length);
    }
    public Integer getLast_global_report_id() throws SQLException{
        Data_connection dc = new Data_connection();
        con = dc.get_connection();
        String sql2 = "Select reports_id from Reports ";
        pre = con.prepareStatement(sql2);
        rs = pre.executeQuery();
        String pref_id="";
        while(rs.next()){ 
            pref_id= rs.getString("reports_id");
          
        }
 
        return Integer.parseInt(pref_id);
    }
    public String get_Client__last_rep_id(String email) throws SQLException{
        Data_connection dc = new Data_connection();
        con = dc.get_connection();
        String sql2 = "Select reports_id from Reports where reports.email=? ";
        pre = con.prepareStatement(sql2);
        pre.setString(1,email);
        rs = pre.executeQuery();
        String report_id="";
        while(rs.next()){ 
            report_id= rs.getString("reports_id");
            list_of_ids.add(report_id);
        }
        dc.close();
        return report_id;
        
    }
    public List<String>getClientList_of_reports_ids(String email) throws SQLException {
        Data_connection dc = new Data_connection();
        con = dc.get_connection();
        String sql2 = "Select reports_id from Reports where reports.email=?";
        pre = con.prepareStatement(sql2);
        pre.setString(1, email);
        rs = pre.executeQuery();
        String report_id="";
        while(rs.next()){ 
            report_id= rs.getString("reports_id");
            list_of_ids.add(report_id);
        }
         
       
        return list_of_ids;
        
       
    }

    public boolean check_if_indicators_are_full_given_report_id(String report_id){
        String sql = "SELECT * FROM indicators WHERE reports_id=?;";
        Data_connection db = new Data_connection();
        int counter=0;
		

		try {
			// open connection and get Connection object
			con = db.get_connection();

			PreparedStatement stmt = con.prepareStatement(sql);

			// set values to parameter
			stmt.setString(1, report_id);

			// execute the SQL statement (QUERY - SELECT) and get the results in a ResultSet)
			ResultSet rs = stmt.executeQuery();
            
			while (rs.next()) {
	 			counter++;
			}

 		
		System.out.println(counter);
		//a new report can fit
        if(counter<16 && counter!=0) {
            return true;
        }
        else if(counter==0){
         
            return false;
        }
        //create new report_id
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
    
    public static void main(String[] args) throws Exception {
        
       
        Reports rep = new Reports();
        
        System.out.println(rep.getClientList_of_reports_ids("amazon@hotmail.com"));

        rep.set_data("amazon@hotmail.com", "ee", "ee", "ee", "ee", "ee", "ee", "ee", "ee", "ee", "ee", "ee", "ee");
       // System.out.println(rep.getList_of_all__report_ids()); 
        double[][] report_data2 = new double[16][12];
        
        
        report_data2=rep.get_data("amazon@hotmail.com","23");
        System.out.println("week,ind1,ind2,ind3,ind4");
        for(int i = 0; i < report_data2.length; i++){
            for(int j = 0; j < report_data2[i].length; j++){
                System.out.print(report_data2[i][j]);
                System.out.print(" ");
            }  
            System.out.println(""); 
        }

      //  System.out.println(rep.getList_of_Weeks_4x()); 
        
    }

   

}
