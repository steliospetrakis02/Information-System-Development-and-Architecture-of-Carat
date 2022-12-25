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
        pref.set_Client_Preferences((String) session.getAttribute("email"), indicators[0], indicators[1], indicators[2], indicators[3]);

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
                if(((String) session.getAttribute("stats")).equals("no")) { %>
                    <jsp:forward page="congrats_pref.jsp"/>
                
             <% } else {
                     if(((String) session.getAttribute("role")).equals("client")) { %>
                        <jsp:forward page="../Statistics/StatResult.jsp" /> 
          

                    <% } else { %>
                        <jsp:forward page="../Statistics/StatResultPlanner.jsp" />
                    
                    <% } 

                }
                

             } %>