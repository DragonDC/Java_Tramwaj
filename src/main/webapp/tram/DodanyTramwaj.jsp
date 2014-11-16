<%-- <%@page import="com.example.servletjspdemo.domain.Tramwaj"%>
<%@page import="com.example.servletjspdemo.service.TramwajStorage"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<%@page import="com.example.servletjspdemo.domain.Rejestracja"%>
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
<jsp:useBean id="rejestracjaStorage" class="com.example.servletjspdemo.service.RejestracjaStorage" scope="application" />
<%
			if(session.getAttribute("Log") == null)
			{ 
				%>
				<br /><br /><br />
				<div class="container" id="tresc_strony">
					<br /><br /><center>Chyba cos poszlo nie tak ;(</center><br />
					<center>Nie powinno Cię tu być, dlatego zaraz to zmienię ;)</center><br /><br />
					<center><img class="obrazek_glowna" src="http://s.v3.tvp.pl/images/c/6/d/uid_c6de6eb4dde6896233a47a1e4105d5221410510081064_width_700_play_0_pos_3_gs_0.jpg" alt="Cos poszlo nie tak ;("  /></center>
				
					<script type="text/javascript">
						setTimeout(function(){location.href="StronaStartowa.jsp";}, 3500);
					</script>
				
				</div>
				<%
			
				return;
			}
		%>


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
			
			
			<a href="Wylogowanie.jsp" class="btn btn-primary btn-lg" id="button_wylogowanie">
				Wyloguj
			</a>
		
		
			<div>
			
			<div style="display: inline;" id="czas"></div>
				<script type="text/javascript">
				function getTime()
				{
    				return (new Date()).toLocaleTimeString();
				}
 
				document.getElementById('czas').innerHTML = getTime();
 
				setInterval(function() {
 					document.getElementById('czas').innerHTML = getTime();
     			}, 1000);
			</script>
		
		
			<div style="display: inline;" id="data">
				<c:set var="aktualnaData" value="<%=new java.util.Date()%>" />
					<fmt:formatDate 
						type="date"
						value="${aktualnaData}"
					/>		
			</div>
		
		
		</div>
		
		<% 
			if(session.getAttribute("Log") != null)
			{
			
				for(Rejestracja rejestracja : rejestracjaStorage.getTabRej())
				{
					if(session.getAttribute("Log").equals(rejestracja.getLogin()))
					{
					%>
						<div id="login" align="right">
							Zalogowany jako: <a href="Profil.jsp"> <%out.print(rejestracja.getLogin());%> </a>
						</div>
					<%
					}
				}					
		
			}
			%>	
			
			
			
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