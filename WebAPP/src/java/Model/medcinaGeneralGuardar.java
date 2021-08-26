/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author jean
 */
public class medcinaGeneralGuardar {

    String paciente_id,estatura, peso, tipoSsangre, pcL, pt, pa, antecedentesAlergicos, antecedentesPersonales,
            antecedentesFamiliares, antecedentesquirurgicos, fechaConsulta, motivoConsulta,
            enfermedad, diagnositico, cargarArchivo;

    public medcinaGeneralGuardar(String paciente_id, String estatura, String peso, String tipoSsangre, String pcL, String pt, String pa, String antecedentesAlergicos, String antecedentesPersonales, String antecedentesFamiliares, String antecedentesquirurgicos, String fechaConsulta, String motivoConsulta, String enfermedad, String diagnositico, String cargarArchivo) {
        this.paciente_id = paciente_id;
        this.estatura = estatura;
        this.peso = peso;
        this.tipoSsangre = tipoSsangre;
        this.pcL = pcL;
        this.pt = pt;
        this.pa = pa;
        this.antecedentesAlergicos = antecedentesAlergicos;
        this.antecedentesPersonales = antecedentesPersonales;
        this.antecedentesFamiliares = antecedentesFamiliares;
        this.antecedentesquirurgicos = antecedentesquirurgicos;
        this.fechaConsulta = fechaConsulta;
        this.motivoConsulta = motivoConsulta;
        this.enfermedad = enfermedad;
        this.diagnositico = diagnositico;
        this.cargarArchivo = cargarArchivo;
    }

    public String getEstatura() {
        return estatura;
    }

    public void setEstatura(String estatura) {
        this.estatura = estatura;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getTipoSsangre() {
        return tipoSsangre;
    }

    public void setTipoSsangre(String tipoSsangre) {
        this.tipoSsangre = tipoSsangre;
    }

    public String getPcL() {
        return pcL;
    }

    public void setPcL(String pcL) {
        this.pcL = pcL;
    }

    public String getPt() {
        return pt;
    }

    public void setPt(String pt) {
        this.pt = pt;
    }

    public String getPa() {
        return pa;
    }

    public void setPa(String pa) {
        this.pa = pa;
    }

    public String getAntecedentesAlergicos() {
        return antecedentesAlergicos;
    }

    public void setAntecedentesAlergicos(String antecedentesAlergicos) {
        this.antecedentesAlergicos = antecedentesAlergicos;
    }

    public String getAntecedentesPersonales() {
        return antecedentesPersonales;
    }

    public void setAntecedentesPersonales(String antecedentesPersonales) {
        this.antecedentesPersonales = antecedentesPersonales;
    }

    public String getAntecedentesFamiliares() {
        return antecedentesFamiliares;
    }

    public void setAntecedentesFamiliares(String antecedentesFamiliares) {
        this.antecedentesFamiliares = antecedentesFamiliares;
    }

    public String getAntecedentesquirurgicos() {
        return antecedentesquirurgicos;
    }

    public void setAntecedentesquirurgicos(String antecedentesquirurgicos) {
        this.antecedentesquirurgicos = antecedentesquirurgicos;
    }

    public String getFechaConsulta() {
        return fechaConsulta;
    }

    public void setFechaConsulta(String fechaConsulta) {
        this.fechaConsulta = fechaConsulta;
    }

    public String getMotivoConsulta() {
        return motivoConsulta;
    }

    public void setMotivoConsulta(String motivoConsulta) {
        this.motivoConsulta = motivoConsulta;
    }

    public String getEnfermedad() {
        return enfermedad;
    }

    public void setEnfermedad(String enfermedad) {
        this.enfermedad = enfermedad;
    }

    public String getDiagnositico() {
        return diagnositico;
    }

    public void setDiagnositico(String diagnositico) {
        this.diagnositico = diagnositico;
    }

    public String getCargarArchivo() {
        return cargarArchivo;
    }

    public void setCargarArchivo(String cargarArchivo) {
        this.cargarArchivo = cargarArchivo;
    }

    public String getPaciente_id() {
        return paciente_id;
    }

    public void setPaciente_id(String paciente_id) {
        this.paciente_id = paciente_id;
    }
}
