/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.TrabajadorModel;
import java.sql.ResultSet;

/**
 *
 * @author Manue
 */
public class LoginDAO {
    int rspta=0;
    String sql="";
    ResultSet rs=null;
    conexion cn=new conexion();
    public int validarLogin(TrabajadorModel tm) throws Exception{
        sql="SELECT COUNT(galeno_id) AS cantidad FROM public.galeno WHERE galeno_user='"+tm.getUsuario()+"' AND galeno_pass='"+tm.getClave()+"'";
        rs=cn.ejecutarConsulta(sql);
        while(rs.next()){
            rspta=rs.getInt("cantidad");
        }
    return  rspta;
    }
    
}
