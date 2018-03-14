<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"/>

<script >
    var corps = document.getElementById('corps');

	corps.innerHTML+='<p>Date et lieu des données à modifier : ';
	corps.innerHTML+= '<input id="dateRechercheMois" type="date"  />	';
	corps.innerHTML+= '<input id="lieu" type="txt" placeholder="Lieu" />';
	corps.innerHTML+= '<input type="button" value="Rechercher" name="valideRecherche" onclick="modificationData(document.getElementById(\'dateRechercheMois\').value, document.getElementById(\'lieu\').value);"/><br/>';
</script>