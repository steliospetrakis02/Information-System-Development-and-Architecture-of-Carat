 <%@ page import="test.Preferences" %>
<%@ page import="test.Reports" %>
<%@ page import="java.util.*" %>
 <%     String[] results = request.getParameterValues("indicators");
        
    if(results == null) {
        if(((String) session.getAttribute("stats")).equals("no")) { %>
            <jsp:forward page="preferences.jsp" >
                <jsp:param name="color" value="red" />
            </jsp:forward>
                
      <% } else {
            if(((String) session.getAttribute("role")).equals("client")) { %>
            <jsp:forward page="preferencesStats.jsp" >
                <jsp:param name="color" value="red" />
            </jsp:forward>
          

          <% } else { %>
                <jsp:forward page="PlannerpreferencesStats.jsp" >
                    <jsp:param name="color" value="red" />
                </jsp:forward>
                    
          <% } 

        }
    }
         
        
        String[] indicators = new String[12];
        int index = 0;

        for(String x: results) {
            if(x != null) {
                indicators[index] = x;
                index++;
            }

        }    
        Preferences pref = new Preferences();
        

        if(index != 4 && ((String) session.getAttribute("stats")).equals("no")) { %>
            <jsp:forward page="preferences.jsp" >
                <jsp:param name="color" value="red" />
            </jsp:forward>
        <% } else if(index != 3 && ((String) session.getAttribute("stats")).equals("yes")) { 

                if(((String) session.getAttribute("role")).equals("client")) { %>
                     <jsp:forward page="preferencesStats.jsp" > 
                        <jsp:param name="color" value="red" />
                    </jsp:forward>

               <% } else {%>
                    <jsp:forward page="PlannerpreferencesStats.jsp" >
                        <jsp:param name="color" value="red" />
                    </jsp:forward>
                <% } 
            } else { 
                if(((String) session.getAttribute("stats")).equals("no")) {
                    pref.set_Client_Preferences((String) session.getAttribute("email"), indicators[0], indicators[1], indicators[2], indicators[3]); %>
                    <jsp:forward page="congrats_pref.jsp"/>
                
             <% } else {
                     if(((String) session.getAttribute("role")).equals("client")) {
                         List<String> prefs = pref.get_Client_Preferences((String) session.getAttribute("email"));
                         boolean done_1 = false;
                         boolean done_2 = false;
                         boolean done_3 = false;
                         for(String p: prefs) {
                            if(p.equals(indicators[0])) {
                                done_1 = true;
                            }
                            if(p.equals(indicators[1])) {
                                done_2 = true;
                            }
                            if(p.equals(indicators[2])) {
                                done_3 = true;
                            }
                         }
                         if(done_1 && done_2 && done_3) {
                            request.setAttribute("indicator1", indicators[0]);
                            request.setAttribute("indicator2", indicators[1]);
                            request.setAttribute("indicator3", indicators[2]);%>
                            <jsp:forward page="../Statistics/StatResult.jsp" />
                        <% } else { %>
                            <jsp:forward page="preferencesStats.jsp" > 
                                <jsp:param name="color" value="red" />
                            </jsp:forward>
                       <% } %>
                         
                  
             
                    <% } else {
                        List<String> prefs = pref.get_Client_Preferences((String) session.getAttribute("client_email"));
                         boolean done_1 = false;
                         boolean done_2 = false;
                         boolean done_3 = false;
                         for(String p: prefs) {
                            if(p.equals(indicators[0])) {
                                done_1 = true;
                            }
                            if(p.equals(indicators[1])) {
                                done_2 = true;
                            }
                            if(p.equals(indicators[2])) {
                                done_3 = true;
                            }
                         }
                         if(done_1 && done_2 && done_3) {
                            request.setAttribute("indicator1", indicators[0]);
                            request.setAttribute("indicator2", indicators[1]);
                            request.setAttribute("indicator3", indicators[2]);%>
                            <jsp:forward page="../Statistics/StatResultPlanner.jsp" />
                        <% } else { %>
                            <jsp:forward page="PlannerpreferencesStats.jsp" >
                                <jsp:param name="color" value="red" />
                            </jsp:forward>
                       <% } %>
                         
                    
                    <% } 

                }
                

             } %>