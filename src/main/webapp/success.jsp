<%@ page import= "java.util.ArrayList"
import= "java.util.List"%>
<%	 
    if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
List<String> data = (List<String>)session.getAttribute("userid");	
%>
Welcome
<br>
 Rut =<%=data.get(0)%>
<br>
 Nombre =<%=data.get(1)%>
<br>
 Apellido =<%=data.get(2)%>
<br>
 Telefono =<%=data.get(3)%>
<br>
 Fecha de Ingreso =<%=data.get(4)%> 
<br>

<a href='logout.jsp'>Log out</a>
<%
    }
%>