package verif;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

public class CoupleDateLieu {

	public String lieu;
	public String dateRecup;
	public LocalDate date;
	
	public CoupleDateLieu() {
		lieu = null;
		dateRecup = null;
	}

	public String getLieu() {
		return lieu;
	}

	public void setLieu(String lieu) {
		this.lieu = lieu;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public String getDateRecup() {
		return dateRecup;
	}

	public void setDateRecup(String dateRecup) {
		this.dateRecup = dateRecup;
	}

	public int validation() {
		if (this.dateRecup.isEmpty() || !this.dateRecup.matches("(^(((0[1-9]|1[0-9]|2[0-8])[\\/](0[1-9]|1[012]))|((29|30|31)[\\/](0[13578]|1[02]))|((29|30)[\\/](0[4,6,9]|11)))[\\/](19|[2-9][0-9])\\d\\d$)|(^29[\\/]02[\\/](19|[2-9][0-9])(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)$)")) {
			return -1;
		}else {
			 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
			 formatter = formatter.withLocale(Locale.FRANCE);
			 this.date = LocalDate.parse(this.dateRecup, formatter);
		}

		if(this.lieu.isEmpty() || !this.lieu.matches("(^[a-zA-Z]+$)")) {
			return -2;
		}
		
		return 1;
	}

}
