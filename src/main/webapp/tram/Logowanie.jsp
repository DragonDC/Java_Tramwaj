<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src='Sprawdzenie.js' type='text/javascript'></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="StylTram.css" rel="stylesheet" type="text/css">
	<title>Logowanie</title>
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

	<div class="container" id="panel_gorny">
		<a href="StronaStartowa.jsp" class="btn btn-primary btn-lg" id="button">
			Strona startowa
		</a>						
	</div>
	
	<div class="container" id="tresc_strony">
	<form method="post" action="SprawdzenieLogowania.jsp">
		<center>Podaj Login&emsp;&emsp;&ensp; <input type="text" id="textL" name="login" value="" required> </center>
		<br />
		<center>Podaj Hasło &emsp;&emsp;&ensp;<input type="password" id="textH" name="haslo1" value="" required> </center>
		<br /><br />
		<center><input type="submit" id="button" class="btn btn-default" value=" ZALOGUJ " /></center>
	</form>
	</div>
	
	
</body>
</html>