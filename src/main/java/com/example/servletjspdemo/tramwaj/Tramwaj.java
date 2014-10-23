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
                    String WysPodlogi = TabOb.get(i).getWysPodlogi();
                    String Rodzaj = TabOb.get(i).getRodzaj();
                    int liczMiejsc = TabOb.get(i).getLiczbaMiejsc();
                    String Kolory = TabOb.get(i).getKolory();
                    String zdjecie = TabOb.get(i).getZdjecie();
                    String licMiejsc = Integer.toString(liczMiejsc);
                    
                    
                    tekst = tekst+"<div class='container' id='tresc_strony'>"+
                    "<img src='"+zdjecie+"' alt='Brak zdjecia' class='obrazek' align='right' />"+
                    "<br />"+Indeks+"<br />"+Firma+"<br />"+Model+"<br />"+WysPodlogi+"<br />"+Rodzaj+"<br />"
                    +licMiejsc+"<br />"+Kolory+"</div><br /><br />";
            } 
			return tekst;
		}
	
}


public class Tramwaj {
	private String wysPodlogi;
	private String firma;
	private String model;
	private String rodzaj;
	private int liczbaMiejsc;
	private String zdjecie;
	private String kolory;
	
	
	public Tramwaj(String firma, String model, String wysPodlogi, String rodzaj, int liczbaMiejsc, String kolory, String zdjecie){
		setFirma(firma);
		setModel(model);		
		setWysPodlogi(wysPodlogi);
		setRodzaj(rodzaj);
		setLiczbaMiejsc(liczbaMiejsc);
		setKolory(kolory);
		setZdjecie(zdjecie);
	}
	
	
	public String getWysPodlogi(){
		return wysPodlogi;
	}
	
	private void setWysPodlogi(String wysPodlogi){
		this.wysPodlogi = wysPodlogi;
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
	
	
	public String getKolory(){
		return kolory;
	}
	
	private void setKolory(String kolory){
		this.kolory = kolory;
	}
	
	/*public static void main(String[] args) {
		// TODO Auto-generated method stub

	}*/

}
