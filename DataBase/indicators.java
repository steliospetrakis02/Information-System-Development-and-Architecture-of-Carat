import java.sql.*;
public class indicators {
	public static void main(String[] args) {
		try {
            DB obj = new DB();
            Connection con;
            con = obj.getConnection();
			Statement stmt=con.createStatement();
			indicators a =new indicators();
			String querry = "SELECT reports_id FROM reports";
			ResultSet rs = stmt.executeQuery(querry);
			int clicks;
			int ins;
			double SOV;
			double v;
			String reports_id;
			int i;
			while(rs.next()) {
				for(i=0; i<16; i++) {
					clicks = a.Clicks();
					ins = a.Insertions();
					SOV = a.SOV();
					v = a.Viewability();
					reports_id = rs.getString("reports_id");
                    PreparedStatement pstmt = con.prepareStatement("INSERT INTO `indicators` (ind1,ind2,ind3,ind4,reports_id) VALUES (?,?,?,?,?)");
                    pstmt.setInt(1,clicks);
                    pstmt.setInt(2, ins);
                    pstmt.setDouble(3,SOV);
                    pstmt.setDouble(4, v);
					pstmt.setString(5,reports_id);
                    pstmt.executeUpdate();
				}
			}
		}catch(Exception e) {
			System.out.print("Could not insert values to table reports" + e.getMessage());
		}
	}

public int Clicks() {
    int min = 0;
    int max = 200;
    int clicks =(int) (Math.random()*(max-min+1)+min);
    return clicks;
}
public int Insertions() {
	int min= 0;
	int max= 300;
	int ins = (int)(Math.random()*(max-min+1)+min);
	return ins;
}
public double SOV() {
	int min= 0;
	int max= 100;
	double SOV = Math.random()*(max-min+1)+min;
	SOV =  Math.floor(SOV * 100) / 100;
	return SOV;
}
public double Viewability() {
	int min = 0;
	int max = 100;
	double v = Math.random()*(max-min+1)+min;
	v =  Math.floor(v * 100) / 100;
	return v;
}
}
