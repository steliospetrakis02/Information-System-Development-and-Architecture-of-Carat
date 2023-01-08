<%@ page import="test.*" %>
<%@ page import="java.util.List" %>
<%@ page errorPage="error_insert.jsp"%>

<%  Reports rep = new Reports();
    String email = (String) session.getAttribute("client_email");
    String[] data = new String[4];
    data[0] = request.getParameter("add_1"); 
    data[1] = request.getParameter("add_2"); 
    data[2] = request.getParameter("add_3"); 
    data[3] = request.getParameter("add_4");
    for(String value: data) { 
        Double.parseDouble(value);  

    }
    int index = 0;
    String GRPs = "0"; 
    String Reach_1 = "0.0"; 
    String Reach_3 = "0.0";
    String SOV = "0.0";
    String Insertions = "0"; 
    String GRPs_Week = "0";
    String Weeks = "0";
    String Weeks_4x = "0";
    String Impressions = "0";
    String clicks = "0";
    String click_rate = "0.0";
    String Viewability= "0.0"; 
    Preferences pref = new Preferences();
    List<String> prefs = pref.get_Client_Preferences((String) session.getAttribute("client_email")); 
    for(String p: prefs) {
        if(p.equals("GRPs")){
            GRPs = data[index];
            index++;
        } else if(p.equals("Reach1+")) {
            Reach_1 = data[index];
            index++;
        } else if(p.equals("Reach3+")) {
            Reach_3 = data[index];
            index++;
        } else if(p.equals("SOV")) {
            SOV = data[index];
            index++;
        } else if(p.equals("Insertions")) {
            Insertions = data[index];
            index++;
        } else if(p.equals("Grps/Week")) {
            GRPs_Week = data[index];
            index++;
        } else if(p.equals("Weeks")) {
            Weeks = data[index];
            index++;
        } else if(p.equals("Weeks(4X)")) {
            Weeks_4x = data[index];
            index++;
        } else if(p.equals("Impressions")) {
            Impressions = data[index];
            index++;
        } else if(p.equals("Clicks")) {
            clicks = data[index];
            index++;
        } else if(p.equals("Click Rate")) {
            click_rate = data[index];
            index++;
        } else if(p.equals("Viewability")) {
            Viewability = data[index];
            index++;
        }

    }
    try{
    %> <h1> LOL <h1> <%

    rep.set_data(email , GRPs, Reach_1, Reach_3, SOV, Insertions, GRPs_Week, Weeks, Weeks_4x, Impressions, clicks,click_rate,  Viewability); 

    }
    catch (Exception e){
        %> <h1> <%= e %> <h1> <%
    }%>
    <jsp:forward page="insert.jsp" />