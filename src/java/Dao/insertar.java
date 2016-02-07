/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;
import java.sql.*;
import Beans.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 *
 * 
 */
public class insertar {
   
    public boolean insertpersonal(String nombres,String apellidos,String direccion,String telefono,String dni,String usuario,String clave,String foto){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.getAccesoBD();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarPersonal(?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, nombres);
        cstmt.setString(2, apellidos);
        cstmt.setString(3, direccion);
        cstmt.setString(4, telefono);
        cstmt.setString(5, dni);
        cstmt.setString(6, usuario);
        cstmt.setString(7, clave);
        cstmt.setString(8, foto);
        
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar personal   " + ex );}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;

    }

    public boolean insertpelicula(String nombre,String director,String reparto,String duracion,String clasificacion,String tipo,String trailer,String foto,String sinopsis){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.getAccesoBD();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarPelicula(?,?,?,?,?,?,?,?,?)}");
        cstmt.setString(1, nombre);
        cstmt.setString(2, director);
        cstmt.setString(3, reparto);
        cstmt.setString(4, duracion);
        cstmt.setString(5, clasificacion);
        cstmt.setString(6, tipo);
        cstmt.setString(7, trailer);
        cstmt.setString(8, foto);
        cstmt.setString(9, sinopsis);
        
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar pelicula   " + ex);}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;

    }
    
    
    public boolean insertcine(String nombre,String direccion,String telefono,String foto,String descripcion){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.getAccesoBD();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarCine(?,?,?,?,?)}");
        cstmt.setString(1, nombre);
        cstmt.setString(2, direccion);
        cstmt.setString(3, telefono);
        cstmt.setString(4, foto);
        cstmt.setString(5, descripcion);
        
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar pelicula   " + ex);}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;

    }

    public boolean inserthorario(String pelicula,String cine,String dia,String hora){
    boolean resultado=false;
    Connection cn=null;
    try{
        conexion con=new conexion();
        cn=con.getAccesoBD();
        CallableStatement cstmt;
        cstmt=cn.prepareCall("{call InsertarHorario(?,?,?,?)}");
        cstmt.setString(1, pelicula);
        cstmt.setString(2, cine);
        cstmt.setString(3, dia);
        cstmt.setString(4, hora);
        int fila=cstmt.executeUpdate();
        if(fila>=1){
            resultado=true;
        }
        cstmt.close();
    }catch(SQLException ex){System.out.println("Error al Insertar horario");}
    finally{
        try{
            cn.close();
        }catch(SQLException ex1){System.out.println("No existio Conexion");}
    }
    return resultado;

    }
    
}