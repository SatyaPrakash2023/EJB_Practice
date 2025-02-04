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
            <h:inputText value="#{doctor.doctorId }"/>
          <h:commandButton action="#{ejbImpl.SearchDoctor(doctor.doctorId) }"
        	 value="Search" />
        <h:dataTable value="#{ejbImpl.showDoctorEjb()}" var="e" border="3">
              	    <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Doctor Id" />
                    </f:facet>
                    <h:outputText value="#{e.doctorId}"/>
                </h:column>
                    <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Doctor Name" />
                    </f:facet>
                    <h:outputText value="#{e.doctorName}"/>
                </h:column>
                    <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Doctor Department" />
                    </f:facet>
                    <h:outputText value="#{e.dept}"/>
                </h:column>             
                  <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Update Doctor" />
                    </f:facet>
                    <h:commandButton action="#{ejbImpl.ShowDoctorDetails(e) }"
        	          value="Update" styleClass="width:100%;lenght:100%"/> 
                </h:column>
                <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Delete Doctor" />
                    </f:facet>
                    <h:commandButton action="#{ejbImpl.DeleteDoctorDetails(e) }" value="Delete" /> 
                </h:column>
        </h:dataTable>
        <h:commandButton action="Home" value="Back" />         
        <h:commandButton action="AddDoctor.jsp?faces-redirect=true" value="Add Doctor" />     	 
       </center>      
        </h:form>
    </body>
</html>
</f:view>