<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"/>

<script >
    var corps = document.getElementById('corps');
    

    corps.innerHTML = '<p/><form  method="post">'+
	'<br/>'+
	'<p/>	Date : <input name="dateMeteo" type="date" />'+
	'<br/>'+
	'<p/>	Lieu : <input name="lieuMeteo" type="text" />'+
	'<br/>'+
	'<p/>	Pr�cipitation ( ml/cm� ) : <input name="precipitationMeteo" type="number" />'+
	'<br/>'+
	'<p/>	Type de pr�cipitation : '+
	'<select name ="typePr�cipitationMeteo">'+
  		'<option value="pluie">Pluie</option>'+
  		'<option value="neige">Neige</option>'+
  		'<option value="grele">Gr�le</option>'+
	'</select>'+
	'<br/>'+
	'<p/>	Temp�rature : <input name="temperatureMeteo" type="number" step="0.01"/>'+
	'<br/>'+
	'<p/>	Ensoleillement ( % ) : <input name="ensoleilementMeteo" type="number" step="0.01"/>'+
	'<br/>'+
	'<p/>	Direction du vent : <input name="directionVentMeteo" type="text" />'+
	'<br/>'+
	'<p/>	Vitesse du vent ( km/h ) : <input name="VitesseVentMeteo" type="number" step="0.01"/>'+
	'<br/>'+
	'<p/>	Ajouter une photo : <input name="ajoutPhoto" type="file" accept=".png, .jpg, .jpeg" multiple>'+
	'<br/>'+
	'<br/>'+
	'<button type="submit" name="valider">Valider</button> '+
'</form>';
</script >
