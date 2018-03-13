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
	'<p/>	Précipitation ( ml/cm² ) : <input name="precipitationMeteo" type="number" />'+
	'<br/>'+
	'<p/>	Type de précipitation : '+
	'<select name ="typePrécipitationMeteo">'+
  		'<option value="pluie">Pluie</option>'+
  		'<option value="neige">Neige</option>'+
  		'<option value="grele">Grèle</option>'+
	'</select>'+
	'<br/>'+
	'<p/>	Température : <input name="temperatureMeteo" type="number" step="0.01"/>'+
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
	'<button type="submit" name="valider" onclick=";">Valider</button> '+
'</form>';
</script >
<%
	String x = request.getParameter("valider");
	%>
	<br>
	 <%
	 if(x!=null )
	{
		boolean send = true;
		String dateM = request.getParameter("dateMeteo");
		String lieuM = request.getParameter("lieuMeteo");
		String precipitationM = request.getParameter("precipitationMeteo");
		String typePrecipitationM = request.getParameter("typePrécipitationMeteo");
		String temperatureM = request.getParameter("temperatureMeteo");
		String ensoleilementM = request.getParameter("ensoleilementMeteo");
		String dirVentM = request.getParameter("directionVentMeteo");
		String vitVentM = request.getParameter("VitesseVentMeteo");
		String ajoutPhotoM = request.getParameter("ajoutPhoto");
	
	    //try something
		
	 
	    out.println(dateM);
	    out.print("<br>");  
	    if(lieuM.matches("^([a-zA-Z\u0080-\u024F]+(?:. |-| |'))*[a-zA-Z\u0080-\u024F]*$")){
		  
			out.println(lieuM);
			out.print("<br>");
	    }else{
			send = false;
	    }
	    out.print(precipitationM);
	    out.print("<br>");  
	    out.print(typePrecipitationM);
	    out.print("<br>");  
	    out.print(temperatureM);
	    out.print("<br>");  
	    out.print(ensoleilementM);
	    out.print("<br>");  
	    if(dirVentM.matches("^([a-zA-Z\u0080-\u024F]+(?:. |-| |'))*[a-zA-Z\u0080-\u024F]*$")){
		  
			out.println(dirVentM);
			out.print("<br>");
	  	}else{
		 	send=false;
	  	}
	  	out.print("<br>");  
	  	out.print(vitVentM);
	 	out.print("<br>");  
	  	out.print(ajoutPhotoM);
	
	  	out.print("<br>");  
	 
	  
	}
	 
	%>
