package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.List;

import com.example.servletjspdemo.domain.Tramwaj;

public class TramwajStorage {
	
		public ArrayList<Tramwaj> tabOb = new ArrayList<Tramwaj>();
	
		public TramwajStorage(){
			
		}
		
		public void dodajTramwaj(Tramwaj tramwaj){
			tabOb.add(tramwaj);		
		}
		
		public void usunObjekt(int indeks){
			tabOb.remove(indeks);
		}
		
		public List<Tramwaj> getTabOb(){
			return tabOb;
		}

}
