package Servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginHandlerServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User myUser = new User();
        boolean done = myUser.authenticate(email, password);
        String next_page;

        if(done == true) {
            next_page = "finalmain.jsp";

        } else {
            next_page = "login.jsp";
        }

        RequestDispatcher rd = request.getRequestDispatcher(next_page);
        rd.forward(request,response);
    }
}