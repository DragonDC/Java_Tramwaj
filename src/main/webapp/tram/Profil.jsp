<%@page import="com.example.servletjspdemo.domain.Rejestracja"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="StylTram.css" rel="stylesheet" type="text/css">
	<title>Profil</title>
</head>

<body>
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
		
		<h2 align="center">Twój Profil</h2>
						
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

		<div class="container" id="tresc_strony">
			<br /><br />
			<%
			for(Rejestracja rejestracja : rejestracjaStorage.getTabRej())
				{
					if(session.getAttribute("Log").equals(rejestracja.getLogin()))
					{
					%>
						<p align="left">
							Imię: <%out.print(rejestracja.getImie());%>
						</p>
						<p align="left">
							Nazwisko: <%out.print(rejestracja.getNazwisko());%>
						</p>
						<p align="left">
							Login: <%out.print(rejestracja.getLogin());%>
						</p>
						<p align="left">
							Hasło: <%out.print(rejestracja.getHaslo());%>
						</p>
					<%
					}
				}			
			
			%>
			<br /><br />
		</div>


</body>

</html>