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
	'<p/>	Pr�cipitation ( ml/cm� ) : <input id="precipitationMeteo" type="number" step="0.01" />'+
	'<br/>'+
	'<p/>	Type de pr�cipitation : '+
	'<select id ="typePr�cipitationMeteo">'+
  		'<option value="pluie">Pluie</option>'+
  		'<option value="neige">Neige</option>'+
  		'<option value="grele">Gr�le</option>'+
	'</select>'+
	'<br/>'+
	'<p/>	Temp�rature : <input id="temperatureMeteo" type="number" step="0.01"/>'+
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
	'<button type="submit" name="valider" onclick="ajouterDonnee(document.getElementById(\'dateMeteo\').value,document.getElementById(\'lieuMeteo\').value,document.getElementById(\'precipitationMeteo\').value,document.getElementById(\'typePr�cipitationMeteo\').value,document.getElementById(\'temperatureMeteo\').value,document.getElementById(\'ensoleilementMeteo\').value,document.getElementById(\'directionVentMeteo\').value,document.getElementById(\'VitesseVentMeteo\').value,document.getElementById(\'ajoutPhoto\').value);">Valider</button> '+
'</form>';
</script >

