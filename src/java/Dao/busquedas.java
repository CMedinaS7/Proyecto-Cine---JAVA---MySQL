package Dao;

import java.sql.*;
import java.util.Vector;
import Beans.*;
import java.util.ArrayList;

public class busquedas {
    Connection con;
    CallableStatement cstmt;
    ResultSet rs;

        public usuario logeo(String usuario, String clave) {
        try {
            usuario user = new usuario();
            conexion cn = new conexion();
            con = cn.getAccesoBD();
            cstmt = con.prepareCall("{call validar_personal(?,?)}");
            cstmt.setString(1, usuario);
            cstmt.setString(2, clave);
            rs = cstmt.executeQuery();
            rs.next();
            user.setApellidos(rs.getString(1));
            user.setNombres(rs.getString(2));
            user.setDni(rs.getString(3));
            user.setTelefono(rs.getString(4));
            user.setFoto(rs.getString(5));
            return user;
        } catch (SQLException ex) {
            System.out.println("Error en procedimiento almacenado Iniciar Secion para intranet" + ex);
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

       
 
  public Vector llenarVectorPelicula() {
        Vector aux=new Vector();
        try {
            conexion cn = new conexion();
            con = cn.getAccesoBD();
            cstmt = con.prepareCall("{call sp_mostrarpeliculas}");
            ResultSet rs;
            rs = cstmt.executeQuery();
            while(rs.next()){
                String[] datos=new String[2];
                datos[0]=rs.getString(1);
                datos[1]=rs.getString(2);
                aux.add(datos);
            }
            cstmt.close();
            con.close();
            return aux;
        } catch (SQLException ex) {
            System.out.println("Error");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }
  
    public Vector llenarVectorCine() {
        Vector aux=new Vector();
        try {
            conexion cn = new conexion();
            con = cn.getAccesoBD();
            cstmt = con.prepareCall("{call sp_mostrarcines}");
            ResultSet rs;
            rs = cstmt.executeQuery();
            while(rs.next()){
                String[] datos=new String[2];
                datos[0]=rs.getString(1);
                datos[1]=rs.getString(2);
                aux.add(datos);
            }
            cstmt.close();
            con.close();
            return aux;
        } catch (SQLException ex) {
            System.out.println("Error");
            return null;
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
            }
        }
    }

    }