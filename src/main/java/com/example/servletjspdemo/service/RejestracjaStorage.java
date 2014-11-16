package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.List;

import com.example.servletjspdemo.domain.Rejestracja;


public class RejestracjaStorage {
	public ArrayList<Rejestracja> tabRejestracji = new ArrayList<Rejestracja>();
	
	public void dodajUzytkownika(Rejestracja uzytkownik){
		tabRejestracji.add(uzytkownik);		
	}
	
	public void usunObjekt(int indeks){
		tabRejestracji.remove(indeks);
	}
	
	public List<Rejestracja> getTabRej(){
		return tabRejestracji;
	}
}
