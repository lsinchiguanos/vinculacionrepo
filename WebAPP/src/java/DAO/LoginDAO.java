/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.Constructor;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;

/**
 *
 * @author Manue
 */
public class LoginDAO {

    int rspta = 0;
    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;

    public int SearchClienteLogin(Constructor tm) throws SQLException {
        int cliente_id = 0;
        sql_command = "Select galeno_id from galeno where galeno_user = '" + tm.getGaleno_user() + "' and galeno_pass = '" + getMD5(tm.getGaleno_pass()) + "'";
        try {
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            if (rs.next()) {
                cliente_id = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
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
        return cliente_id;
    }

    public String SearchGaleno(Constructor tm) throws SQLException {
        String mensaje = "El producto fue encontrado con éxito";
        sql_command = "SELECT galeno_dni, galeno_primer_nombre \n"
                + "	FROM galeno WHERE producto_id=" + tm.getGaleno_user() + ";";

        pst = cn.getConecction().prepareStatement(sql_command);
        rs = pst.executeQuery();
        return mensaje;
    }

    public static String getMD5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger number = new BigInteger(1, messageDigest);
            String hashtext = number.toString(16);

            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
