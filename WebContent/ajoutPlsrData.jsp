<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"/>

<script >
    var corps = document.getElementById('corps');
    

	corps.innerHTML+='<p>Fichier que vous voulez importer : ';
	corps.innerHTML+= '<br/>';
    corps.innerHTML+='<input id="fichierData" type="file" accept=".txt" multiple><br/>';
    corps.innerHTML+='<input name="validation" type="button" value="Valider" onclick="importDataMultiple(document.getElementById(\'fichierData\').value);"><br/>';

</script>