<%@page import="com.example.servletjspdemo.domain.Rejestracja"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src='Sprawdzenie.js' type='text/javascript'></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="StylTram.css" rel="stylesheet" type="text/css">
	<meta http-equiv="refresh" content="3; URL=http://localhost:8080/servletjspdemo/tram/StronaStartowa.jsp">
	<title>Dodanie uzytkownika</title>
</head>
<body>

	<jsp:useBean id="zarejestruj" class="com.example.servletjspdemo.domain.Rejestracja" scope="request" />
	<jsp:setProperty name="zarejestruj" property="*" />
	
	<jsp:useBean id="rejestracjaStorage" class="com.example.servletjspdemo.service.RejestracjaStorage" scope="application" />
	
	<%
			if(session.getAttribute("Log") != null)
			{ 
				%>
				<br /><br /><br />
				<div class="container" id="tresc_strony">
					<br /><br /><center>Jesteś już zalogowany ;)</center><br /><br />
					
					<script type="text/javascript">
						setTimeout(function(){location.href="StronaGlownaTram.jsp";}, 3000);
					</script>
				
				</div>
				<%
			
				return;
			}
		%>
	
	<br /><br /><br />
	<div class="container" id="tresc_strony">
		<%
		for (Rejestracja rejestrowanie : rejestracjaStorage.getTabRej())
		{
			if(zarejestruj.getLogin().toString().equals(rejestrowanie.getLogin().toString()))
			{
				%>
				
					<br /><br /><center>Konto o podanym loginie juz zostało założone</center><br /><br />
				
				<%
				return;
			}
		}
		String haslo = request.getParameter("haslo1");
		/* System.out.println("Pobranie z formularza hasla");
		System.out.println(haslo); */
		zarejestruj.setHaslo(haslo);
		//System.out.println("Pobranie hasla i na sile wpisanie do zarejestruj");
		//System.out.println(zarejestruj.getHaslo());
		rejestracjaStorage.dodajUzytkownika(zarejestruj);
		out.println("<br /><br /><center>Konto zostało założone pomyślnie</center><br/><br/>");
		
		%>
	</div>

</body>
</html>