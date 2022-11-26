import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Calc_Stat_Servlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String indicator_1 = request.getParameter("indic_1");
        String indicator_2 = request.getParameter("indic_2");
        String indicator_3 = request.getParameter("indic_3");
            
        Preferences pref = new Preferences();
        pref.setStatIndicators(indicator_1, indicator_2, indicator_3);

        String[] indicators = pref.getClientPreferences();
        
        request.setAttribute("Result_indicator_1", indicator_1);
        request.setAttribute("Result_indicator_2", indicator_2);
        request.setAttribute("Result_indicator_3", indicator_3);

        Goal goal = new Goal();
        double goal_average_1 = goal.target_goals[0]; // change
        double goal_average_2 = goal.target_goals[1];
        double goal_average_3 = goal.target_goals[2];
        double prefered_goals[];

        request.setAttribute("goal_average_1", goal_average_1);
        request.setAttribute("goal_average_2", goal_average_2);
        request.setAttribute("goal_average_3", goal_average_3);

        Report rep = new Report();

        double real_avg_1 = rep.calc_Average(indicator_1, indicators);
        double real_avg_2 = rep.calc_Average(indicator_2, indicators);
        double real_avg_3 = rep.calc_Average(indicator_3, indicators);
        double avgs[] = {real_avg_1, real_avg_2, real_avg_3};
        
        double dev_array[];
        for(i = 0; i<6; i++) {
            if(i < 3) {
                dev_array[i] = avgs[i];
            
            } else {
                dev_array[i] = prefered_goals[i];
            }
           

        }
        
        double real_dev_1 = rep.calc_deviation(dev_array, 0, 3);
        double real_dev_2 = rep.calc_deviation(indicator_2, 1, 4);
        double real_dev_3 = rep.calc_deviation(indicator_3, 2, 5);

        request.setAttribute("real_average_1", real_avg_1);
        request.setAttribute("real_average_2", real_avg_2);
        request.setAttribute("real_average_3", real_avg_3);
        request.setAttribute("real_dev_1", real_dev_1);
        request.setAttribute("real_dev_2", real_dev_2);
        request.setAttribute("real_dev_3", real_dev_3);

        RequestDispatcher rd = request.getRequestDispatcher("/StatResult.jsp");
        rd.forward(request,response);
    }
}