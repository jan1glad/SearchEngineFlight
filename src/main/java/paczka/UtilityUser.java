package paczka;

public class UtilityUser {
    public String Imie;
    public String Nazwisko;
    public String Telefon;
    public String Email;

    public UtilityUser(String imie, String nazwisko, String telefon, String email) {
        Imie = imie;
        Nazwisko = nazwisko;
        Telefon = telefon;
        Email = email;
    }

    public void setImie(String imie) {
        Imie = imie;
    }

    public void setNazwisko(String nazwisko) {
        Nazwisko = nazwisko;
    }

    public void setTelefon(String telefon) {
        Telefon = telefon;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public UtilityUser() {
        
    }

    public String getImie() {
        return Imie;
    }

    public String getNazwisko() {
        return Nazwisko;
    }

    public String getTelefon() {
        return Telefon;
    }

    public String getEmail() {
        return Email;
    }
}
