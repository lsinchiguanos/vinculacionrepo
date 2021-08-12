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
import java.sql.ResultSet;

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
        sql = "SELECT COUNT(galeno_id) AS cantidad FROM public.galeno WHERE galeno_user='" + user + "' AND galeno_pass='" + getMD5(clave1) + "'";
        rs = cn.ejecutarConsulta(sql);
        while (rs.next()) {
            rspta = rs.getInt("cantidad");
        }
        return rspta;
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
