<%@page import="bean.Meteo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="gestion.GestionMeteo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="gestion" class="gestion.GestionMeteo" scope="request" />
<jsp:useBean id="v" class="verif.CoupleDateLieu" scope="request" />

<jsp:include page="header.jsp" />

<body>
	<script>
		var corps = document.getElementById('corps');
		corps.innerHTML = "";
	</script>

	<%
		if (request.getParameter("submit") != null) {
			
			v.setDateRecup(request.getParameter("annee"));
			v.setLieu(request.getParameter("lieu"));
			
			switch (v.validation()) {
				case 1 :
					if (gestion.initCo()) {
						ArrayList<Meteo> tabMeteo = gestion.getMeteoByDay(2018, 12, 24);
						if (!tabMeteo.isEmpty()) {
	%>
	<table>

		<tr>
			<td>Lieu</td>
			<td>Date</td>
		</tr>

		<%
			for (Meteo cell : tabMeteo) {
		%>
		<tr>
			<td><%=cell.getLieu()%></td>
			<td><%=cell.getDate().toString()%></td>
		</tr>
		<%
			}
		%>

	</table>
	<%
		}else{
			%><p>Aucune donn�e trouv�e</p><%
		}
					} else {
	%>
	<p>Impossible de se connecter � la base de donn�e</p>
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

	<h1>Recherche d'une pr�vision m�teo :</h1>


	<form method="post">

		<table>
			<tr>
				<td>Lieu&nbsp;:</td>
				<td><input name="lieu" type="text" value="${v.lieu}" />
			</tr>
			<tr>
				<td>Ann�e (dd/mm/yyyy)&nbsp;:</td>
				<td><input name="annee" type="text" value="${v.dateRecup}" />
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input name="submit" type="submit" value="Recherche" />
			</tr>
		</table>

	</form>

	<script>
		//corps.innerHTML += '<p>Jour recherch� : <input id="dateRechercheJour" type="date"  />';
		//corps.innerHTML += '<input type="button" value="Rechercher" id="valideRecherche" onclick="consultationParJour(document.getElementById(\'dateRechercheJour\').value);"/><br/>';
		//out.print(); recup du bean et affichage des datas
		// faire une fct qu'on appel � chaque fois que le btn est appuyer (js)
	</script>

</body>
