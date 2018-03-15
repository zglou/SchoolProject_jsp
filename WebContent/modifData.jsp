<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
<%@page import="gestion.GestionMeteo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Meteo"%>
<jsp:useBean id="v" class="verif.CoupleDateLieu" scope="request" />

<body>

	<h1>Recherche d'une prévision méteo à modifier :</h1>


	<form method="post">

		<table>
			<tr>
				<td>Lieu&nbsp;:</td>
				<td><input name="lieu" type="text" value="${v.lieu}" />
			</tr>
			<tr>
				<td>Année (dd/mm/yyyy)&nbsp;:</td>
				<td><input name="annee" type="text" value="${v.dateRecup}" />
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input name="submit" type="submit" value="Recherche" />
			</tr>
		</table>

	</form>

	</br>

	<%
		GestionMeteo gestion = new GestionMeteo();

		if (request.getParameter("submit") != null) {

			v.setDateRecup(request.getParameter("annee"));
			v.setLieu(request.getParameter("lieu"));

			switch (v.validation()) {
			case 1:
				if (gestion.initCo()) {
					ArrayList<Meteo> tabMeteo = gestion.getMeteoByDay(v.date.getYear(), v.date.getMonthValue(),
							v.date.getDayOfMonth(), v.getLieu());
					if (!tabMeteo.isEmpty()) {
						Meteo cell = tabMeteo.get(0);
	%>

	<form method="post">

		<table>
			<tr>
				<td>Lieu&nbsp;:</td>
				<td><input name="lieu" type="text" value="<%=cell.getLieu()%>" />
			</tr>
			<tr>
				<td>Année (dd/mm/yyyy)&nbsp;:</td>
				<td><input name="annee" type="text"
					value="<%=cell.getDate().toString()%>" />
			</tr>
			<tr>
				<td>Ensoleilement&nbsp;:</td>
				<td><input name="soleil" type="text"
					value="<%=cell.getDonnees().getEnsoleilement()%>" />
			</tr>
			<tr>
				<td>Precipitation&nbsp;:</td>
				<td><input name="precipitation" type="text"
					value="<%=cell.getDonnees().getPrecipitation()%>" />
			</tr>
			<tr>
				<td>Température&nbsp;:</td>
				<td><input name="temp" type="text"
					value="<%=cell.getDonnees().getTemperature()%>" />
			</tr>
			<tr>
				<td>Type de précipitation&nbsp;:</td>
				<td><input name="typePreci" type="text"
					value="<%=cell.getDonnees().getTypePrecipitation()%>" />
			</tr>
			<tr>
				<td>Direction du vent&nbsp;:</td>
				<td><input name="direction" type="text"
					value="<%=cell.getDonnees().getVent().getDirection()%>" />
			</tr>
			<tr>
				<td>Vitesse du vent&nbsp;:</td>
				<td><input name="vitesse" type="text"
					value="<%=cell.getDonnees().getVent().getVitesse()%>" />
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input name="modifier" type="submit" value="Modifier" />
			</tr>
		</table>
		<input type="hidden" name="idMeteo" value="<%=cell.getIdMeteo()%>">
		<input type="hidden" name="idDonnee" value="<%=cell.getDonnees().getIdDonnee()%>">
		<input type="hidden" name="idVent" value="<%=cell.getDonnees().getVent().getIdVent()%>">
	</form>

	<%//FAIRE UN BOUTON POUR SUP LES PHOTOS ET UN POUR AJOUTER
		} else {
	%><p>Aucune donnée trouvée</p>
	<%
		}
				} else {
	%>
	<p>Impossible de se connecter à la base de donnée</p>
	<%
		}
				break;
			case -1:
	%>
	<p>Date non valide</p>
	<%
		break;
			case -2:
	%>
	<p>Lieu non valide</p>
	<%
		break;
			}
		}

		if (request.getParameter("modifier") != null) {
			
		}
	%>

</body>