package Model;

public class BuscadorPaciente {

    private String pacienteid,nombrescompleto,paciente_ayudasocial,paciente_dni,paciente_primer_segundo_nombre,paciente_grupo, paciente_primer_segundo_apellido, paciente_direccion, paciente_provincia, paciente_nacionalidad, paciente_genero, paciente_correoelectronico, paciente_telefono, paciente_convencional;

    public BuscadorPaciente() {
    }

    public BuscadorPaciente(String pacienteid,String nombrescompletos,String paciente_dni, String paciente_primer_segundo_nombre, String paciente_primer_segundo_apellido, String paciente_direccion, String paciente_provincia, String paciente_nacionalidad, String paciente_genero, String paciente_correoelectronico, String paciente_ayudasocial, String paciente_telefono, String paciente_convencional, String paciente_grupo) {
       this.pacienteid=pacienteid;
        this.nombrescompleto=nombrescompletos;
        this.paciente_dni = paciente_dni;
        this.paciente_primer_segundo_nombre = paciente_primer_segundo_nombre;
        this.paciente_primer_segundo_apellido = paciente_primer_segundo_apellido;
        this.paciente_direccion = paciente_direccion;
        this.paciente_provincia = paciente_provincia;
        this.paciente_nacionalidad = paciente_nacionalidad;
        this.paciente_genero = paciente_genero;
        this.paciente_correoelectronico = paciente_correoelectronico;
        this.paciente_ayudasocial = paciente_ayudasocial;
        this.paciente_telefono = paciente_telefono;
        this.paciente_convencional = paciente_convencional;
        this.paciente_grupo = paciente_grupo;
    }

    public String getPacienteid() {
        return pacienteid;
    }

    public void setPacienteid(String pacienteid) {
        this.pacienteid = pacienteid;
    }

    public String getNombrescompleto() {
        return nombrescompleto;
    }

    public void setNombrescompleto(String nombrescompleto) {
        this.nombrescompleto = nombrescompleto;
    }

     

    public String getPaciente_grupo() {
        return paciente_grupo;
    }

    public void setPaciente_grupo(String paciente_grupo) {
        this.paciente_grupo = paciente_grupo;
    }

  

    public String getPaciente_primer_segundo_nombre() {
        return paciente_primer_segundo_nombre;
    }

    public void setPaciente_primer_segundo_nombre(String paciente_primer_segundo_nombre) {
        this.paciente_primer_segundo_nombre = paciente_primer_segundo_nombre;
    }

    public String getPaciente_primer_segundo_apellido() {
        return paciente_primer_segundo_apellido;
    }

    public void setPaciente_primer_segundo_apellido(String paciente_primer_segundo_apellido) {
        this.paciente_primer_segundo_apellido = paciente_primer_segundo_apellido;
    }

    public String getPaciente_direccion() {
        return paciente_direccion;
    }

    public void setPaciente_direccion(String paciente_direccion) {
        this.paciente_direccion = paciente_direccion;
    }

    public String getPaciente_provincia() {
        return paciente_provincia;
    }

    public void setPaciente_provincia(String paciente_provincia) {
        this.paciente_provincia = paciente_provincia;
    }

    public String getPaciente_nacionalidad() {
        return paciente_nacionalidad;
    }

    public void setPaciente_nacionalidad(String paciente_nacionalidad) {
        this.paciente_nacionalidad = paciente_nacionalidad;
    }

    public String getPaciente_genero() {
        return paciente_genero;
    }

    public void setPaciente_genero(String paciente_genero) {
        this.paciente_genero = paciente_genero;
    }

    public String getPaciente_correoelectronico() {
        return paciente_correoelectronico;
    }

    public void setPaciente_correoelectronico(String paciente_correoelectronico) {
        this.paciente_correoelectronico = paciente_correoelectronico;
    }

    public String getPaciente_ayudasocial() {
        return paciente_ayudasocial;
    }

    public void setPaciente_ayudasocial(String paciente_ayudasocial) {
        this.paciente_ayudasocial = paciente_ayudasocial;
    }

    public String getPaciente_dni() {
        return paciente_dni;
    }

    public void setPaciente_dni(String paciente_dni) {
        this.paciente_dni = paciente_dni;
    }

    public String getPaciente_telefono() {
        return paciente_telefono;
    }

    public void setPaciente_telefono(String paciente_telefono) {
        this.paciente_telefono = paciente_telefono;
    }

    public String getPaciente_convencional() {
        return paciente_convencional;
    }

    public void setPaciente_convencional(String paciente_convencional) {
        this.paciente_convencional = paciente_convencional;
    }

    

}
