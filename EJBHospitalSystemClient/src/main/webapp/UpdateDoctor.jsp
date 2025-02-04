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
              <h:outputLabel value="Doctor Id" />
              <h:inputText value="#{editdoctor.doctorId}"/><br></br>
              <h:outputLabel value="Doctor Name" />
              <h:inputText value="#{editdoctor.doctorName}"/><br></br>
              <h:outputLabel value="Doctor Dept" />
              <h:inputText value="#{editdoctor.dept}"/><br></br>
           <h:commandButton action="DoctorShow" value="Back" /> &nbsp;   
        <h:commandButton action="#{ejbImpl.UpdateDoctor(editdoctor) }" value="Update" /> 
       </center>      
        </h:form>
    </body>
</html>
</f:view>