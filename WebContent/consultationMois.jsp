<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"/>
<script >
    var corps = document.getElementById('corps');
    corps.innerHTML = "";

</script>
		

		<script>
			corps.innerHTML+='<p>Mois recherch� : <input name="dateRechercheMois" type="date"  /><input type="button" value="Rechercher" name="valideRecherche" onclick=";"/><br/>';
			//out.print(); recup du bean et affichage des datas
			// faire une fct qu'on appel � chaque fois que le btn est appuyer (js)
			corps.innerHTML +="<br/>";
			corps.innerHTML +="<br/>";
			corps.innerHTML +="<br/>";
			corps.innerHTML +="Date : 01/09/2016";
			corps.innerHTML +="<br/>";
			corps.innerHTML +="<br/>";
			corps.innerHTML +="lieu : hgiuhgiuheihgb<br/><br/>Pr�cipitation : 52 ml/cm�<br/>....";
			
			
			
		
		</script>
