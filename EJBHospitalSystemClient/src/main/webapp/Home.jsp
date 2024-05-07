<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%> 
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%> 

<f:view>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h:form>
        		<center>
                <h2><h:outputText value="Doctor Records"/></h2>
            </center>
            <center>
            <nav>
            	<h:commandLink value="DoctorShow" action="DoctorShow"/>&nbsp;&nbsp;&nbsp;
            	<h:commandLink value="PatientShow" action="PatientShow"/>&nbsp;&nbsp;&nbsp;
            	<h:commandLink value="Logout" action="Login"/>        	
            </nav>    	 
       </center>      
        </h:form>
    </body>
</html>
</f:view>