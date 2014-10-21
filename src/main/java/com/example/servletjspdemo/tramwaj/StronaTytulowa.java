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
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">"
				+"<html>"
				+"<head>"
					+"<script src='Sprawdzenie.js' type='text/javascript'></script>"
				+"<head/>"
					+ "<body>"
						+ "<h2>Program Tramwaj</h2>"
						+"<form action='OdnosnikTramwaj1' name='formularz' method='get'>" +
						
						"Podaj Firme: <input type='textbox' name='firma' value='' required><br />" +
						"Podaj Model: <input type='textbox' name='model' value='' required><br />" +
						"Podaj Kolor: <br />" +
						"<select name='select' multiple='multiple' defaultvalue>"+

					    	"<option value='czerwony'>Czerwony</option>"+
					    	"<option value='niebieski'>Niebieski</option>"+
					    	"<option selected value='pomaranczowy'>Pomarańczowy</option>"+
					    	"<option value='zielony'>Zielony</option>"+
					    	"<option value='brazowy'>Brazowy</option>"+
					    	"<option value='bialy'>Bialy</option>"+
					    
						"</select>"+
						"<br /><br />"+
						
						"Podaj Liczbe miejsc: <input type='textbox' name='liczbaMiejsc' value='' required><br />" +
						
						
						"<br />"+
						"Rodzaj: <br />Towarowy <input type='radio' name='rodzaj' value='towarowy' checked />"+
						"<br />Pasazerski <input type='radio' name='rodzaj' value='pasazerski' /><br /><br />"+
						
						"Podaj adres zdjecia: <input type='textbox' name='zdjecie' value='' required><br /><br />" +
						
						"<input type='submit' onClick='return(sprawdz_formularz());' value=' OK ' />" +
						"</form>" 
						
						
						
					+ "</body>"
				  + "</html>");
		out.close();
	}

}
