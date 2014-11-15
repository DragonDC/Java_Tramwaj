<%@page import="com.example.servletjspdemo.domain.Rejestracja"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.servletjspdemo.domain.Tramwaj"%>
<%@page import="com.example.servletjspdemo.service.TramwajStorage"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="StylTram.css" rel="stylesheet" type="text/css">
	<title>Lista tramwajow</title>
</head>
<body>
	<jsp:useBean id="storage" class="com.example.servletjspdemo.service.TramwajStorage" scope="application"/>
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
		String button_usun = request.getParameter("button_usun");
		if(button_usun != null){
			int indeks = Integer.parseInt(button_usun);
			try {
				storage.usunObjekt(indeks);
			} catch (Exception e) {
				response.setStatus(HttpServletResponse.SC_NOT_FOUND);
			}
	
		}
	%>
	
	<h2 align="center">Witaj w odnosniku</h2>
						
		<div class="container" id="panel_gorny">
										
			<a href="StronaGlownaTram.jsp" class="btn btn-primary btn-lg" id="button">
				Strona główna
			</a>
					
							
			<a href="ListaTram.jsp" class="btn btn-primary btn-lg" id="button">
				Lista tramwajów
			</a>
			
			<a href="Wylogowanie.jsp" class="btn btn-primary btn-lg" id="button">
				Wyloguj
			</a>	
			
			<% 
		if(session.getAttribute("Log") != null)
		{
			
			for(Rejestracja rejestracja : rejestracjaStorage.getTabRej())
			{
				if(session.getAttribute("Log").equals(rejestracja.getLogin()))
				{
					%>
					<div align="right">
						Zalogowany jako: <a href="Profil.jsp"> <%out.print(rejestracja.getLogin());%> </a>
					</div>
					<%
				}
			}
						
		
		}
		%>
			
		</div>	
		<% 
			/* int i;
			int ilosc = storage.tabOb.size();
			for(i=0;i<ilosc;i++){
				out.println("<br />Firma: " + storage.tabOb.get(i).getFirma() + "<br />"
						+ "Model: " + storage.tabOb.get(i).getModel() + "<br />");
			} */
			/* for (Tramwaj tramwaj : storage.getTabOb()) {
				out.println("Firma: <b>" + tramwaj.getFirma() + "</b>"
				+ "<br/>Model: <b>" + tramwaj.getModel() + "</b>");	
			} */
		%>
		
		<c:forEach var="wiersz"  varStatus="loopCounter" items="${storage.tabOb}">
			<div class="container" id="tresc_strony">
							
				<img class="obrazek" src="<c:url value="${wiersz.zdjecie}"/>" alt="Cos poszlo nie tak ;(" align="right"/>
				<br /><c:out value="Numer: ${loopCounter.count}"/>
				<br />Firma: <c:out value="${wiersz.firma}"/>
				<br />Model: <c:out value="${wiersz.model}"/>
				<br />Wysokość podłogi: <c:out value="${wiersz.wysPodlogi}"/>
				<br />Rozstaw osi: <c:out value="${wiersz.rozstawOsi}"/>
				<br />Liczba miejsc: <c:out value="${wiersz.liczbaMiejsc}"/>
				<br />Kolory: <c:out value="${wiersz.kolory}"/><br /><br />
				
				<form action="ListaTram.jsp" method="get">
                	<button type="submit" name="button_usun" id="button" class="btn btn-default" value="${loopCounter.count - 1}"> USUŃ </button>
                </form>	
           		
			</div>
		</c:forEach>
</body>
</html>