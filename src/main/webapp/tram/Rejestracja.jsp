<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src='Sprawdzenie.js' type='text/javascript'></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="StylTram.css" rel="stylesheet" type="text/css">
	<title>Rejestracja</title>
</head>
<body>
	<jsp:useBean id="zarejestruj" class="com.example.servletjspdemo.domain.Rejestracja" scope="session" />
	
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
	
	<h2 align="center">Rejestracja</h2>
	
	<div class="container" id="panel_gorny">
		<a href="StronaStartowa.jsp" class="btn btn-primary btn-lg" id="button">
			Strona startowa
		</a>											
	</div>
	
	<div class="container" id="tresc_strony">
		<div align="left">
		<br /><br />
		
		<form action="DodanyUzytkownik.jsp" name="formularzRej" method="post">
		
		
			Podaj Imię&emsp;&emsp;&emsp; <input type="text" id="textI" name="imie"  value="" required>
			<br />
			Podaj Nazwisko&emsp;<input type="text" id="textN" name="nazwisko" value="" required>
			<br />
			<script>
				var tI = document.getElementById('textI');
				var tN = document.getElementById('textN');
				function checkImie_Nazwisko(evt) {
					
					var charCode = evt.charCode;
					if (charCode != 0) {
						if (charCode < 65 || charCode > 122) {
							evt.preventDefault();
							alert("W polach imię i nazwisko, można używać tylko liter.\n");
						}
					}
				
				}

				tI.addEventListener( 'keypress', checkImie_Nazwisko, false );
				tN.addEventListener( 'keypress', checkImie_Nazwisko, false );
			</script>	
		
			
			
			Podaj Login&emsp;&emsp;&ensp; <input type="text" id="textL" name="login" value="" required>
			<br />
			Podaj Hasło &emsp;&emsp;&ensp;<input type="password" id="textH" name="haslo1" value="" required>
			<br />
			Powtórz Hasło&emsp;&ensp; <input type="password" id="textH2" name="haslo2" value="" required>
		
			<br /><br />
			<input type="submit" id="button" class="btn btn-default" onClick="return(sprawdz_hasla());" value=" ZAREJESTRUJ " />
		
		</form>
		
		<br /><br />
		</div>
	</div>

</body>
</html>