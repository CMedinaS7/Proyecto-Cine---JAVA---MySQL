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
public class moduloPelicula extends HttpServlet {

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
        String pelicula=request.getParameter("txtpeli");
        String director=request.getParameter("txtdir");
        String reparto=request.getParameter("txtrep");
        String duracion=request.getParameter("txtdur");
        String clasificacion=request.getParameter("cbocla");
        String tipo=request.getParameter("txttip");
        String trailer=request.getParameter("txttra");
        String sinopsis=request.getParameter("txtsin");
        String foto=request.getParameter("foto");
        
        
        //Capturo los nombres de los botones en variables
        String busca=request.getParameter("buscar");
        String modifica=request.getParameter("modificar");
        String grabar=request.getParameter("grabar");
        
         //Realizo el procedimiento para grabar en la BD
        if (grabar != null) {//Pregunto si ha presionado el boton grabar
         if(pelicula!=null && director!=null && reparto!=null ){//Verifico que los campos obligatorios se hayan llenado
        boolean resultado=insert.insertpelicula(pelicula, director, reparto, duracion, clasificacion, tipo, trailer, "static/images/peliculas/"+foto,sinopsis);//Llamo al proceso insertar personal dandole los parametros (variables) y lo guardo en la variable resultado
        if (resultado){response.sendRedirect("intranet/peliculas.jsp?resp=0");}//Pregunto si el resultado es positivo entonces envio la variable msg con el valor ok
        else{response.sendRedirect("intranet/peliculas.jsp?resp=falso");}//De lo contrario envio la variable msg con el valor falso
        }else{response.sendRedirect("intranet/peliculas.jsp?msg=nulo");}
        }
        //Realizo el procedimiento para modificar el personal
       if (modifica != null) {
       if (codigo != null && pelicula != null) {
           if(director!=null && foto!=null && reparto!=null ){
            boolean resultado=modify.modificaPelicula(codigo, pelicula, director, reparto, duracion, clasificacion, tipo, trailer, "static/images/peliculas/"+foto, sinopsis);
        if (resultado){response.sendRedirect("intranet/peliculas.jsp?resp=1");}
        else{response.sendRedirect("intranet/peliculas.jsp?resp=2");}
        }else{response.sendRedirect("intranet/peliculas.jsp?resp=nulo");}
       }
       }
       
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet moduloPelicula</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet moduloPelicula at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
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
