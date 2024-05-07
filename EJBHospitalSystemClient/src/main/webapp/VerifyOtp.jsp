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
                <h2><h:outputText value="Verify your otp"/></h2>
            </center>
            <center>
           	 <h:outputLabel value="Enter your patient id:"/>
           	 <h:inputText value="#{patient.patientId}"/><br></br>
           	 <h:outputLabel value="Enter your otp:"/>
           	 <h:inputText value="#{patient.otp}"/><br></br>
           	 <h:commandButton value="Submit" action="#{ejbImpl.VerifyOtp(patient) }"/>      	 
       </center>      
        </h:form>
    </body>
</html>
</f:view>