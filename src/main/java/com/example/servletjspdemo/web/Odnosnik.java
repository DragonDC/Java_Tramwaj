package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/OdnosnikProgramu")
public class Odnosnik extends HttpServlet{
	
private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String login = request.getParameter("login");
		String select = request.getParameter("select");
		String radio = request.getParameter("nazwa");
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">"
				+"<html>"
				+"<head>"
					+"<meta HTTP-EQUIV=\"content-type\" CONTENT=\"text/html; charset=UTF-8\"/>"
				+"</head>"
					+ "<body>"
						+ "<h2>Witaj w odnosniku " +login+ "</h2>"
						+"<img src='http://media.giphy.com/media/d5vr9eXCrZnEI/giphy.gif' alt='Gif' />"
						+"<br />Wybrales: " +select + "<br />"
						+"<br />Jestes: " +radio + "<br />"+
					 "</body>"
				  + "</html>");
		out.close();
	}
}
