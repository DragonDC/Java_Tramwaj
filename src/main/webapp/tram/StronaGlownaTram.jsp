<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src='Sprawdzenie.js' type='text/javascript'></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="StylTram.css" rel="stylesheet" type="text/css">
	<title>Strona Glowna</title>
</head>
<body>
		<jsp:useBean id="storage" class="com.example.servletjspdemo.service.TramwajStorage" scope="application" />
		<jsp:useBean id="tramwaj1" class="com.example.servletjspdemo.domain.Tramwaj" scope="session" />
	
		<%-- <%
			tramwaj1.setFirma("");
			tramwaj1.setKolory("");
			tramwaj1.setLiczbaMiejsc(0);
			tramwaj1.setModel("");
			tramwaj1.setRozstawOsi("");
			tramwaj1.setWysPodlogi("");
			tramwaj1.setZdjecie("");
		%> --%>
	

	<h2 align="center">Program Tramwaj</h2>
	
	<div class="container" id="panel_gorny">
		<a href="StronaGlownaTram.jsp" class="btn btn-primary btn-lg" id="button">
			Strona główna
		</a>
						
		<a href="ListaTram.jsp" class="btn btn-primary btn-lg" id="button">
			Lista tramwajów
		</a>						
	</div>
	
	<div class="container" id="tresc_strony">
	
		<form action="DodanyTramwaj.jsp" name="formularz" method="get">
			<img class="obrazek_glowna" src="http://img2.wikia.nocookie.net/__cb20130328082321/tramwaj/pl/images/d/db/Konstal_805Na_zmodernizowany_Grudzi%C4%85dz.jpg" alt="Cos poszlo nie tak ;(" align="right"  />
			<br />
			Podaj Firme: <input type="text" id="button" name="firma" value="" required>
			<br />
			Podaj Model: <input type="text" id="button" name="model" value="" required>
			<br />
			Klasyfikacja ze względu na wysokość podłogi: 
			<br />
		
			<select name="wysPodlogi" multiple="multiple" defaultvalue>

				<option selected value="Wysokopodłogowy">Wysokopodłogowy</option>
				<option value="Średniopodłogowy">Średniopodłogowy</option>
				<option value="Niskopodłogowy">Niskopodłogowy</option>
					    
			</select>
			<br /><br />
							
			Podaj Liczbe miejsc: <input type="text" id="button" name="liczbaMiejsc" value="" required>
			<br /><br />
		
			Rozstaw osi: <br />
				1000 mm <input type="radio" name="rozstawOsi" value="1000 mm" checked />
				<br />
				1435 mm <input type="radio" name="rozstawOsi" value="1435 mm" />
				<br />
				1524 mm <input type="radio" name="rozstawOsi" value="1524 mm" />
				<br /><br />
						
			Wybierz kolory: <br />
				<input type="checkbox" name="kolory" value="Czerwony " /> Czerwony 
				<br />
				<input type="checkbox" name="kolory" value="Niebieski " /> Niebieski 
				<br />
				<input type="checkbox" name="kolory" value="Różowy " /> Różowy 
				<br />
				<input type="checkbox" name="kolory" value="Zielony " /> Zielony 
				<br />
				<input type="checkbox" name="kolory" value="Żółty " /> Żółty 
				<br />
				<input type="checkbox" name="kolory" value="Biały " /> Biały 
				<br />
				<input type="checkbox" name="kolory" value="Czarny " /> Czarny 
				<br />
				<input type="checkbox" name="kolory" value="Jakiś tam " /> Jakiś tam
			
			<br /><br />
						
			Podaj adres zdjęcia: <input type="text" id="button" name="zdjecie" value="" required>
			<br /><br />
						
			<input type="submit" id="button" class="btn btn-default" onClick="return(sprawdz_formularz());" value=" ZAPISZ " />
			
		</form>
	</div>
	
</body>
</html>