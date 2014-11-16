package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/Program")
public class PierwszyProgram extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">"
				+"<html>"
					+ "<body>"
						+ "<h2>Pierwszy program</h2>"
						+"<form action='OdnosnikProgramu' method='get'>" +
						
						"Login: <input type='textbox' name='login' value=''><br />" +
						"Hasło: <input type='password' name='haslo' value=''><br />" +
						
						"Dodatki: <br />"+
						"<select name='select' multiple='multiple' defaultvalue>"+

					    	"<option value='cheese'>Cheese</option>"+
					    	"<option value='tomatoes'>Tomatoes</option>"+
					    	"<option selected value='mozarella'>Mozzarella</option>"+
					    	"<option value='mushrooms'>Mushrooms</option>"+
					    	"<option value='pepperoni'>Pepperoni</option>"+
					    	"<option value='onions'>Onions</option>"+
					    
						"</select>"+
						"<br /><br />"+
						"Płeć: <br />M <input type='radio' name='nazwa' value='mezczyzna' checked />"+
						"<br />K <input type='radio' name='nazwa' value='kobieta' /><br />"+
						"<input type='submit' value=' OK ' />" +
						"</form>" 
					+ "</body>"
				  + "</html>");
		out.close();
	}

}
