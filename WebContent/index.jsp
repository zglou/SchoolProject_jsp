<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@page import="gestion.GestionMeteo"%>
<%@page import="bean.Meteo"%>
<HTML>
<jsp:useBean id="l" class="verif.LoginVerif" scope="request" />
<jsp:include page="header.jsp" />

<body>

	<%
		if ((String) session.getAttribute("user") != "true") {
	%>

	<h1>Connexion :</h1>


	<form method="post">

		<table>
			<tr>
				<td>Login&nbsp;:</td>
				<td><input name="pseudo" type="text" value="${l.login}" />
			</tr>
			<tr>
				<td>Mot de passe&nbsp;:</td>
				<td><input name="mdp" type="password" value="${l.pass}" />
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input name="submit" type="submit" value="Connexion" />
			</tr>
		</table>

	</form>

	<%
		}else{
			
			%>

			<h1>Vous êtes connecté</h1>

			<%
			
		}
	%>

	<%
		if (request.getParameter("submit") != null) {

			l.setLogin(request.getParameter("pseudo"));
			l.setPass(request.getParameter("mdp"));

			GestionMeteo gestion = new GestionMeteo();

			switch (l.validation()) {
			case 1:

				if (gestion.initCo()) {
					boolean auth = gestion.Authentification(l.getLogin(), l.getPass());
					if (auth) {
						session.setAttribute("user", "true");
						%>
						<p>Connection réussie</p>
						<%
					} else {
	%>
	<p>L'authentification a échoué</p>
	<%
		}
				}

				break;
			case -1:
	%>
	<p>Login non valide</p>
	<%
		break;
			case -2:
	%>
	<p>Mot de passe non valide</p>
	<%
		break;
			}
		}
	%>

</body>