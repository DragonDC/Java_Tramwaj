package com.example.servletjspdemo.tramwaj;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/Tramwaj1")
public class StronaTytulowa extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.println(
				"<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'   'http://www.w3.org/TR/html4/loose.dtd'>"
				+"<html>"
				+"<head>"
					+"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />"
					+"<script src='Sprawdzenie.js' type='text/javascript'></script>"
					+"<link href=\"http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css\" rel=\"stylesheet\">"
					+"<link href='StylTram.css' rel='stylesheet' type='text/css'>"
				+"<head/>"
					+ "<body>"
						+ "<h2><center>Program Tramwaj</center></h2>"
						+ "<div class='container' id='panel_gorny'>"
						+ "<a href='Tramwaj1' class=\"btn btn-primary btn-lg\" role='button' id='button'>"
						+ "Strona główna"
						+ "</a>"
						
						+ "<a href='WszystkieTramwaje1' class=\"btn btn-primary btn-lg\" role='button' id='button'>"
						+ "Lista tramwajów"
						+ "</a>"
						
						+ "</div>"
						
						
						+ "<div class='container' id='tresc_strony'>"
						+ "<form action='OdnosnikTramwaj1' name='formularz' method='get'>" +
						
						"Podaj Firme: <input type='textbox' id='button' name='firma' value='' required><br />" +
						"Podaj Model: <input type='textbox' id='button' name='model' value='' required><br />" +
						"Klasyfikacja ze względu na wysokość podłogi: <br />" +
						"<select name='select' multiple='multiple' defaultvalue>"+

					    	"<option selected value='Wysokopodłogowy'>Wysokopodłogowy</option>"+
					    	"<option value='Średniopodłogowy'>Średniopodłogowy</option>"+
					    	"<option value='Niskopodłogowy'>Niskopodłogowy</option>"+
					    
						"</select>"+
						"<br /><br />"+
						
						"Podaj Liczbe miejsc: <input type='textbox' id='button' name='liczbaMiejsc' value='' required><br />" +
						
						
						"<br />"+
						"Rodzaj: <br />Towarowy <input type='radio' name='rodzaj' value='towarowy' checked />"+
						"<br />Pasażerski <input type='radio' name='rodzaj' value='pasazerski' /><br /><br />"+
						
						"Wybierz kolory: <br />"+
						"<input type='checkbox' name='kolory' value='Czerwony ' /> Czerwony <br />"+
						"<input type='checkbox' name='kolory' value='Niebieski ' /> Niebieski <br />"+
						"<input type='checkbox' name='kolory' value='Różowy ' /> Różowy <br />"+
						"<input type='checkbox' name='kolory' value='Zielony ' /> Zielony <br />"+
						"<input type='checkbox' name='kolory' value='Żółty ' /> Żółty <br />"+
						"<input type='checkbox' name='kolory' value='Jakiś tam ' /> Jakiś tam <br /><br />"+
						
						"Podaj adres zdjęcia: <input type='textbox' id='button' name='zdjecie' value='' required><br /><br />" +
						
						"<input type='submit' id='button' class='btn btn-default' onClick='return(sprawdz_formularz());' value=' Zapisz ' />" +
						"</form>" 
						+ "</div>"
						
						
					+ "</body>"
				  + "</html>");
		out.close();
	}

}
