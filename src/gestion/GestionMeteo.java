package gestion;

import java.io.InputStream;
import java.rmi.RemoteException;
import java.util.ArrayList;

import bean.Meteo;
import server.GestionClient;

public class GestionMeteo {

	public GestionClient manager;
	public boolean isConnected;

	public GestionMeteo() {
		manager = new GestionClient();
		isConnected = false;
	}

	public boolean initCo() {
		try {
			System.out.println(manager.gestion);
			if (manager.gestion.initCo()) {	
				isConnected = true;
				return true;
			}
		} catch (RemoteException e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean addMeteo(Meteo meteo) {
		try {
			if (manager.gestion.addMeteo(meteo)) {
				return true;
			}
		} catch (RemoteException e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean addGroupMeteo(ArrayList<Meteo> tabMeteo) {
		try {
			if (manager.gestion.addGroupMeteo(tabMeteo)) {
				return true;
			}
		} catch (RemoteException e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean modMeteo(Meteo meteo) {
		try {
			if (manager.gestion.modMeteo(meteo)) {
				return true;
			}
		} catch (RemoteException e) {
			e.printStackTrace();
		}

		return false;
	}

	public ArrayList<Meteo> getMeteoByDay(int y, int m, int d, String lieu) {

		ArrayList<Meteo> tabMeteo = new ArrayList<>();

		try {
			tabMeteo = manager.gestion.meteoByDay(y, m, d, lieu);
		} catch (RemoteException e) {
			e.printStackTrace();
		}

		return tabMeteo;
	}

	public ArrayList<Meteo> getMeteoByMonth(int y, int m, String lieu) {
		
		ArrayList<Meteo> tabMeteo = new ArrayList<>();

		try {
			tabMeteo = manager.gestion.meteoByMonth(y, m, lieu);
		} catch (RemoteException e) {
			e.printStackTrace();
		}

		return tabMeteo;
	}
	
	public InputStream getPhoto(int id) {
		try {
			return manager.gestion.getPhoto(id);
		} catch (RemoteException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public boolean Authentification(String log, String pass) {
		try {
			return manager.gestion.authentification(log, pass);
		} catch (RemoteException e) {
			e.printStackTrace();
		}
		
		return false;
	}

}
