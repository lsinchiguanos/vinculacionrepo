/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.ControladorPaciente;
import Model.IngresoMedicinageneral;
import Model.medcinaGeneralGuardar;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author jean
 */
public class AgregarMedicinaGeneral {

    public static boolean agregarUsuario(medcinaGeneralGuardar usuario) {
        boolean agregado = false;
        try {
            conexion c = new conexion();
            Connection con = c.getConecction();
            if (con != null) {
                Statement st;
                st = con.createStatement();
                st.executeUpdate("INSERT INTO medicinageneral(paciente_dni, estatura, peso, tipossangre, \n"
                        + "            pc, pt, pa, antecedentesalergicos, antecedentespersonales, antecedentesfamiliares, \n"
                        + "            antecedentesquirurgicos, fechaconsulta, motivoconsulta, enfermedad, \n"
                        + "            diagnositico, cargararchivo)VALUES ('" + usuario.getPaciente_id() + "','" + usuario.getEstatura() + "','" + usuario.getPeso()
                        + "','" + usuario.getTipoSsangre() + "','" + usuario.getPcL() + "','" + usuario.getPt()
                        + "','" + usuario.getPa() + "','" + usuario.getAntecedentesAlergicos() + "','" + usuario.getAntecedentesPersonales()
                        + "','" + usuario.getAntecedentesFamiliares() + "','" + usuario.getAntecedentesquirurgicos() + "','" + usuario.getFechaConsulta()
                        + "','" + usuario.getMotivoConsulta() + "','" + usuario.getEnfermedad() + "','" + usuario.getDiagnositico()
                        + "','" + usuario.getCargarArchivo() + "')");
                agregado = true;
                st.close();
            }
            c.isConected();
        } catch (SQLException e) {
            agregado = false;
        }
        return agregado;
    }
}
