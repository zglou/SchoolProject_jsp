<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<HTML>
	<jsp:include page="header.jsp"/>

<script >
    var corps = document.getElementById('corps');
    corps.innerHTML = "";
	corps.innerHTML +="<table>";
	
	corps.innerHTML +="<tr>";
	
	corps.innerHTML += "<th>Date</th>";
	corps.innerHTML += "<th>Lieu</th>";
	corps.innerHTML += "<th>Précipitation</th>";
	corps.innerHTML += "<th>Type de précipitation</th>";
	corps.innerHTML += "<th>Température</th>";
	corps.innerHTML += "<th>Ensoleillement</th>";
	corps.innerHTML += "<th>Direction du vent</th>";
	corps.innerHTML += "<th>Vitesse du vent</th>";
	corps.innerHTML += "<th>Photos</th>";
	corps.innerHTML +="</tr>";

	corps.innerHTML +="</table>";



</script>
	

	



<P>

</BODY>
</HTML>