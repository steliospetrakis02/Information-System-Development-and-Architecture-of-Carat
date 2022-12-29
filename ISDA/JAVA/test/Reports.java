package test;
import java.util.*;
import java.util.stream.*; 
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
    public List<String> getClientList_of_report_ids(String email) throws SQLException{
        Data_connection dc = new Data_connection();
        con = dc.get_connection();
        String sql2 = "Select reports_id from Reports where Reports.email=?";
        pre = con.prepareStatement(sql2);
        pre.setString(1, email);
        rs = pre.executeQuery();
        String pref_id="";
        while(rs.next()){ 
            pref_id= rs.getString("reports_id");
            list_of_ids.add(pref_id);
        }
         

        
        return list_of_ids;
    }
    public static void main(String[] args) throws Exception {
        
       
        Reports rep = new Reports();
        
        System.out.println(rep.getClientList_of_report_ids("AEGEAN@hotmail.com")); 
        double[][] report_data2 = new double[16][12];
        
        
        report_data2=rep.get_data("AEGEAN@hotmail.com","2");
        System.out.println("week,ind1,ind2,ind3,ind4");
        for(int i = 0; i < report_data2.length; i++){
            for(int j = 0; j < report_data2[i].length; j++){
                System.out.print(report_data2[i][j]);
                System.out.print(" ");
            }  
            System.out.println(""); 
        }

        System.out.println(rep.getList_of_Weeks_4x()); 
        
    }

   

}
