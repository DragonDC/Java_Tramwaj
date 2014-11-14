/**
 * +"<script type='text/javascript' src='Sprawdzenie.js'></script>"
 */
		function usun(indeks)
		{
			TablicaObiektow.usunObjekt(indeks);
			return true;
		}
		
		function sprawdz_Imie_Nazwisko()
		{
			
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
		
