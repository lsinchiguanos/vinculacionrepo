/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Manue
 */
public class TrabajadorModel {

    private int galeno_id;
    private String galeno_user, galeno_pass;

    public TrabajadorModel() {
    }

    public TrabajadorModel(int galeno_id, String galeno_user, String galeno_pass) {
        this.galeno_id = galeno_id;
        this.galeno_user = galeno_user;
        this.galeno_pass = galeno_pass;
    }

    public int getCodtrabajador() {
        return galeno_id;
    }

    public void setCodtrabajador(int codtrabajador) {
        this.galeno_id = codtrabajador;
    }

    public String getUsuario() {
        return galeno_user;
    }

    public void setUsuario(String usuario) {
        this.galeno_user = usuario;
    }

    public String getClave() {
        return galeno_pass;
    }

    public void setClave(String clave) {
        this.galeno_pass = clave;
    }

}
