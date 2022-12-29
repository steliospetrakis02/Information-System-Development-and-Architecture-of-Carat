package test;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
public class Date {
    

    public String getDate() {
        DateTimeFormatter myFormatObj  = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        
        LocalDate local_date = LocalDate.now();
        String formattedDate = local_date.format(myFormatObj);
        return formattedDate;
    }
    public String getTime() {
        DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("HH:mm:ss");
        
        LocalTime local_time = LocalTime.now();
        String formattedtime = local_time.format(myFormatObj);
        return formattedtime;
    }

    
    public static void main(String[] args) {
        Date dt = new Date();
        System.out.println(dt.getDate());
        System.out.println(dt.getTime());
    }
    
}
