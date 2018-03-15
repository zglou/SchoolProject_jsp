<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="javascriptFunction.js" type="text/javascript"></script>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Météo du jour bonjour</title>
</head>
<body>

	<%
		if ((String) session.getAttribute("user") != "true") {
	%>
	<p>
		<input type="button" value="Connexion" name="connexion"
			onclick="openPage('index.jsp')" /> <input type="button"
			value="Consultation par jour" name="consult"
			onclick="openPage('consultationJour.jsp')" /> <input type="button"
			value="Consultation d'un mois" name="consultationMois"
			onclick="openPage('consultationMois.jsp')" />
	</p>
	<%
		} else {
	%>
	<p>
		<input type="button" value="Connexion" name="connexion"
			onclick="openPage('index.jsp')" /> <input type="button"
			value="Consultation par jour" name="consult"
			onclick="openPage('consultationJour.jsp')" /> <input type="button"
			value="Consultation d'un mois" name="consultationMois"
			onclick="openPage('consultationMois.jsp')" /> <input type="button"
			value="Ajout d'une donnée" name="ajoutUnJour"
			onclick="openPage('ajoutData.jsp')" /> <input type="button"
			value="Ajout de plusieurs données" name="ajoutPlsrJours"
			onclick="openPage('ajoutPlsrData.jsp')" /> <input type="button"
			value="Modification de données" name="Modification"
			onclick="openPage('modifData.jsp')" />
	</p>
	<%
		}
	%>


	<div id="corps"></div>
</body>
</html>