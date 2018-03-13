<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<jsp:include page="header.jsp"/>
<body>
<script >
    var corps = document.getElementById('corps');
    corps.innerHTML = "";

</script>
		

		<script>
			corps.innerHTML+='<p>Jour recherché : <input name="dateRechercheJour" type="date"  /><input type="button" value="Rechercher" name="valideRecherche" /><br/>';
			//out.print(); recup du bean et affichage des datas
			// faire une fct qu'on appel à chaque fois que le btn est appuyer (js)
			corps.innerHTML +="<br/>";
			corps.innerHTML +="<br/>";
			corps.innerHTML +="<br/>";
			corps.innerHTML +="Date : 01/09/2016";
			corps.innerHTML +="<br/>";
			corps.innerHTML +="<br/>";
			corps.innerHTML +="lieu : hgiuhgiuheihgb<br/><br/>Précipitation : 52 ml/cm²<br/>....";
			
			
			
		
		</script>
</body>
