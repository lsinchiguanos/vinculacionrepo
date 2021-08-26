package DAO;

import BD.conexion;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Model.BuscadorPaciente;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class Buscador {
    
  String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null; 

 public BuscadorPaciente Listbuscarpaciente(String cedula) {
        BuscadorPaciente newbuscar = new  BuscadorPaciente();
        pst = null;
        rs = null;
        try {
              sql_command ="select paciente_dni, CONCAT(paciente_primer_nombre, ' ',paciente_segundo_nombre) as nombre,"
                        + "CONCAT(paciente_apellido_paterno, ' ',paciente_apellido_materno)as apellido,paciente_grupo,"
                        + "paciente_convencional,paciente_telefono,paciente_provincia,paciente_direccion,\n"
                        + " paciente_genero, paciente_ayudasocial,paciente_nacionalidad, "
                        + "paciente_correoelectronico from paciente "
                        + "where paciente_dni = '" + cedula + "'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
              
                newbuscar.setPaciente_dni(String.valueOf(rs.getString("paciente_dni")));
                newbuscar.setPaciente_primer_segundo_nombre(String.valueOf(rs.getString("nombre")));
                newbuscar.setPaciente_primer_segundo_apellido(String.valueOf(rs.getString("apellido")));
                newbuscar.setPaciente_grupo(String.valueOf(rs.getString("paciente_grupo")));
                newbuscar.setPaciente_convencional(String.valueOf(rs.getString("paciente_convencional")));
                newbuscar.setPaciente_telefono(String.valueOf(rs.getString("paciente_telefono")));
                newbuscar.setPaciente_provincia(String.valueOf(rs.getString("paciente_provincia")));
                newbuscar.setPaciente_direccion(String.valueOf(rs.getString("paciente_direccion")));
                newbuscar.setPaciente_genero(String.valueOf(rs.getString("paciente_genero")));
                newbuscar.setPaciente_ayudasocial(String.valueOf(rs.getString("paciente_ayudasocial")));
                newbuscar.setPaciente_nacionalidad(String.valueOf(rs.getString("paciente_nacionalidad")));
                newbuscar.setPaciente_correoelectronico(String.valueOf(rs.getString("paciente_correoelectronico"))); 
                
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        } finally {
            try {
                if (cn.isConected()) {
                    cn.getConecction().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return newbuscar;
    }

}
