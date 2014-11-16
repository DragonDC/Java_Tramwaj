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
	<title>SprawdzenieLogowania</title>
</head>
<body>
	<jsp:useBean id="rejestracjaStorage" class="com.example.servletjspdemo.service.RejestracjaStorage" scope="application" />
	<br /><br /><br />
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
	
	
	<%
		String login = request.getParameter("login");
		String haslo = request.getParameter("haslo1");
		
		/* System.out.println(login);
		System.out.println(haslo); */
		
		
		
		//int i=1;
		for (Rejestracja rejestracja : rejestracjaStorage.getTabRej())
		{
			//System.out.println(i);
			//i++;
			//System.out.println(rejestracja.getLogin());
			//System.out.println(rejestracja.getHaslo());
		 	if(login.toString().equals(rejestracja.getLogin().toString()) && 
					 haslo.equals(rejestracja.getHaslo().toString())){ 
		 		
		 		session.setAttribute("Log",login);
				session.setAttribute("Pass",haslo);
				%>
		 		<div class="container" id="tresc_strony">
		 			<br /><br /><center>Pomyślnie zalogowano</center><br /><br />
		 			
		 			<script type="text/javascript">
						setTimeout(function(){location.href="StronaGlownaTram.jsp";}, 3000);
					</script>
		 		</div>
		 		<%
		 		
		 		System.out.println("Pomyslnie zalogowano");
				
				return;
			}
		} 
		
	%>
	
	
	<div class="container" id="tresc_strony">
		<br /><br /><center>Wprowadzono błędny login lub hasło<center><br/><br />
		<script type="text/javascript">
			setTimeout(function(){location.href="Logowanie.jsp";}, 3000);
		</script> 
	</div>
	
	
</body>
</html>