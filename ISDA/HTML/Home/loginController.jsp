<%@ page import="test.User_service" %>
<%@ page import="test.User" %>

    <%  String email = request.getParameter("email");
        String password = request.getParameter("password");

        User_service myUser_Service = new User_service();
        boolean done = myUser_Service.authenticate(email, password);
        String next_page;

        if(done == true) { 
             session.setAttribute("year", "2020");
             session.setAttribute("period", "A");
             session.setAttribute("email", email);
             User myUser = myUser_Service.findUser(email);
             session.setAttribute("user", myUser.get_personal_name());
             
             String[] email_spilt = email.split("@");
             if(email_spilt[1].equals("intel.com")) { 
                session.setAttribute("role", "employee"); %>
                <jsp:forward page="finalmainPlanner.jsp"/>
             <% } else { 
                session.setAttribute("role", "client"); %>
                <jsp:forward page="finalmain.jsp"/>
            <%  } %>
            

        <%} else { %>
            <jsp:forward page="login.jsp" >
                <jsp:param name="errorMessage" value="Wrong email or password! Try again." />
            </jsp:forward>
       <% } %>

        