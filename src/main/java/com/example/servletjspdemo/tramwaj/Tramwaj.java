package com.example.servletjspdemo.tramwaj;

import java.util.ArrayList;
import java.util.List;


class TablicaObiektow{
	static List<Tramwaj> TabOb = new ArrayList<Tramwaj>();
	
	//obiekt wrzucic do funkcji a w funkcji dodac go do listy
		static void Tablica(Tramwaj tramwaj){
			TabOb.add(tramwaj);		
		}
		
		//tablica obiektow tramwaj
		//funkcja pewnie bedzie zawierac calego htmla do utworzenia strony z obiektami
		static String getTablica(){
			String tekst="";
			for(int i=0; i< TabOb.size(); i++)
            {       
					int Indeks = i+1;
                    String Firma = TabOb.get(i).getFirma();
                    String Model = TabOb.get(i).getModel();
                    String Kolor = TabOb.get(i).getKolor();
                    String Rodzaj = TabOb.get(i).getRodzaj();
                    int liczMiejsc = TabOb.get(i).getLiczbaMiejsc();
                    String zdjecie = TabOb.get(i).getZdjecie();
                    String licMiejsc = Integer.toString(liczMiejsc);
                    
                    
                    tekst = tekst+" "+Indeks+" "+Firma+" "+Model+" "+Kolor+" "+Rodzaj+" "
                    +licMiejsc+" <img src='"+zdjecie+"' alt='Brak zdjecia' /><br /><br />";
            } 
			return tekst;
		}
	
}


public class Tramwaj {
	private String kolor;
	private String firma;
	private String model;
	private String rodzaj;
	private int liczbaMiejsc;
	private String zdjecie;
	
	
	public Tramwaj(String firma, String model, String kolor, String rodzaj, int liczbaMiejsc, String zdjecie){
		setFirma(firma);
		setModel(model);		
		setKolor(kolor);
		setRodzaj(rodzaj);
		setLiczbaMiejsc(liczbaMiejsc);
		setZdjecie(zdjecie);
	}
	
	
	public String getKolor(){
		return kolor;
	}
	
	private void setKolor(String kolor){
		this.kolor = kolor;
	}
	
	
	
	public String getFirma(){
		return firma;
	}
	
	private void setFirma(String firma){
		this.firma = firma;
	}
	
	
	
	public String getModel(){
		return model;
	}
	
	private void setModel(String model){
		this.model = model;
	}
	
	
	
	public int getLiczbaMiejsc(){
		return liczbaMiejsc;
	}
	
	private void setLiczbaMiejsc(int liczbaMiejsc){
		this.liczbaMiejsc = liczbaMiejsc;
	}
	
	
	
	public String getRodzaj(){
		return rodzaj;
	}
	
	private void setRodzaj(String rodzaj){
		this.rodzaj = rodzaj;
	}

	
	
	public String getZdjecie(){
		return zdjecie;
	}
	
	private void setZdjecie(String zdjecie){
		this.zdjecie = zdjecie;
	}
	
	/*public static void main(String[] args) {
		// TODO Auto-generated method stub

	}*/

}
