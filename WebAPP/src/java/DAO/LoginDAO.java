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
import java.sql.ResultSet;
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
    public int validarLogin(Constructor tm) throws Exception {
        String user = tm.getGaleno_user();
        String clave1 = tm.getGaleno_pass();
        Statement st = cn.getConecction().createStatement();
        rs = st.executeQuery("SELECT COUNT(galeno_id) AS cantidad FROM public.galeno WHERE galeno_user='" + user + "' AND galeno_pass='" + getMD5(clave1) + "'");
        while (rs.next()) {
            rspta = rs.getInt("cantidad");
        }
        return rspta;
    }

    public  ArrayList<Constructor> getContactos() {
        ArrayList<Constructor> listaContactos = new ArrayList<>();
        conexion cn = new conexion();
        try {
            Constructor contacto = new Constructor();
            String user = contacto.getGaleno_user();
            Statement st = cn.getConecction().createStatement();
            ResultSet rs = st.executeQuery("select * from galeno where galeno_user = '" + user + "'");
            {
                while (rs.next()) {
                    contacto.setGaleno_dni(rs.getString("galeno_dni"));
                    contacto.setGaleno_primer_nombre(rs.getString("galeno_primer_nombre"));
                    contacto.setGaleno_telefono(rs.getString("galeno_telefono"));
                    contacto.setGaleno_direccion(rs.getString("galeno_direccion"));
                    contacto.setGaleno_segundo_nombre(rs.getString("galeno_segundo_nombre"));
                    contacto.setGaleno_provincia(rs.getString("galeno_provincia"));
                    contacto.setGaleno_canton(rs.getString("galeno_canton"));
                    contacto.setGaleno_parroquia(rs.getString("galeno_parroquia"));
                    contacto.setGaleno_correoelectronico(rs.getString("galeno_correoelectronico"));
                    listaContactos.add(contacto);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaContactos;
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
