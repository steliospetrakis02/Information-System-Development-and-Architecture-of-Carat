package test;

import java.sql.*;
import java.time.LocalDate;

public class java_insertions_report {
public static void main(String[] args) {
	Data_connection dc = new Data_connection();
	try {
		Connection con=dc.get_connection();
		Statement stmt=con.createStatement();
		String querry = "SELECT email"
					+ "FROM client_";
		ResultSet rs = stmt.executeQuery(querry);
		int reports_id = 1;
		int i = 1;
		double size;
		int employee_id;
		String email;
		while (rs.next()) {
			for(int j=0; j<5; j++) {
				//size = a.size();
				//employee_id = a.employee_id();
				email = rs.getString("email");		
				stmt.executeUpdate("INSERT INTO reports " + "VALUES (reports_id, size, a.Date(), 'informative report', employee_id, email)");
				reports_id++;
			}
			i++;
		}
		stmt.close();
	}catch(Exception e) {
		System.out.print("Could not insert values to table reports");
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

public void Date() {
LocalDate randomDate = createRandomDate(2020, 2023);
System.out.println(randomDate);
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
