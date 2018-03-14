<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"/>
<script >
    var corps = document.getElementById('corps');
    corps.innerHTML = "";

</script>
		

		<script>
			corps.innerHTML+='<p>Mois recherché : <input id="dateRechercheMois" type="date"  />';
			corps.innerHTML += '<input type="button" value="Rechercher" id="valideRecherche" onclick="consultationParMois(document.getElementById(\'dateRechercheMois\').value);"/><br/>';
			//out.print(); recup du bean et affichage des datas
			
			
		
		</script>
