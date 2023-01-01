package test;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;

public class Date2 {
    

    public String getDate() {
        DateTimeFormatter myFormatObj  = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        
        LocalDate local_date = LocalDate.now();
        String formattedDate = local_date.format(myFormatObj);

      
        return formattedDate;
    }
    public java.sql.Date getDate_2() {
           
      java.sql.Date sqlDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());
      
        return sqlDate;
    }
    public String getTime() {
        DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("HH:mm:ss");
        
        LocalTime local_time = LocalTime.now();
        String formattedtime = local_time.format(myFormatObj);
        return formattedtime;
    }

    
    public static void main(String[] args) {
        Date2 dt = new Date2();
        System.out.println(dt.getDate());
        System.out.println(dt.getTime());
    }
    
}
