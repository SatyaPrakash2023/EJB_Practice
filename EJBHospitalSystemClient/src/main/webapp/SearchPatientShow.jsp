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
        <h:dataTable value="#{patientt}" var="e" border="3">
              	 <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Patient Id" />
                    </f:facet>
                    <h:outputText value="#{patientt.patientId}"/>
                </h:column>
                <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Patient Name" />
                    </f:facet>
                    <h:outputText value="#{patientt.name}"/>
                </h:column>
                <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Patient age" />
                    </f:facet>
                    <h:outputText value="#{patientt.age}"/>
                </h:column>
                <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Patient weight" />
                    </f:facet>
                    <h:outputText value="#{patientt.weight}"/>
                </h:column>
                <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Patient gender" />
                    </f:facet>
                    <h:outputText value="#{patientt.gender}"/>
                </h:column>
                <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Patient address" />
                    </f:facet>
                    <h:outputText value="#{patientt.address}"/>
                </h:column>
                <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Patient phonenumber" />
                    </f:facet>
                    <h:outputText value="#{patientt.phoneno}"/>
                </h:column>
                <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Patient disease" />
                    </f:facet>
                    <h:outputText value="#{patientt.disease}"/>
                </h:column>                        
                  <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Update Patient" />
                    </f:facet>
                    <h:commandButton action="#{ejbImpl.ShowPatientDetails(e) }"
        	          value="Update" />&nbsp;
                </h:column>
        </h:dataTable>
        <h:commandButton action="PatientShow"
        	          value="Back" />         	 
       </center>      
        </h:form>
    </body>
</html>
</f:view>