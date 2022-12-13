<%@ page import="test.User_service" %>

<%              boolean done = true; 
                boolean donePass = true;
                boolean doneEmail = true;
                String email = request.getParameter("Email"); 
                String name = request.getParameter("Name"); 
                String password = request.getParameter("Password"); 
                String retypePassword = request.getParameter("RetypePassword"); 
                String role = request.getParameter("radiogroup1");

                if(name.length() < 5){ %>
                    <jsp:forward page="register.jsp" >
                        <jsp:param name="namelength" value="Name must be at least 5 characters long!" />
                        <jsp:param name="colorName" value="red" />
                    </jsp:forward>
                <%}

                if(password.length() < 6){ %>
                    <jsp:forward page="register.jsp" >
                        <jsp:param name="passlength" value="Password must be at least 6 characters long!" />
                        <jsp:param name="colorPass" value="red" />
                    </jsp:forward>
                <%}
                

                if(!(password.equals(retypePassword))){
                    done = false;
                    donePass = false;
                }

                if(!role.equals("Client")) {
                    String[] split_email = email.split("@");
                    if(!split_email[1].equals("intellireports.com")) {
                        done = false;
                        doneEmail = false;
                    } 
                }
                
                if(done == true) {
                    User_service myUser_Service = new User_service();
                    myUser_Service.addUser(email, password, name); %>
                    <jsp:forward page="register.jsp" >
                            <jsp:param name="message" value="Registration successful!" />
                        </jsp:forward>
                    
                
                <% } else { 
                    if(!doneEmail) { 
                        if(!donePass) { %>
                            <jsp:forward page="register.jsp" >
                                <jsp:param name="errorMessage" value="This is not a corporate email. Try XXXX@intellireports.com" />
                                <jsp:param name="colorEmail" value="red" />
                                <jsp:param name="colorPass" value="red" />
                            </jsp:forward>
                    
                    <%  } else { %>
                            <jsp:forward page="register.jsp" >
                                <jsp:param name="errorMessage" value="This is not a corporate email. Try XXXX@intellireports.com" />
                                <jsp:param name="colorEmail" value="red" />
                            </jsp:forward>
                       <% }  
            
                    } else {
                        if(!donePass) { %>
                            <jsp:forward page="register.jsp" >
                                <jsp:param name="errorMessage" value="Password and confirm password do not match. Try again!" />
                                <jsp:param name="colorPass" value="red" />
                            </jsp:forward>
                      <%  }
                    
                        
                    }
                   
                  } %>
                