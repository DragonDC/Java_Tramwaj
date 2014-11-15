/**
 * +"<script type='text/javascript' src='Sprawdzenie.js'></script>"
 */
		function usun(indeks)
		{
			TablicaObiektow.usunObjekt(indeks);
			return true;
		}
		
		function sprawdz_hasla()
		{	
			var haslo1 = document.forms["formularzRej"]["haslo1"].value;
			var haslo2 = document.forms["formularzRej"]["haslo2"].value;
			/*document.write(haslo1);
			document.write(haslo2);*/
			if(haslo1!=haslo2) {
				/*document.getElementById('haslo1').value="";
				document.getElementById('haslo2').value="";*/
				alert('Podane hasła się różnią.');
				document.forms["formularzRej"]["haslo1"].value="";
				document.forms["formularzRej"]["haslo2"].value="";
				return false;
			}
			else
				return true;
		}
	
		function sprawdz_formularz()
		{
			var firma = document.forms["formularz"]["liczbaMiejsc"].value;
			var obrazek = document.forms["formularz"]["zdjecie"].value;
			var wyrazenie = new RegExp("^[0-9]+$");
			var wyrazenie_obrazka = new RegExp(".*(jpg|Jpg|JPG|png|Png|PNG|gif|Gif|GIF|jpeg|Jpeg|JPEG)+$");
			var bledy;
			//return wyrazenie.test(firma);
			if(wyrazenie.test(firma) == false){
				bledy='Nieprawidłowy format dla liczby miejsc';
				alert(bledy);
				return false;
			}
			else if(wyrazenie_obrazka.test(obrazek) == false){
				bledy='Nieprawidłowy format obrazka';
				alert(bledy);
				return false;
			}
			else
				return true;
     			
		}
		
