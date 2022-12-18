import java.sql.*;
public class goals {
	public static void main(String[] args) {
		try {
            DB obj = new DB();
            Connection con;
            con = obj.getConnection();
			Statement stmt=con.createStatement();
			goals a =new goals();
			String querry = "SELECT email FROM client_";
			ResultSet rs = stmt.executeQuery(querry);
			String email;
            int clicks;
			int ins;
			double SOV;
			double v;
			int goals_id = 1;
			int i;
			while(rs.next()) {
                    email = rs.getString("email");
					clicks = a.Clicks();
					ins = a.Insertions();
					SOV = a.SOV();
					v = a.Viewability();
                    PreparedStatement pstmt = con.prepareStatement("INSERT INTO `goals` (email,target_goals1,target_goals2,target_goals3,target_goals4,goals_id) VALUES (?,?,?,?,?,?)");
                    pstmt.setString(1,email);
                    pstmt.setInt(2,clicks);
                    pstmt.setInt(3, ins);
                    pstmt.setDouble(4,SOV);
                    pstmt.setDouble(5, v);
					pstmt.setInt(6,goals_id);
                    pstmt.executeUpdate();
                    goals_id = goals_id + 1;
			}
		}catch(Exception e) {
			System.out.print("Could not insert values to table reports." + e.getMessage());
		}
	}

    public int Clicks() {
        int min = 0;
        int max = 200;
        int clicks = (int)(Math.random()*(max-min+1)+min);
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
    SOV = Math.round(SOV * 100.0) / 100.0;
	return SOV;
}
public double Viewability() {
	int min = 0;
	int max = 100;
	double v = Math.random()*(max-min+1)+min;
    v = Math.round(v * 100.0) / 100.0;
	return v;
}
}
