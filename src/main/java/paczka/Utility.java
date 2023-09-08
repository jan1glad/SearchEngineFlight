package paczka;

public class Utility {

        public String skad;
        public String dokad;
        public String hour;

        public int cena;

    public Utility(String skad, String dokad, String hour, int cena) {
        this.skad = skad;
        this.dokad = dokad;
        this.hour = hour;
        this.cena = cena;
    }

    public String getSkad() {
        return skad;
    }

    public String getDokad() {
        return dokad;
    }

    public String getHour() {
        return hour;
    }

    public int getCena() {
        return cena;
    }


}
