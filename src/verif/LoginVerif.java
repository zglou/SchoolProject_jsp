package verif;

public class LoginVerif {

	public String login;
	public String pass;

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int validation() {

		if (this.login.isEmpty() || !this.login.matches("(^[a-z0-9._-]+@[a-z0-9._-]{2,}\\.[a-z]{2,4}$)")) {
			return -1;
		} else if (this.pass.isEmpty()) {
			return -2;
		}

		return 1;
		
	}

}
