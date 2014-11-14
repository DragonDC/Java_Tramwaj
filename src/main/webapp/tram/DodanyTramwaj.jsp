<%-- <%@page import="com.example.servletjspdemo.domain.Tramwaj"%>
<%@page import="com.example.servletjspdemo.service.TramwajStorage"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="StylTram.css" rel="stylesheet" type="text/css">
	<title>Nowy tramwaj</title>
</head>
<body>

<jsp:useBean id="tramwaj1" class="com.example.servletjspdemo.domain.Tramwaj" scope="request" />
<jsp:setProperty name="tramwaj1" property="*" /> 

<jsp:useBean id="storage" class="com.example.servletjspdemo.service.TramwajStorage" scope="application" />

<% 
	/* String firma = request.getParameter("firma");
	String model = request.getParameter("model");
	String wysPodlogi = request.getParameter("select");
	String liczbaMiejsc = request.getParameter("liczbaMiejsc");
	String rozstawOsi = request.getParameter("rozstawOsi");
	String zdjecie = request.getParameter("zdjecie"); */

	//int liczMiejsc = Integer.parseInt(liczbaMiejsc);

	/* Tramwaj tramwaj = new Tramwaj(firma, model, wysPodlogi, rozstawOsi, liczMiejsc, wszystkieKolory, zdjecie);
	TramwajStorage tramSto = new TramwajStorage();
	tramSto.dodajTramwaj(tramwaj); */
	/* tramwaj1.setKolory(wszystkieKolory);
	storage.dodajTramwaj(tramwaj1); */
%>
	<h2 align="center">Witaj w odnosniku</h2>
						
		<div class="container" id="panel_gorny">
										
			<a href="StronaGlownaTram.jsp" class="btn btn-primary btn-lg" id="button">
				Strona główna
			</a>
					
							
			<a href="ListaTram.jsp" class="btn btn-primary btn-lg" id="button">
				Lista tramwajów
			</a>
		</div>
		
		<%
			String wszystkieKolory = "";

			String[] kolory = request.getParameterValues("kolory");
			if(kolory == null)
			{
				wszystkieKolory = "brak kolorów";
			}
			else
			{
				for(String kol: kolory){
					wszystkieKolory = wszystkieKolory + kol;
				}
			}
			tramwaj1.setKolory(wszystkieKolory);
			storage.dodajTramwaj(tramwaj1);
			//response.sendRedirect(request.getContextPath());
		%>
		
		<div class="container" id="tresc_strony">
							
			<img class="obrazek" src="${tramwaj1.getZdjecie()}" alt="Cos poszlo nie tak ;(" align="right"  />
			<br />Firma: ${tramwaj1.getFirma()}<br />
			<br />Model: ${tramwaj1.getModel()}<br />
			<br />Wysokość podłogi: ${tramwaj1.getWysPodlogi()}<br />
			<br />Rozstaw osi: ${tramwaj1.getRozstawOsi()}<br />
			<br />Liczba miejsc: ${tramwaj1.getLiczbaMiejsc()}<br />
			<br />Kolory: ${tramwaj1.getKolory()}<br /><br />
							
		</div>
		
			
</body>
</html>