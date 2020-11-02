package no.hvl.dat108.Utils;


public class RegisterUtil {
	
	public static boolean isValidForm(String fornavn, String etternavn, String mobil, String kjonn) {
		// fornavn validasjon
		if(fornavn.length() >= 2 && fornavn.length() <= 20 && Character.isUpperCase(fornavn.charAt(0))) {
			// etternavn validasjon
			if(etternavn.length() >= 2 && etternavn.length() <= 20 && Character.isUpperCase(etternavn.charAt(0)) && !etternavn.contains(" ")) {
				// mobil og kjønn validasjon
				if(mobil.length() == 8 && kjonn != null) {
					return true;
				}
			}
		}
		return false;
	}
	
	public static boolean isFornavnValid(String fornavn) {
		return fornavn.length() >= 2 && fornavn.length() <= 20 && Character.isUpperCase(fornavn.charAt(0));
	}
	
	public static boolean isEtternavnValid(String etternavn) {
		return etternavn.length() >= 2 && etternavn.length() <= 20 && Character.isUpperCase(etternavn.charAt(0)) && !etternavn.contains(" ");
	}
	
	public static boolean isMobilValid(String mobil) {
		return mobil.length() == 8;
	}
	
	public static boolean isEqualPasswords(String password, String password2) {
		return password != null && password2 != null && password.equals(password2);
	}
}
