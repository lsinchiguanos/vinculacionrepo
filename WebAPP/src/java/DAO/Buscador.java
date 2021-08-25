package DAO;

import BD.conexion;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class Buscador {

    public boolean Buscador(String cedula) {
        boolean buscado = false;
        try {
            conexion c = new conexion();
            Connection con = c.getConecction();
            if (con != null) {
                Statement st;   
                st = con.createStatement();

                st.executeQuery("select paciente_dni, CONCAT(paciente_primer_nombre, ' ',paciente_segundo_nombre),"
                        + "CONCAT(paciente_apellido_paterno, ' ',paciente_apellido_materno),paciente_fnacimiento,"
                        + "paciente_convencional,paciente_telefono,paciente_provincia,paciente_direccion,\n"
                        + " paciente_genero, paciente_ayudasocial,paciente_nacionalidad, "
                        + "paciente_tipo_sangre from paciente "
                        + "where paciente_dni = '" + cedula + "'");
                buscado = true;
                st.close();
            }
            c.isConected();
        } catch (SQLException e) {
            buscado = false;
        }
        return buscado;
    }

}
