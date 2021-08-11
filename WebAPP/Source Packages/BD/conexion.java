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

/**
 *
 * @author Manue
 */
public class conexion implements Serializable{
     public static String url = "jdbc:postgresql://localhost:5432/vinculacion";
    public static String usuario = "postgres";
    public static String clave = "1234";
    public static String clase = "org.postgresql.Driver";
    PreparedStatement ps=null;

    public static Connection conectar() {
        Connection conexion = null;
        try {
            Class.forName(clase);
            conexion = (Connection) DriverManager.getConnection(url, usuario, clave);
            System.out.println("Conexion establecida..");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return conexion;
    }
    public ResultSet ejecutarConsulta(String sql) throws Exception{
    Statement st=null;
    st=conectar().createStatement();
    ResultSet rs=st.executeQuery(sql);
    return rs;
    }
    public int ejecutarActualizacionP(String sql,Object[] params)throws SQLException{
        ps=conectar().prepareStatement(sql);
        //definir los valores para los argumentos
        for(int i=0;i<params.length;i++){
                ps.setObject(i+1,params[i]);
                }
        int r=ps.executeUpdate(); //retorna la cantidad de registros actualizados    
        return r;   
    }
    public void desconectar() throws SQLException{
    conectar().close();
    }
    
}
