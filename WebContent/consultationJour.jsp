<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<jsp:include page="header.jsp"/>
<body>
<script >
    var corps = document.getElementById('corps');
    corps.innerHTML = "";

</script>
		

		<script>
			corps.innerHTML+='<p>Jour recherché : <input id="dateRechercheJour" type="date"  />';
			corps.innerHTML += '<input type="button" value="Rechercher" id="valideRecherche" onclick="consultationParJour(document.getElementById(\'dateRechercheJour\').value);"/><br/>';
			//out.print(); recup du bean et affichage des datas
			// faire une fct qu'on appel à chaque fois que le btn est appuyer (js)
	
		</script>
</body>
