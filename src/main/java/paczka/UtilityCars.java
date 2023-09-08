package paczka;

public class UtilityCars {

    public String model;
    public int rocznik;

    public String typ;
    public String paliwo;

    public int cena;
    public UtilityCars(String model, int rocznik, String typ, String paliwo, int cena) {
        this.model = model;
        this.rocznik = rocznik;
        this.typ = typ;
        this.paliwo = paliwo;
        this.cena = cena;
    }

    public String getModel() {
        return model;
    }

    public int getRocznik() {
        return rocznik;
    }

    public String getTyp() {
        return typ;
    }

    public String getPaliwo() {
        return paliwo;
    }

    public int getCena() {
        return cena;
    }
}
