/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Util;
import java.util.Vector;
import Dao.cargar;
/**
 *
 * @author IES
 */
public class LlenarCombo1 
{
    public Vector llenarPeliculas()
    {
        cargar buscador=new cargar();
        Vector Aux=new Vector();
        if (buscador.devuelveCodigoPelicula()!=null)
        {
         return Aux=buscador.devuelveCodigoPelicula();
        }
        else
        {
            return null;
        }
    }

     public Vector llenarCines()
    {
        cargar buscador=new cargar();
        Vector Aux=new Vector();
        if (buscador.devuelveCodigoCargo()!=null)
        {
         return Aux=buscador.devuelveCodigoCine();
        }
        else
        {
            return null;
        }
    }
     
     public Vector llenarScat()
    {
        cargar buscador=new cargar();
        Vector Aux=new Vector();
        if (buscador.devuelveCodigoCargo()!=null)
        {
         return Aux=buscador.devuelveCodigoPelicula();
        }
        else
        {
            return null;
        }
    }

}