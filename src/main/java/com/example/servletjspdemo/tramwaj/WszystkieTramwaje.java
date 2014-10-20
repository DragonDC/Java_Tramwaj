package com.example.servletjspdemo.tramwaj;

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
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">"
				+"<html>"
					+ "<body>"
						+ "<h2>Lista Tramwajów</h2>"						
						+"<br /><br /><br />"
						+TablicaObiektow.getTablica()
						
					+ "</body>"
				  + "</html>");
		out.close();
	}

}
