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
                <h2><h:outputText value="Add Doctor Records"/></h2>
            </center>
            <center>
              <h:outputLabel value="Doctor Id" />
              <h:inputText value="#{doctor.doctorId}"/><br></br>
              <h:outputLabel value="Doctor Name" />
              <h:inputText value="#{doctor.doctorName}"/><br></br>
              <h:outputLabel value="Doctor Dept" />
              <h:inputText value="#{doctor.dept}"/><br></br>
           <h:commandButton action="DoctorShow" value="Back" />        
        <h:commandButton action="#{ejbImpl.AddDoctor(doctor) }" value="Add Doctor" /> 
       </center>      
        </h:form>
    </body>
</html>
</f:view>