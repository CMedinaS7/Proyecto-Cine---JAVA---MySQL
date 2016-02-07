
package Util;
import java.util.Vector;
import Dao.cargar;

public class llenarcombo {
    cargar busca=new cargar();

    public Vector llenarpeliculas(){
        Vector aux=busca.devuelveCodigoPelicula();
        return aux;
    }

     public Vector llenarcines(){
        Vector aux=busca.devuelveCodigoCine();
        return aux;
    }
     

}
