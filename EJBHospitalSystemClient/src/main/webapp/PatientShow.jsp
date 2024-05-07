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
                <h2><h:outputText value="Patient Records"/></h2>
            </center>
            <center>
            <h:inputText value="#{patient.patientId }"/>
          <h:commandButton action="#{ejbImpl.SearchPatient(patient.patientId) }"
        	 value="Search" />
        <h:dataTable value="#{ejbImpl.showPatientEjb()}" var="e" border="3">
              	    <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Patient Id" />
                    </f:facet>
                    <h:outputText value="#{e.patientId}"/>
                </h:column>
                    <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Patient Name" />
                    </f:facet>
                    <h:outputText value="#{e.name}"/>
                </h:column>
                    <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Patient Age" />
                    </f:facet>
                    <h:outputText value="#{e.age}"/>
                </h:column>
                <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Patient weight" />
                    </f:facet>
                    <h:outputText value="#{e.weight}"/>
                </h:column>
                <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Patient gender" />
                    </f:facet>
                    <h:outputText value="#{e.gender}"/>
                </h:column>
                <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Patient phonenumber" />
                    </f:facet>
                    <h:outputText value="#{e.phoneno}"/>
                </h:column>
                <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Patient email" />
                    </f:facet>
                    <h:outputText value="#{e.email}"/>
                </h:column>            
                  <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Update Patient" />
                    </f:facet>
                    <h:commandButton action="#{ejbImpl.ShowPatientDetails(e) }"
        	          value="Update" /> 
                </h:column>
                <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Delete Patient" />
                    </f:facet>
                    <h:commandButton action="#{ejbImpl.DeletePatientDetails(e) }"
        	          value="Delete" /> 
                </h:column>
        </h:dataTable>
        <h:commandButton action="Home" value="Back" />        
        <h:commandButton action="AddPatient.jsp?faces-redirect=true"
        	 value="Add Patient" />  	 
       </center>      
        </h:form>
    </body>
</html>
</f:view>