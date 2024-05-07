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
                <h2><h:outputText value="Update Doctor Records"/></h2>
            </center>
            <center>
              <h:outputLabel value="Patient Id"/>
              <h:inputText value="#{patientUp.patientId}"/><br></br>
              <h:outputLabel value="Patient Name" />
              <h:inputText value="#{patientUp.name}"/><br></br>
              <h:outputLabel value="Patient age" />
              <h:inputText value="#{patientUp.age}"/><br></br>
              <h:outputLabel value="Patient weight" />
              <h:inputText value="#{patientUp.weight}"/><br></br>
              <h:outputLabel value="Patient gender" />
              <h:inputText value="#{patientUp.gender }"></h:inputText><br></br>
			  <h:outputLabel value="Patient address" />
              <h:inputText value="#{patientUp.address}"/><br></br> 
              <h:outputLabel value="Enter your phone number:"/>
			  <h:inputText  value="#{patientUp.phoneno}" required="true"/><br></br>
			  <h:outputLabel value="Patient Disease" />
              <h:inputText value="#{patientUp.disease}"/><br></br>
              <h:outputLabel value="Doctor Id" />
              <h:inputText value="#{patientUp.doctorId}"/><br></br>
              <h:outputLabel value="Patient email" />
              <h:inputText value="#{patientUp.email}"/><br></br>
            <h:commandButton action="PatientShow"
        	 value="Back" /> &nbsp; 
            <h:commandButton action="#{ejbImpl.UpdatePatient(patientUp) }"
        	 value="Update" />
       </center>      
        </h:form>
    </body>
</html>
</f:view>