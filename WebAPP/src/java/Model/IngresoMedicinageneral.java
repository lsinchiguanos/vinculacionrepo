package Model;

public class IngresoMedicinageneral {

    private int estatura, peso, pc, pt, pa;
    private String tiposangre, antecedentesalergico, antecedentesfamiliares, antecedentesgirugicos, antecedentespersonales;

    public IngresoMedicinageneral() {
    }

    public IngresoMedicinageneral(int estatura, int peso, int pc, int pt, int pa, String tiposangre, String antecedentesalergico, String antecedentesfamiliares, String antecedentesgirugicos, String antecedentespersonales) {
        this.estatura = estatura;
        this.peso = peso;
        this.pc = pc;
        this.pt = pt;
        this.pa = pa;
        this.tiposangre = tiposangre;
        this.antecedentesalergico = antecedentesalergico;
        this.antecedentesfamiliares = antecedentesfamiliares;
        this.antecedentesgirugicos = antecedentesgirugicos;
        this.antecedentespersonales = antecedentespersonales;
    }

    public int getEstatura() {
        return estatura;
    }

    public void setEstatura(int estatura) {
        this.estatura = estatura;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public int getPc() {
        return pc;
    }

    public void setPc(int pc) {
        this.pc = pc;
    }

    public int getPt() {
        return pt;
    }

    public void setPt(int pt) {
        this.pt = pt;
    }

    public int getPa() {
        return pa;
    }

    public void setPa(int pa) {
        this.pa = pa;
    }

    public String getTiposangre() {
        return tiposangre;
    }

    public void setTiposangre(String tiposangre) {
        this.tiposangre = tiposangre;
    }

    public String getAntecedentesalergico() {
        return antecedentesalergico;
    }

    public void setAntecedentesalergico(String antecedentesalergico) {
        this.antecedentesalergico = antecedentesalergico;
    }

    public String getAntecedentesfamiliares() {
        return antecedentesfamiliares;
    }

    public void setAntecedentesfamiliares(String antecedentesfamiliares) {
        this.antecedentesfamiliares = antecedentesfamiliares;
    }

    public String getAntecedentesgirugicos() {
        return antecedentesgirugicos;
    }

    public void setAntecedentesgirugicos(String antecedentesgirugicos) {
        this.antecedentesgirugicos = antecedentesgirugicos;
    }

    public String getAntecedentespersonales() {
        return antecedentespersonales;
    }

    public void setAntecedentespersonales(String antecedentespersonales) {
        this.antecedentespersonales = antecedentespersonales;
    }

}
