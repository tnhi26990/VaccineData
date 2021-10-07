<%-- 
    Document   : Vaccine
    Created on : Sep 11, 2021, 12:36:12 AM
    Author     : JavaJuvies
--%>

<%@page import="java.util.regex.Pattern"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccine Data Validation</title>
    </head>
    <body>
        <%
          try {
              String rid = request.getParameter("rID");
              String id = request.getParameter("ID");
              String fname = request.getParameter("fname");
              String mname = request.getParameter("mname");
              String lname = request.getParameter("lname");
              String birdate = request.getParameter("birth");
              String str1 = request.getParameter("street1");
              String str2 = request.getParameter("street2");
              String city = request.getParameter("city");
              String state = request.getParameter("state");
              String zip = request.getParameter("zip");
              String gender = request.getParameter("gender");
              String race[] = request.getParameterValues("race");
              String ethnic = request.getParameter("ethnicity");
              
              String insuholder = request.getParameter("insuholder");
              String insurer = request.getParameter("insurer");
              String idnum = request.getParameter("idnum");
              
              String pid = request.getParameter("pID");
              String pfname = request.getParameter("pfname");
              String pmname = request.getParameter("pmname");
              String plname = request.getParameter("plname");
              String pstr1 = request.getParameter("pstreet1");
              String pstr2 = request.getParameter("pstreet2");
              String pcity = request.getParameter("pcity");
              String pstate = request.getParameter("pstate");
              String pzip = request.getParameter("pzip");
              
              String aname = request.getParameter("aname");
              String astr1 = request.getParameter("astreet1");
              String astr2 = request.getParameter("astreet2");
              String acity = request.getParameter("acity");
              String astate = request.getParameter("astate");
              String azip = request.getParameter("azip");
              
              String Type = request.getParameter("Type");
              String Prod = request.getParameter("Prod");
              String da = request.getParameter("sdf");
              String Manu = request.getParameter("Manu");
              String Lot = request.getParameter("Lot");
              String de = request.getParameter("df");
              String waste = request.getParameter("waste");
              String Adsite = request.getParameter("Site");
              String Route = request.getParameter("Route");
              String Dose = request.getParameter("Dose");
              String Missed = request.getParameter("Missed");
              String Como = request.getParameter("Como");
              String Refvac = request.getParameter("refvac");
              String refrea = request.getParameter("refrea");
              String Vacci = request.getParameter("vacci");
              String eua = request.getParameter("eua");
              
              if (rid == "0") {
                  throw new Exception("Record ID cannot be zero");
              }
              if (gender == null || ethnic == null || race == null) {
                  throw new Exception("Gender/Ethnicity/Race cannot be empty.");
              } else if (zip.trim().length() !=5) {
                  throw new Exception("Zip Code is invalid.");
              }
              
              if (!Lot.trim().isEmpty() && Pattern.matches("[A-Za-z]{2}[0-9]{4}", Lot) == false) {
                  throw new Exception("Lot number must have 2 letters followed by 4 numbers");
              }
              
              if (str2.trim().isEmpty() || mname.trim().isEmpty()) {
                  str2 = mname = "None";
              } 
              
              if (insuholder == null || insurer == null || idnum == null) {
                 insuholder = insurer = idnum = "None";
              }
              
              if (pstr2.trim().isEmpty() || pmname.trim().isEmpty()) {
                  pstr2 = pmname = "None";
              } else if (pzip.trim().length() !=5) {
                  throw new Exception("Provider's zip code is invalid.");
              }
              
              if (astr2.trim().isEmpty()) {
                  astr2 = "None";
              } else if (azip.trim().length() !=5) {
                  throw new Exception("Vaccination Site's zip code is invalid.");
              }
              
              if (!id.startsWith("0")) {
                 throw new Exception("Patient ID must start with 0");
              } else if (id.length() !=6) {
                 throw new Exception("Patient ID must be 6 characters.");
              } else {
                 int s = Integer.parseInt(id.substring(1));
                 if ( s==0) {
                     throw new Exception("Digits in Patient ID can not all be zero");
                 }  
              }
              
              if (Type.trim().isEmpty() || Prod.trim().isEmpty() || da.trim().isEmpty() || Manu.trim().isEmpty()
                      || Lot.trim().isEmpty() || de.trim().isEmpty() || waste.trim().isEmpty()
                      || Route.trim().isEmpty() || Vacci.trim().isEmpty()) {
                 Type = Prod = da = Manu = Lot = de = waste = Route = Vacci = "None";
              }
              if (Missed == null || Como == null || Refvac == null || eua == null || Dose == null) {
                  throw new Exception("MissedAppointment/Comorbidity/RefusedVaccination/EUA/Dose cannot be empty.");
              } else if (Adsite == null) {
                  Adsite = "None";
              }
              
        %>
        <h1>Validation Success</h1>
        <p> Record#<b><%= rid %></b></p>
        <p>Patient ID is <b><%= id %></b>. First name is <b><%= fname %></b>. Middle name is<b> <%= mname %></b>
            <br>Last name is <b><%= lname %></b>. Date of birth is <b><%= birdate %></b> 
            <br>Street 1 is <b><%= str1 %></b>. Street 2 is <b><%= str2 %></b>
            <br>City is <b><%= city %></b>. State is <b><%= state %></b>. Zip code is <b><%= zip %></b>
            <br>Gender is <b><%= gender%></b>. Ethnicity is <b><%= ethnic%></b>
            <br>Race(s) is/are
            <%
                for(int i=0; i < race.length; i++) { 
            %>
                  <% if (i != race.length-1) { %>
                     <b><%= race[i]%></b>, 
                  <% } %>
                  <% if (i == race.length-1) { %>
                         and <b><%= race[i] %></b>.
                  <% } %>
            <% } %>
        </p>
        
        <p>Primary insurance holder is <b><%= insuholder %></b>
            <br>Insurer is <b><%= insurer %></b>
            <br>Group/Individual ID number is <b><%= idnum %></b>
        </p>
        
        <p>Provider ID is <b><%= pid %></b>. First name is <b><%= pfname %></b>. Middle name is<b> <%= pmname %></b>. Last name is <b><%= plname %></b>.
            <br>Street 1 is <b><%= pstr1 %></b>. Street 2 is <b><%= pstr2 %></b>
            <br>City is <b><%= pcity %></b>. State is <b><%= pstate %></b>. Zip code is <b><%= pzip %></b>
        </p>
        
        <p>Vaccination Site Name is <b><%= aname %></b>.
            <br>Street 1 is <b><%= astr1 %></b>. Street 2 is <b><%= astr2 %></b>
            <br>City is <b><%= acity %></b>. State is <b><%= astate %></b>. Zip code is <b><%= azip %></b>
        </p>
        
        <p>Vaccine Type is <b><%= Type %></b>. Product is <b><%= Prod %></b>. Date Administered is <b> <%= da %></b>
            <br>Manufacturer is <b><%= Manu %></b>. Lot Number is <b><%= Lot %></b>. Expiration Date is <b><%= de %></b>
            <br># Wasted is <b><%= waste %></b>. Administration Site is <b><%= Adsite %></b>. Administration Route is <b><%= Route %></b>
            <br>Dose Number is <b><%= Dose %></b>. Missed Appointment is <b><%= Missed%></b>. Comorbidity is <b><%= Como%></b>.
            <br>Refused Vaccination is <b><%= Refvac %></b>.
            <% if (Refvac.startsWith("Y")) { %>
                Reason is <b><%= refrea %></b>.
            <% } %>
            Received EUA Fact Sheet for Recipients is <b><%= eua %></b>.
            <br>Vaccinator is <b><%= Vacci %></b>.
        </p>               
     
        <% } catch (Exception e) { %>
        <h2>Validation Failure</h2>
        <p>Process error: <b><%= e.getMessage() %></b></p>
        <% } %>
    </body>
</html>
