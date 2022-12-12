package test;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class Reports {
    private double report_data[][];
    private static List<Integer> list_of_indicators= new ArrayList<>();

    //db //not ready
    public double[][] get_data() throws SQLException{
        
        Data_connection db = new Data_connection();
        db.get_connection();
        //String sql="select * from ureports where user_reports.email=?"

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
    public static void main(String[] args) {
        List<String> test = new ArrayList<>();
        test.add("3");
        test.add("2");
        System.out.println(test);
        Reports rep = new Reports();
        System.out.println(rep.caclulate_Average("2",test));
        rep.caclulate_Average("2",test);
    }


    

   

}
