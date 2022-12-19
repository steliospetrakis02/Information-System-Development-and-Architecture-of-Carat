package test;
import java.util.*;
import java.sql.*;

public class Reports {
    private double[][] report_data = new double[15][5];
    private  List<Double> report_dataa= new ArrayList<>();

    private static List<Integer> list_of_indicators= new ArrayList<>();
    PreparedStatement pre = null;
    private ResultSet rs = null, rs1 = null;
    private Connection con=null;

   
    public double[][] get_data(String email) throws Exception{
        String reports_id="";
        Data_connection dc = new Data_connection();
        con = dc.get_connection();

        String sql = "Select reports_id from reports where email=?";

        pre = con.prepareStatement(sql);
        pre.setString(1, email);
        rs = pre.executeQuery();
        
        if(!rs.next()){
            throw new Exception("Could not find any reports with this email");
        }
        else{
            reports_id = rs.getString("reports_id");
            
        }
        
        String sql2="select ind1,ind2,ind3,ind4 from indicators where reports_id=?";
        pre = con.prepareStatement(sql2);
        
        
        pre.setString(1, reports_id);
        rs = pre.executeQuery();
        int weeks_ind=0;
        while (rs.next()){
            double ind1 = rs.getDouble("ind1");
            double ind2 = rs.getDouble("ind2");
            double ind3 = rs.getDouble("ind3");
            double ind4 = rs.getDouble("ind4");
            report_data[weeks_ind][0]=weeks_ind+1;
            report_data[weeks_ind][1]=ind1;
            report_data[weeks_ind][2]=ind2;
            report_data[weeks_ind][3]=ind3;
            report_data[weeks_ind][4]=ind4;
            weeks_ind++;
  
        }
        
        return report_data;
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
    public static void main(String[] args) throws Exception {
        List<String> test = new ArrayList<>();
       
        Reports rep = new Reports();
        
        //System.out.println(rep.caclulate_Average("2",test));
        //rep.caclulate_Average("2",test);
        double[][] report_data2 = new double[15][5];
        report_data2=(rep.get_data("sts2@gmail.com"));  
        System.out.println("week,ind1,ind2,ind3,ind4");
        for(int i = 0; i < report_data2.length; i++){
            for(int j = 0; j < report_data2[i].length; j++){
                System.out.print(report_data2[i][j]);
                System.out.print(" ");
            }  
            System.out.println(""); 
        }
    }

   

}
