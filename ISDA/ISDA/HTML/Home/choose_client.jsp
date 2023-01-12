<% String client = (String) request.getParameter("client"); 
    session.setAttribute("client", client);
%>
<jsp:forward page="finalmainPlanner.jsp"/>
