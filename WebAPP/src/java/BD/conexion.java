/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BD;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Manue
 */
public class conexion {

    public static String url = "jdbc:postgresql://localhost:5432/vinculacion";
    public static String usuario = "postgres";
    public static String clave = "1234";
    PreparedStatement ps = null;
    Statement st;
    private Connection conecction;
    private static final long serialVersionUID = 1L;

    public conexion() {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println(e.getMessage());
        }
    }

    public synchronized Connection getConecction() {
        try {
            if (conecction == null || conecction.isClosed()) {
                conecction = DriverManager.getConnection(url, usuario, clave);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return conecction;
    }

    public boolean isConected() {
        try {
            if (conecction == null) {
                return false;
            } else {
                return !conecction.isClosed();
            }
        } catch (SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
