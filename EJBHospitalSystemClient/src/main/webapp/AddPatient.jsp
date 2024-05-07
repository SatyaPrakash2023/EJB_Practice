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
              <h:outputLabel value="Patient Id"/>
              <h:inputText value="#{patient.patientId}"/><br></br>
              <h:outputLabel value="Patient Name" />
              <h:inputText value="#{patient.name}"/><br></br>
              <h:outputLabel value="Patient age" />
              <h:inputText value="#{patient.age}"/><br></br>
              <h:outputLabel value="Patient weight" />
              <h:inputText value="#{patient.weight}"/><br></br>
              <h:outputLabel value="Patient gender" />
              <h:selectOneMenu value ="#{patient.gender}"> 
   					<f:selectItem itemValue = "Male" itemLabel = "Male" /> 
   					<f:selectItem itemValue = "Female" itemLabel = "Female" /> 
			  </h:selectOneMenu><br></br>
			  <h:outputLabel value="Patient address" />
              <h:inputText value="#{patient.address}"/><br></br> 
              <h:outputLabel value="Enter your phone number:"/>
			  <h:inputText  value="#{patient.phoneno}" required="true"/><br></br>
			  <h:outputLabel value="Patient Disease" />
              <h:inputText value="#{patient.disease}"/><br></br>
              <h:outputLabel value="Doctor Id" />
              <h:inputText value="#{patient.doctorId}"/><br></br>
              <h:outputLabel value="Password" />
              <h:inputText value="#{patient.password}"/><br></br>
              <h:outputLabel value="Patient email" />
              <h:inputText value="#{patient.email}"/><br></br>
              <h:commandButton action="PatientShow" value="Back" /> 
            <h:commandButton action="#{ejbImpl.AddPatient(patient) }" value="Add Patient" />
       </center>      
        </h:form>
    </body>
</html>
</f:view> 