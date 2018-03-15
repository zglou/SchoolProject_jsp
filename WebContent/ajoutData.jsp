<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"/>

<script >
    var corps = document.getElementById('corps');
    

    corps.innerHTML = '<p/><form  method="post">'+
	'<br/>'+
	'<p/>	Date : <input id="dateMeteo" type="date" />'+
	'<br/>'+
	'<p/>	Lieu : <input id="lieuMeteo" type="text" />'+
	'<br/>'+
	'<p/>	Précipitation ( ml/cm² ) : <input id="precipitationMeteo" type="number" step="0.01" />'+
	'<br/>'+
	'<p/>	Type de précipitation : '+
	'<select id ="typePrécipitationMeteo">'+
  		'<option value="pluie">Pluie</option>'+
  		'<option value="neige">Neige</option>'+
  		'<option value="grele">Grèle</option>'+
	'</select>'+
	'<br/>'+
	'<p/>	Température : <input id="temperatureMeteo" type="number" step="0.01"/>'+
	'<br/>'+
	'<p/>	Ensoleillement ( % ) : <input id="ensoleilementMeteo" type="number" step="0.01"/>'+
	'<br/>'+
	'<p/>	Direction du vent : <input id="directionVentMeteo" type="text" />'+
	'<br/>'+
	'<p/>	Vitesse du vent ( km/h ) : <input id="VitesseVentMeteo" type="number" step="0.01"/>'+
	'<br/>'+
	'<p/>	Ajouter une photo : <input id="ajoutPhoto" type="file" accept=".jpg" multiple>'+
	'<br/>'+
	'<br/>'+
	'<button type="submit" name="valider" onclick="ajouterDonnee(document.getElementById(\'dateMeteo\').value,document.getElementById(\'lieuMeteo\').value,document.getElementById(\'precipitationMeteo\').value,document.getElementById(\'typePrécipitationMeteo\').value,document.getElementById(\'temperatureMeteo\').value,document.getElementById(\'ensoleilementMeteo\').value,document.getElementById(\'directionVentMeteo\').value,document.getElementById(\'VitesseVentMeteo\').value,document.getElementById(\'ajoutPhoto\').value);">Valider</button> '+
'</form>';
</script >

