/**
 * Function that allows us to switch between pages
 * @param pageURL  the url destination
 */
function openPage(pageURL)
 {
 window.location.href = pageURL;
 }

/**
 * Function that allows us to modify a row in the database
 * @param date the date of the data to modify
 * @param lieu the place of the data to modify
 * @returns true if the modifications have been applied, false if not
 */
function modificationData( date,  lieu){
	//fct rmi qui fetch dans bdd avec la date et le nom
	if(date == null || date ==""){
		alert("Veuillez selectionner une date.");
		return false;
	}else{
		//retrieve the table of bean and populate a html table

	}
	return true;
}

/**
 * function that allows us to import a file of meteo data into the database
 * @param file the data file to import
 * @returns true if the data have been imported, false if not
 */
function importDataMultiple(file){
	//parsing of the file to see if it fits the good format
	if(file == null || file ==""){
		alert("Veuillez selectionner un fichier.");
		return;
	}else{
		//retrieve the table of bean and populate a html table

	}
	return true;
}

/**
 * function that allows us to retrieve the meteo data of a month
 * @param mois the month to retrieve
 * @returns 
 */
function consultationParMois(mois){
	
	// using rmi to fetch all the data of the month in parameter
	//return a table of bean
	if(mois == null || mois ==""){
		alert("Veuillez selectionner une date.");
		return;
	}else{
		//retrieve the table of bean and populate a html table

	}
}

/**
 * function that allows us to retrieve the meteo data of a day
 * @param jour the day to retrieve
 * @returns 
 */
function consultationParJour(jour){
	
	// using rmi to fetch all the data of the day in parameter
	//return a table of bean
	if(jour == null || jour ==""){
		alert("Veuillez selectionner une date.");
		return;
	}else{
		//retrieve the table of bean and populate a html table
	}
}

/**
 * function that add meteo data in the database
 * @param tabData the table of data
 * @returns
 */
function ajouterDonnee(date, lieu, preci, typePreci, temp, enso, dirVent, VitVent, photo){
	//using rmi to add a row to the database
	if(date == null || date =="" || lieu == null || lieu =="" ||preci == null || preci =="" ||typePreci == null || typePreci =="" ||temp == null || temp =="" ||enso == null || enso =="" ||dirVent == null || dirVent =="" ||VitVent == null || VitVent =="" ){
		alert("Un des champs n'est pas correctement rempli..");
		return;
	}else{
		//retrieve the table of bean and populate a html table
	}
	
	return true;
	
}