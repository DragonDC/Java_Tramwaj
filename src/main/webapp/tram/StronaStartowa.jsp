<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src='Sprawdzenie.js' type='text/javascript'></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="StylTram.css" rel="stylesheet" type="text/css">
	<title>Strona startowa</title>
</head>

<body>
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

	<h2 align="center">Program Tramwaj</h2>
	
	<div class="container" id="panel_gorny">
		<a href="Logowanie.jsp" class="btn btn-primary btn-lg" id="button">
			Logowanie
		</a>
						
		<a href="Rejestracja.jsp" class="btn btn-primary btn-lg" id="button">
			Rejestracja
		</a>						
	</div>
	
	<div class="container" id="tresc_strony">
		<div align=center>
			
			<b><font size="3">Serwis Tramwajowy</font></b>			
			<br />
			
			<img class="obrazek_glowna" src="http://redro.pl/fototapety/400/46506161/szczesliwy-tramwaj-w-miescie-ilustracja-dla-dzieci.jpg" alt="Cos poszlo nie tak ;("  />
		</div>
	</div>
</body>

</html>