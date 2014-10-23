/**
 * +"<script type='text/javascript' src='Sprawdzenie.js'></script>"
 */
	
		function sprawdz_formularz()
		{
			var firma = document.forms["formularz"]["liczbaMiejsc"].value;
			var wyrazenie = new RegExp("^[0-9]+$");
			var bledy;
			//return wyrazenie.test(firma);
			if(wyrazenie.test(firma) == false){
				bledy='Nieprawidłowy format dla liczby miejsc';
				alert(bledy);
				return false;
			}
			else
				return true;
     			
		}
		
		function usun(i, TabOb)
		{
			TabOb.remove(i);
			
			return true;
		}
