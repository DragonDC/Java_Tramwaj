package com.example.servletjspdemo.domain;

public class Rejestracja {
	private String imie;
	private String nazwisko;
	private String login;
	private String haslo1;
	
	public Rejestracja(){
		super();
	}
	
	
	public Rejestracja(String imie, String nazwisko, String login, String haslo1){
		this.imie = imie;
		this.nazwisko = nazwisko;
		this.login = login;
		this.haslo1 = haslo1;
	}
	
	
	public String getImie() {
		return imie;
	}
	public void setImie(String imie) {
		this.imie = imie;
	}
	
	public String getNazwisko() {
		return nazwisko;
	}
	public void setNazwisko(String nazwisko) {
		this.nazwisko = nazwisko;
	}
	
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	
	public String getHaslo() {
		return haslo1;
	}
	public void setHaslo(String haslo1) {
		this.haslo1 = haslo1;
	}
	

}
