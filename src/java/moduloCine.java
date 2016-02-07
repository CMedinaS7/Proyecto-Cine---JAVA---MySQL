/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Dao.insertar;
import Dao.modificar;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Carlos J Medina
 */
public class moduloCine extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
                
        //Instancio los paquestes del DAO
        modificar modify=new modificar();
        insertar insert=new insertar();

        //Capturo el valor de las cajas de texto en variables
        String codigo=request.getParameter("txtcodigo");
        String nombre=request.getParameter("txtnombre");
        String direccion=request.getParameter("txtdireccion");
        String telefono=request.getParameter("txttelefono");
        String descripcion=request.getParameter("txtdes");
        String foto=request.getParameter("foto");
        
        
        
        
        //Capturo los nombres de los botones en variables
        String busca=request.getParameter("buscar");
        String modifica=request.getParameter("modificar");
        String grabar=request.getParameter("grabar");
        
         //Realizo el procedimiento para grabar en la BD
        if (grabar != null) {//Pregunto si ha presionado el boton grabar
         if(nombre!=null && direccion!=null && foto!=null ){//Verifico que los campos obligatorios se hayan llenado
        boolean resultado=insert.insertcine(nombre, direccion, telefono,"static/images/cines/"+ foto, descripcion);//Llamo al proceso insertar personal dandole los parametros (variables) y lo guardo en la variable resultado
        if (resultado){response.sendRedirect("intranet/cines.jsp?resp=0");}//Pregunto si el resultado es positivo entonces envio la variable msg con el valor ok
        else{response.sendRedirect("intranet/cines.jsp?resp=falso");}//De lo contrario envio la variable msg con el valor falso
        }else{response.sendRedirect("intranet/cines.jsp?msg=nulo");}
        }
        //Realizo el procedimiento para modificar el personal
       if (modifica != null) {
       if (codigo != null && nombre != null) {
           if(direccion!=null && foto!=null && telefono!=null ){
            boolean resultado=modify.modificaCine(codigo, nombre, direccion, telefono,"static/images/cines/" + foto, descripcion);
        if (resultado){response.sendRedirect("intranet/cines.jsp?resp=1");}
        else{response.sendRedirect("intranet/cines.jsp?resp=2");}
        }else{response.sendRedirect("intranet/cines.jsp?resp=nulo");}
       }
       }
                
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
