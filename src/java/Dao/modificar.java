/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;
/**
 *
 *
 */
public class modificar{

    Connection cn;
   
       public boolean modificaPersonal(String codigo,String nombres,String apellidos,String direccion,String telefono,String dni,String usuario,String clave,String foto){
       boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.getAccesoBD();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarPersonal(?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombres);
        cstmt.setString(3, apellidos);
        cstmt.setString(4, direccion);
        cstmt.setString(5, telefono);
        cstmt.setString(6, dni);
        cstmt.setString(7, usuario);
        cstmt.setString(8, clave);
        cstmt.setString(9, foto);
        

            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Personal   " + ex);}
        finally{
        return resultado;
        }
}

public boolean modificaCine(String codigo,String nombre,String direccion,String telefono,String foto,String descripcion){
        boolean resultado=false;

    try{
        int filas=0;
        conexion con=new conexion();
        cn=con.getAccesoBD();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarCine(?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombre);
        cstmt.setString(3, direccion);
        cstmt.setString(4, telefono);
        cstmt.setString(5, foto);
        cstmt.setString(6, descripcion);
            filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Horario");}
        finally{
        return resultado;
        }
}



    public boolean modificaPelicula(String codigo,String nombre,String director,String reparto,String duracion,String clasificacion,String tipo,String trailer,String foto,String sinopsis){
        boolean resultado=false;
   try{
        int filas=0;
        conexion con=new conexion();
        cn=con.getAccesoBD();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call ModificarPelicula(?,?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, codigo);
        cstmt.setString(2, nombre);
        cstmt.setString(3, director);
        cstmt.setString(4, reparto);
        cstmt.setString(5, duracion);
        cstmt.setString(6, clasificacion);
        cstmt.setString(7, tipo);
        cstmt.setString(8, trailer);
        cstmt.setString(9, foto);
        cstmt.setString(10, sinopsis);
 
        filas=cstmt.executeUpdate();
            if(filas>=1){
            resultado= true;
            cstmt.close();
            }

    }catch(SQLException ex){  System.out.print("Error en el procedimiento Modificar Producto" + ex);}
        finally{
        return resultado;
        }
        }
}


    