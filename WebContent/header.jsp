<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="javascriptFunction.js" type="text/javascript"></script>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Météo du jour bonjour</title>
</head>
<body>

<%
	//ici true == si user est connecté
	if(!true){
		  out.print("<p>Identifiant : <input type='text' name='pseudo' /><br/>Mot de passe : <input type='text' name='mdp' /></p>");  

	}

	%>
		
		<p>
			<input type="button" value="Consultation par jour" name="consult" onclick="openPage('consultationJour.jsp')"/>
			<input type="button" value="Consultation d'un mois" name="consultationMois" onclick="openPage('consultationMois.jsp')"/>
			<input type="button" value="Ajout d'une donnée" name="ajoutUnJour" onclick="openPage('ajoutData.jsp')"/>
			<input type="button" value="Ajout de plusieurs données" name="ajoutPlsrJours" onclick="openPage('ajoutPlsrData.jsp')"/>
			<input type="button" value="Modification de données" name="Modification" onclick="openPage('modifData.jsp')"/>
			
		</p>	
		<div id="corps"></div>
</body>
</html>