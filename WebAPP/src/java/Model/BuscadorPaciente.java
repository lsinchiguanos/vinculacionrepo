package Model;

public class BuscadorPaciente {

    private int paciente_dni, paciente_telefono, paciente_convencional, paciente_fnacimiento;
    private String paciente_primer_segundo_nombre, paciente_primer_segundo_apellido, paciente_direccion, paciente_provincia, paciente_nacionalidad, paciente_genero, paciente_tipo_sangre, paciente_ayudasocial;

    public BuscadorPaciente() {
    }

    public BuscadorPaciente(int paciente_dni, String paciente_primer_segundo_nombre, String paciente_primer_segundo_apellido, String paciente_direccion, String paciente_provincia, String paciente_nacionalidad, String paciente_genero, String paciente_tipo_sangre, String paciente_ayudasocial, int paciente_telefono, int paciente_convencional, int paciente_fnacimiento) {
        this.paciente_dni = paciente_dni;
        this.paciente_primer_segundo_nombre = paciente_primer_segundo_nombre;
        this.paciente_primer_segundo_apellido = paciente_primer_segundo_apellido;
        this.paciente_direccion = paciente_direccion;
        this.paciente_provincia = paciente_provincia;
        this.paciente_nacionalidad = paciente_nacionalidad;
        this.paciente_genero = paciente_genero;
        this.paciente_tipo_sangre = paciente_tipo_sangre;
        this.paciente_ayudasocial = paciente_ayudasocial;
        this.paciente_telefono = paciente_telefono;
        this.paciente_convencional = paciente_convencional;
        this.paciente_fnacimiento = paciente_fnacimiento;
    }

    public int getPaciente_dni() {
        return paciente_dni;
    }

    public void setPaciente_dni(int paciente_dni) {
        this.paciente_dni = paciente_dni;
    }

    public int getPaciente_telefono() {
        return paciente_telefono;
    }

    public void setPaciente_telefono(int paciente_telefono) {
        this.paciente_telefono = paciente_telefono;
    }

    public int getPaciente_convencional() {
        return paciente_convencional;
    }

    public void setPaciente_convencional(int paciente_convencional) {
        this.paciente_convencional = paciente_convencional;
    }

    public int getPaciente_fnacimiento() {
        return paciente_fnacimiento;
    }

    public void setPaciente_fnacimiento(int paciente_fnacimiento) {
        this.paciente_fnacimiento = paciente_fnacimiento;
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

    public String getPaciente_tipo_sangre() {
        return paciente_tipo_sangre;
    }

    public void setPaciente_tipo_sangre(String paciente_tipo_sangre) {
        this.paciente_tipo_sangre = paciente_tipo_sangre;
    }

    public String getPaciente_ayudasocial() {
        return paciente_ayudasocial;
    }

    public void setPaciente_ayudasocial(String paciente_ayudasocial) {
        this.paciente_ayudasocial = paciente_ayudasocial;
    }

}
