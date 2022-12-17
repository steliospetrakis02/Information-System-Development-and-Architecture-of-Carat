import java.sql.*;
import java.time.LocalDate;

public class Reports {
/**
 * @param args
 */
public static void main(String[] args) {
	try {
		Reports a = new Reports();
		DB obj = new DB();
		Connection con;
		con = obj.getConnection();
		Statement stmt = con.createStatement();
        String querry = "SELECT email FROM client_";
		ResultSet rs = stmt.executeQuery(querry);
		int reports_id1 = 1;
		double size1;
        String date1;
        String type = "Informative message";
		int employee_id1;
		String email1;
		while (rs.next()) {
			for(int j=0; j<5; j++) {
				size1 = a.size();
                date1 = a.Date();
				employee_id1 = a.employee_id();
				email1 = rs.getString("email");		
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO `reports` (reports_id,size,date_,type_,employee_id,email) VALUES (?,?,?,?,?,?)");
                pstmt.setInt(1,reports_id1);
                pstmt.setDouble(2, size1);
                pstmt.setString(3,date1);
                pstmt.setString(4, type);
                pstmt.setInt(5,employee_id1);
                pstmt.setString(6,email1 );
                pstmt.executeUpdate();
				reports_id1++;
			}
		}
		obj.close();
	}catch(Exception e) {
		System.out.print("Could not insert values to table reports" + " " + e.getMessage());
	}
}
/*ΜΑΣ ΛΕΙΠΕΙ Ο ΤΡΟΠΟΣ ΝΑ ΚΑΝΟΥΜΕ INSERT ΤΑ 1.goals_id 2.preferencers_id  */
public double size() {
	int min = 200;
	int max = 400;
	double rand = Math.random()*(max-min+1)+min;
	rand =  Math.floor(rand * 100) / 100;
	return rand;
}

public String Date() {
LocalDate randomDate = createRandomDate(2020, 2023);
String date = randomDate.toString();
return date;
}

public static int createRandomIntBetween(int start, int end) {
    return start + (int) Math.round(Math.random() * (end - start));
}

public static LocalDate createRandomDate(int startYear, int endYear) {
    int day = createRandomIntBetween(1, 28);
    int month = createRandomIntBetween(1, 12);
    int year = createRandomIntBetween(startYear, endYear);
    return LocalDate.of(year, month, day);
}

public int employee_id() {
	int min= 1;
	int max= 5;
	int employee = (int)(Math.random()*(max-min+1)+min);
	return employee;
}
}
