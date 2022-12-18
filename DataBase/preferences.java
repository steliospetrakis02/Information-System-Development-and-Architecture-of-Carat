import java.sql.*;
public class preferences {
	public static void main(String[] args) {
		try {
            DB obj = new DB();
            Connection con;
            con = obj.getConnection();
			Statement stmt=con.createStatement();
			preferences a =new preferences();
			String querry = "SELECT email FROM client_";
			ResultSet rs = stmt.executeQuery(querry);
			String email;
			int preferences_id = 1;
			while(rs.next()) {
                    email = rs.getString("email");
                    PreparedStatement pstmt = con.prepareStatement("INSERT INTO `preferences` (indicator1,indicator2,indicator3,indicator4,stat_indicator1,stat_indicator2,stat_indicator3,stat_indicator4,email,preferences_id) VALUES (?,?,?,?,?,?,?,?,?,?)");
                    pstmt.setString(1,"Clicks");
                    pstmt.setString(2,"Insertions");
                    pstmt.setString(3, "SOV");
                    pstmt.setString(4,"Viewability");
                    pstmt.setString(5, "Clicks");
					pstmt.setString(6,"Insertions");
                    pstmt.setString(7, "SOV");
                    pstmt.setString(8,"Viewability");
                    pstmt.setString(9,email);
                    pstmt.setInt(10,preferences_id);
                    pstmt.executeUpdate();
                    preferences_id = preferences_id + 1;
			}
		}catch(Exception e) {
			System.out.print("Could not insert values to table reports." + " " + e.getMessage());
		}
	}
}
