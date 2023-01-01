import java.sql.*;
import java.util.Random;
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
			int GRPs;
			double Reach_1;
			double Reach_3;
			double SOV;
			int Insertions;
			int GRPs_Week;
			GRPs_Week = a.GRPs_Week();
			int Weeks;
			Weeks = a.Weeks();
			String Weeks_4x;
			Weeks_4x = a.Weeks_4x();
			int Impressions;
			int clicks;
			double click_rate;
			double Viewability;
			double v;
			String reports_id;
			int pl = 0;
			int i;
			while(rs.next()) {
				for(i=0; i<16; i++) {
					GRPs = a.Grps();
					Reach_1 = a.Reach_1();
					Reach_3 = a.Reach_3();
					SOV = a.SOV();
					Insertions = a.Insertions();
					if (pl%4 ==0){
						GRPs_Week = a.GRPs_Week();
						Weeks = a.Weeks();
						Weeks_4x = a.Weeks_4x();
					}
					pl++;
					Impressions = a.Impressions();
					clicks = a.Clicks();
					click_rate = a.Click_Rate();
					Viewability = a.Viewability();
					reports_id = rs.getString("reports_id");
                    PreparedStatement pstmt = con.prepareStatement("INSERT INTO `indicators` (GRPs,Reach_1,Reach_3,SOV,Insertions,GRPs_Week,Weeks,Weeks_4x,Impressions,clicks,	click_rate,Viewability,reports_id) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    pstmt.setInt(1,GRPs);
                    pstmt.setDouble(2, Reach_1);
                    pstmt.setDouble(3,Reach_3);
                    pstmt.setDouble(4, SOV);
					pstmt.setInt(5,Insertions);
					pstmt.setInt(6,GRPs_Week);
					pstmt.setInt(7,Weeks);
					pstmt.setString(8,Weeks_4x);
					pstmt.setInt(9,Impressions);
					pstmt.setInt(10,clicks);
					pstmt.setDouble(11,click_rate);
					pstmt.setDouble(12,Viewability);
					pstmt.setString(13,reports_id);
                    pstmt.executeUpdate();
				}
			}
		}catch(Exception e) {
			System.out.print("Could not insert values to table reports" + e.getMessage());
		}
	}
public int Grps(){
	int min = 0;
    int max = 300;
    int Grps =(int) (Math.random()*(max-min+1)+min);
	return Grps;
}
public double Reach_1(){
	int min= 0;
	int max= 100;
	double Reach_1 = Math.random()*(max-min+1)+min;
	Reach_1 =  Math.floor(Reach_1 * 100) / 100;
	return Reach_1;
}
public double Reach_3(){
	int min= 0;
	int max= 100;
	double Reach_3 = Math.random()*(max-min+1)+min;
	Reach_3 =  Math.floor(Reach_3 * 100) / 100;
	return Reach_3;
}
public double SOV() {
	int min= 0;
	int max= 100;
	double SOV = Math.random()*(max-min+1)+min;
	SOV =  Math.floor(SOV * 100) / 100;
	return SOV;
}
public int Insertions() {
	int min= 0;
	int max= 300;
	int ins = (int)(Math.random()*(max-min+1)+min);
	return ins;
}
public int GRPs_Week(){
	int min = 0;
    int max = 50;
    int Grps =(int) (Math.random()*(max-min+1)+min);
	return Grps;
}
public int Weeks(){
	int min = 1;
    int max = 4;
    int Weeks =(int) (Math.random()*(max-min+1)+min);
	return Weeks;
}
public static String Weeks_4x(){
	Random randomNum = new Random();
	String Weeks_4x= "";
	for (int j=0; j<4; j++){
		int showMe = randomNum. nextInt(100);
		if (showMe>60) {
			Weeks_4x = Weeks_4x + "-";
		}else{
			Weeks_4x= Weeks_4x + "X";
		}
	}
	return Weeks_4x;
}
public int Impressions(){
	int min = 0;
    int max = 300;
    int imp =(int) (Math.random()*(max-min+1)+min);
	return imp;
}
public int Clicks() {
    int min = 0;
    int max = 300;
    int clicks =(int) (Math.random()*(max-min+1)+min);
    return clicks;
}
public double Click_Rate() {
	int min = 0;
	int max = 100;
	double click_rate = Math.random()*(max-min+1)+min;
	click_rate =  Math.floor(click_rate * 100) / 100;
	return click_rate;
}
public double Viewability() {
	int min = 0;
	int max = 100;
	double v = Math.random()*(max-min+1)+min;
	v =  Math.floor(v * 100) / 100;
	return v;
}
}
