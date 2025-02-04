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
        <h:dataTable value="#{doctorr}" var="e" border="3">
              	 <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Doctor Id" />
                    </f:facet>
                    <h:outputText value="#{doctorr.doctorId}"/>
                </h:column>
                <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Doctor Name" />
                    </f:facet>
                    <h:outputText value="#{doctorr.doctorName}"/>
                </h:column>
                <h:column>
                    <f:facet name="header">
                    	<h:outputLabel value="Doctor Dept" />
                    </f:facet>
                    <h:outputText value="#{doctorr.dept}"/>
                </h:column>
                                
                  <h:column>
                     <f:facet name="header">
                    	<h:outputLabel value="Update Doctor" />
                    </f:facet>
                    <h:commandButton action="#{ejbImpl.ShowDoctorDetails(e) }"
        	          value="Update" /> &nbsp;
                </h:column>
        </h:dataTable> 
        <h:commandButton action="DoctorShow" value="Back" />        	 
       </center>      
        </h:form>
    </body>
</html>
</f:view>