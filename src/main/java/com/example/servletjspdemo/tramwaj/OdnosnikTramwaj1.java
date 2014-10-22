package com.example.servletjspdemo.tramwaj;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/OdnosnikTramwaj1")
public class OdnosnikTramwaj1 extends HttpServlet{
	
private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String firma = request.getParameter("firma");
		String model = request.getParameter("model");
		String kolor = request.getParameter("select");
		String liczbaMiejsc = request.getParameter("liczbaMiejsc");
		String rodzaj = request.getParameter("rodzaj");
		String zdjecie = request.getParameter("zdjecie");
		
		int liczMiejsc = Integer.parseInt(liczbaMiejsc);
		
		Tramwaj tramwaj1 = new Tramwaj(firma, model, kolor, rodzaj, liczMiejsc, zdjecie);
		TablicaObiektow.Tablica(tramwaj1);
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">"
				+"<html>"
				+"<head>"
					+"<meta HTTP-EQUIV=\"content-type\" CONTENT=\"text/html; charset=UTF-8\"/>"
					+"<link href=\"http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css\" rel=\"stylesheet\">"
					+"<link href='StylTram.css' rel='stylesheet' type='text/css'>"
				+"</head>"
					+ "<body>"
						+ "<h2><center>Witaj w odnosniku<center></h2>"
						
						+ "<div class='container' id='panel_gorny'>"
										
							+ "<a href='Tramwaj1' class=\"btn btn-primary btn-lg\" role='button' id='button'>"
								+ "Strona główna"
							+ "</a>"
					
							
							+ "<a href='WszystkieTramwaje1' class=\"btn btn-primary btn-lg\" role='button' id='button'>"
								+ "Lista tramwajów"
							+ "</a>"
								
							
						
						+ "</div>"
						
						+ "<div class='container' id='tresc_strony'>"
							+ "<br />Firma: " + tramwaj1.getFirma()+"<br />"
							+ "<br />Model: " + tramwaj1.getModel()+ "<br />"
							+ "<br />Kolor: " + tramwaj1.getKolor()+ "<br />"
							+ "<br />Rodzaj: " + tramwaj1.getRodzaj()+ "<br />"
							+ "<br />Liczba miejsc: " + tramwaj1.getLiczbaMiejsc()+ "<br /><br />"
							+ "Zdjecie <img src="+ tramwaj1.getZdjecie()+" alt='Cos poszlo nie tak ;(' />"
						+ "</div>"
							
					 +"</body>"
				  + "</html>");
		out.close();
	}
}
