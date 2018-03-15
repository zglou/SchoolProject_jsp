<%@page import="server.GestionClient"%>
<%@page import="bean.Meteo"%>
<%@page import="java.util.Base64"%>
<%@page import="bean.Photo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="gestion.GestionMeteo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="v" class="verif.CoupleDateLieu" scope="request" />
<jsp:include page="header.jsp" />

<link rel="stylesheet" href="style.css" />

<h1>Recherche d'une prévision méteo pour le mois :</h1>


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

<%
	GestionMeteo gestion = new GestionMeteo();

	if (request.getParameter("submit") != null) {

		v.setDateRecup(request.getParameter("annee"));
		v.setLieu(request.getParameter("lieu"));

		switch (v.validation()) {
		case 1:
			if (gestion.initCo()) {
				ArrayList<Meteo> tabMeteo = gestion.getMeteoByMonth(v.date.getYear(), v.date.getMonthValue(),
						v.getLieu());
				if (!tabMeteo.isEmpty()) {
%>
<table>

	<tr>
		<td>Lieu</td>
		<td>Date</td>
		<td>Ensoleilement</td>
		<td>Precipitation</td>
		<td>Temperature</td>
		<td>TypePrecipitation</td>
		<td>Direction</td>
		<td>Vitesse</td>
	</tr>

	<%
		for (Meteo cell : tabMeteo) {
	%>
	<tr>
		<td><%=cell.getLieu()%></td>
		<td><%=cell.getDate().toString()%></td>
		<td><%=cell.getDonnees().getEnsoleilement()%></td>
		<td><%=cell.getDonnees().getPrecipitation()%></td>
		<td><%=cell.getDonnees().getTemperature()%></td>
		<td><%=cell.getDonnees().getTypePrecipitation()%></td>
		<td><%=cell.getDonnees().getVent().getDirection()%></td>
		<td><%=cell.getDonnees().getVent().getVitesse()%></td>

		<%
			if (!cell.getDonnees().photos.isEmpty()) {
									for (Photo photo : cell.getDonnees().photos) {
		%>
		<td><img style="width: 200px;"
			src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(photo.getImg())%>" /></td>
		<%
			}
								}
		%>

	</tr>
	<%
		}
	%>

</table>
<%
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
%>

