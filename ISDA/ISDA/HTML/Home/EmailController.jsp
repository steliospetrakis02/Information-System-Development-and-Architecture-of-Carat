<%@ page import="test.User_service" %>
<%@ page import="test.User" %>

    <%  String email = request.getParameter("email");
        User_service mUser_Service = new User_service();
        String done = mUser_Service.forgot_password(email);
        String next_page;
        if(done == null) { %>
            <jsp:forward page="forgot_pass.jsp" >
                <jsp:param name="errorMessage" value="Wrong email! Try again." />
            </jsp:forward>
       <% }else { %>
            <jsp:forward page="Recoverydone.jsp">
                <jsp:param name="successMessage" value= <%=done %> />
            </jsp:forward>
       <% } %>
