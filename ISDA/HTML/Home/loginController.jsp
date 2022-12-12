<%@ page import="test.User_service" %>

    <%  String email = request.getParameter("email");
        String password = request.getParameter("password");

        User_service myUser_Service = new User_service();
        boolean done = myUser_Service.authenticate(email, password);
        String next_page;

        if(done == true) { 
             String[] email_spilt = email.split("@"); 
             session.setAttribute("user", email_spilt[0]);
             if(email_spilt[1].equals("intellireports.com")) { 
                session.setAttribute("role", "employee"); %>
                <jsp:forward page="finalmainPlanner.jsp"/>
             <% } else { 
                session.setAttribute("role", "client"); %>
                <jsp:forward page="finalmain.jsp"/>
            <%  } %>
            

        <%} else { %>
            <jsp:forward page="login.jsp" >
                <jsp:param name="color" value="red" />
            </jsp:forward>
       <% } %>

        