import java.sql.*;
public class indicators {
	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		}catch(Exception e) {
			System.out.print(e);
		}
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://195.251.249.131:3306/ismgroup60","ismgroup60","82gyrs");
			Statement stmt=con.createStatement();
			indicators a =new indicators();
			String querry = "SELECT reports_id"
						+ "FROM reports";
			ResultSet rs = stmt.executeQuery(querry);
			String weeks;
			int ins;
			double SOV;
			double v;
			String reports_id;
			int i;
			while(rs.next()) {
				for(i=0; i<16; i++) {
					weeks = a.Weeks_4x();
					ins = a.Insertions();
					SOV = a.SOV();
					v = a.Viewability();
					reports_id = rs.getString("reports_id");
					stmt.executeUpdate("INSERT INTO Indicators " + "VALUES (weeks,ins,SOV,v,reports_id)");
				}
			}
		}catch(Exception e) {
			System.out.print("Could not insert values to table reports");
		}
	}

    public String Weeks_4x() {
        int min = 1;
        int max = 4;
        Integer x =(int) Math.random()*(max-min+1)+min;
        String weeks = x.toString();
        weeks = weeks + "x";
        return weeks;
    }
public int Insertions() {
	int min= 0;
	int max= 100;
	int ins = (int)(Math.random()*(max-min+1)+min);
	return ins;
}
public double SOV() {
	int min= 0;
	int max= 100;
	double SOV = Math.random()*(max-min+1)+min;
	return SOV;
}
public double Viewability() {
	int min = 0;
	int max = 100;
	double v = Math.random()*(max-min+1)+min;
	return v;
}
}