/*package com.example.servletjspdemo.tramwaj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/WszystkieTramwaje1")
public class WszystkieTramwaje extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		
		String button_usun = request.getParameter("button_usun");
		
		
		if(button_usun != null){
			int indeks = Integer.parseInt(button_usun);
			try {
				TablicaObiektow.usunObjekt(indeks);
			} catch (Exception e) {
				response.setStatus(HttpServletResponse.SC_NOT_FOUND);
			}
			
			//System.out.println(indeks);
		}
		
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">"
				+"<html>"				
					+"<head>"
						+"<meta HTTP-EQUIV=\"content-type\" CONTENT=\"text/html; charset=UTF-8\"/>"
						+"<script src='Sprawdzenie.js' type='text/javascript'></script>"
						+"<link href=\"http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css\" rel=\"stylesheet\">"
						+"<link href='StylTram.css' rel='stylesheet' type='text/css'>"
					+"</head>"
					
					+ "<body>"
						+ "<h2><center>Lista Tramwajów<center></h2>"
					
						+ "<div class='container' id='panel_gorny'>"
							+ "<a href='Tramwaj_jsp' class=\"btn btn-primary btn-lg\" role='button' id='button'>"
								+ "Strona główna"
							+ "</a>"

							+ "<a href='WszystkieTramwaje1' class=\"btn btn-primary btn-lg\" role='button' id='button'>"
								+ "Lista tramwajów"
							+ "</a>"

						+ "</div>"
						
						
							//+TablicaObiektow.getTablica()
						
							
					+ "</body>"
				  + "</html>");
		out.close();
	}

}
*/