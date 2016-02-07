package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Dao.conexion;
import java.sql.*;
import java.util.Date;
import Util.LlenarCombo1;
import java.util.Vector;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:fb=\"http://www.facebook.com/2008/fbml\">\r\n");
      out.write("\r\n");
      out.write("<!-- Mirrored from www.cinestar.com.pe/ by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 24 May 2012 03:42:45 GMT -->\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<meta http-equiv=\"Content-language\" content=\"es\" />\r\n");
      out.write("<base  />\r\n");
      out.write("<title>Multicines CineMax</title>\r\n");
      out.write("<meta name=\"title\" content=\"Multicines CineMax\"/>\r\n");
      out.write("<meta name=\"description\" content=\"Multicines CineMax es una empresa pionera en el formato de multicines en el Perú. Información de películas, estrenos, concursos y más\"/>\r\n");
      out.write("<meta name=\"keywords\" content=\" cinestar, multicines, cine, cartelera, pelicula, estreno, novedades, concursos\"/>\r\n");
      out.write("<meta name=\"copyright\" content=\"(c) www.AlumnosUPAO\"/>\r\n");
      out.write("<meta name=\"author\" content=\"Mario-Alejandro-Gonzales-Flores\"/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<meta property=\"og:title\" content=\"Multicines CineMax\" />\r\n");
      out.write("<meta property=\"og:description\" content=\"Multicines CineMax es una empresa pionera en el formato de multicines en el Perú. Información de películas, estrenos, concursos y más\" />\r\n");
      out.write("<meta property=\"og:image\" content=\"static/images/logo_cinestar.png\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"favicon.ico\">\r\n");
      out.write("<link href=\"static/css/estilos_cinestar.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link href=\"static/css/nivo-slider.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"static/scripts/function.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"static/scripts/jquery.min.js.php\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"static/scripts/jquery.nivo.slider.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"> \r\n");
      out.write(" \r\n");
      out.write("$(window).load(function() {\r\n");
      out.write("\t$('#slider').nivoSlider({\r\n");
      out.write("\t\teffect:'random',\r\n");
      out.write("\t\tslices:15,\r\n");
      out.write("\t\tanimSpeed:500,\r\n");
      out.write("\t\tpauseTime:6000,\r\n");
      out.write("\t\tdirectionNav:true, //Next & Prev\r\n");
      out.write("\t\tdirectionNavHide:false, //Only show on hover\r\n");
      out.write("\t\tcontrolNav:true, //1,2,3...\r\n");
      out.write("\t\tpauseOnHover:true, //Stop animation while hovering\r\n");
      out.write("\t\tbeforeChange: function(){},\r\n");
      out.write("\t\tafterChange: function(){}\r\n");
      out.write("\t});\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("<script>\r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write("$(\"a.getback\").click( function(){\r\n");
      out.write("\thistory.back();\r\n");
      out.write("\t});\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write("\t$(\"#topnav li\").prepend(\"<span></span>\"); //Throws an empty span tag right before the a tag\r\n");
      out.write("\t\r\n");
      out.write("\t$(\"#topnav li\").each(function() { //For each list item...\r\n");
      out.write("\t\tvar linkText = $(this).find(\"a\").html(); //Find the text inside of the a tag\r\n");
      out.write("\t\t$(this).find(\"span\").show().html(linkText); //Add the text in the span tag\r\n");
      out.write("\t}); \r\n");
      out.write("\t\r\n");
      out.write("\t$(\"#topnav li\").hover(function() {\t//On hover...\r\n");
      out.write("\t\t$(this).find(\"span\").stop().animate({ \r\n");
      out.write("\t\t\tmarginTop: \"-32\" //Find the span tag and move it up 40 pixels\r\n");
      out.write("\t\t}, 250);\r\n");
      out.write("\t} , function() { //On hover out...\r\n");
      out.write("\t\t$(this).find(\"span\").stop().animate({\r\n");
      out.write("\t\t\tmarginTop: \"0\" //Move the span back to its original state (0px)\r\n");
      out.write("\t\t}, 250);\r\n");
      out.write("\t});\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"static/scripts/jquery.featureList-1.0.0.js\"></script>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("\t\t$(document).ready(function() {\r\n");
      out.write("\t\t\t$.featureList(\r\n");
      out.write("\t\t\t\t$(\"#tabs li a\"),\r\n");
      out.write("\t\t\t\t$(\"#output li\"), {\r\n");
      out.write("\t\t\t\t\tstart_item\t:\t1\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t);\r\n");
      out.write("\t\t});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"static/highslide/highslide-with-html.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"static/highslide/highslide_min.css\" />\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t// Apply the Highslide settings\r\n");
      out.write("\ths.graphicsDir = 'index.jsp';\r\n");
      out.write("\ths.outlineType = 'beveled';\r\n");
      out.write("\ths.wrapperClassName = 'draggable-header no-footer';\r\n");
      out.write("\ths.allowSizeReduction = false;\r\n");
      out.write("\ths.preserveContent = false;\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"static/scripts/jquery.jcarousel.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"static/css/skin.css\" />\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("jQuery(document).ready(function() {\r\n");
      out.write("    jQuery('#mycarousel').jcarousel({\r\n");
      out.write("    \twrap: 'circular',\r\n");
      out.write("\t\tscroll:1 \r\n");
      out.write("    });\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"static/css/colortip-1.0-jquery.css\"/>\r\n");
      out.write("<script type=\"text/javascript\" src=\"static/scripts/colortip-1.0-jquery.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"static/scripts/script.js\"></script>\r\n");
      out.write("<!--  MENU CINE -->\r\n");
      out.write("<link href=\"static/css/menu_cine.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"static/scripts/jquery.backgroundPosition.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t$(document).ready(function() {\r\n");
      out.write("\t\t\t$('#s1').cycle('fade');\r\n");
      out.write("\t\t\t//Set css in Firefox (Required to use the backgroundPosition js)\r\n");
      out.write("\t$('#cine1, #cine2, #cine3, #cine4, #cine5, #cine6, #cine7, #cine8, #cine9, #cine10, #cine11, #cine12').css({backgroundPosition: '0px 0px'});\r\n");
      out.write("\t\t\t//Animate the shutter  \r\n");
      out.write("\t\t\t$(\".link\").hover(function(){\r\n");
      out.write("\t\t\t      $(this).parent().animate({backgroundPosition: '(0px -100px)'}, 500 );\r\n");
      out.write("\t\t\t    }, function() {\r\n");
      out.write("\t\t\t      $(this).parent().animate({backgroundPosition: '(0px 0px)'}, 500 );\r\n");
      out.write("\t\t\t}); \r\n");
      out.write("\t\t });\r\n");
      out.write("\t</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<!--<div id=\"fondo_pelicula\">-->\r\n");
      out.write("<!--Inicio estructura principal-->\r\n");
      out.write("<!--Inicio cabecera-->\r\n");
      out.write("\r\n");
      out.write("<div id=\"cabecera\">\r\n");
      out.write("\t<div id=\"navegacion_principal\">\r\n");
      out.write("    \t<div id=\"logo_cinestar\">\r\n");
      out.write("        \t<div id=\"interno_logo_cinestar\"><a href=\"index.jsp\"><img src=\"static/images/logo_cinestar.png\" /></a></div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div id=\"area_menus\">\r\n");
      out.write("            <div id=\"menu_principal\">\r\n");
      out.write("            \t<div id=\"menu_principal_franja\">\r\n");
      out.write("                 <div id=\"menu_principal_curva_izq\">&nbsp;</div>\r\n");
      out.write("                \t<div id=\"menu_principal_links\">\r\n");
      out.write("                        <ul id=\"topnav\" class=\"v2\">         \r\n");
      out.write("                            <li><a href=\"cartelera.jsp\">Cartelera</a></li>\r\n");
      out.write("                            <li><a href=\"cartelera.jsp\">Próximos estrenos</a></li>\r\n");
      out.write("                             <!--<li><a href=\"ventas_corporativas/\">Películas 3D</a></li>-->\r\n");
      out.write("                            <li><a href=\"maxcard.jsp\">Max Card</a></li>\r\n");
      out.write("                            <li><a href=\"cines.jsp\">Nuestros Cines</a></li>\r\n");
      out.write("                            <li><a href=\"concursos.jsp\">Concursos</a></li>\r\n");
      out.write("                            <li><a href=\"ventas_corporativas.jsp\">Ventas Corporativas</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("                   <div id=\"menu_principal_curva\">&nbsp;</div>\r\n");
      out.write("                </div><!-- FIN menu_principal_franja -->\r\n");
      out.write("            </div><!-- FIN menu_principal -->\r\n");
      out.write("        </div><!-- FIN area_menus -->\r\n");
      out.write("               \r\n");
      out.write("  \t</div><!-- FIN navegacion_principal -->\r\n");
      out.write("</div><!-- FIN cabecera -->\r\n");
      out.write("<div id=\"contienemain\">\r\n");
      out.write("<div id=\"curva-superior\">&nbsp;</div>\r\n");
      out.write("<div id=\"main_content\">\r\n");
      out.write("\r\n");
      out.write("    <div id=\"info_interes\">\r\n");
      out.write("             <div class=\"banner_cines\">\r\n");
      out.write("                <div class=\"banner_cines_info\">\r\n");
      out.write("                <div class=\"titulo-buscador\">Elige tu película</div>\r\n");
      out.write("                <form action=\"horario_pelicula.jsp\" id=\"valida\" name=\"valida\" method=\"post\">\r\n");
      out.write("                <select name = \"cines_select\" style=\"width:321px; margin-left:21px; margin-top:20px; color:#696969; font-weight:bold;\" >\r\n");
      out.write("                    <option value=\"\">Seleccionar Pelicula .....</option>\r\n");
      out.write("                    ");

            LlenarCombo1 combo = new LlenarCombo1();
            Vector Aux = new Vector();
           Aux = combo.llenarPeliculas();
           String[] datos=new String[2];
           for(int i=0; i<Aux.size();i++){
           datos=(String[])Aux.elementAt(i);
                
      out.write("\r\n");
      out.write("                <option value=\"");
      out.print(datos[0] );
      out.write('"');
      out.write('>');
      out.print(datos[1] );
      out.write("</option>\r\n");
      out.write("                ");

  }

      out.write("</select><br /><br />\r\n");
      out.write("                 <div id = \"pelsel\" style=\"display:inline;\">\r\n");
      out.write("                     <input name=\"imageField2\" type=\"image\"  style=\"border:0\"\"id=\"imageField2\" src=\"static/images/ver.png\" align=\"center\" />\r\n");
      out.write("                </form>\r\n");
      out.write("                </div>\r\n");
      out.write("                   </div>  <!-- fin banner_cines_info-->   \r\n");
      out.write("                   <div id=\"s1\" class=\"debajo-buscador\">\r\n");
      out.write("             \r\n");
      out.write("   \r\n");
      out.write("     \r\n");
      out.write("     \r\n");
      out.write("     <a href=\"proximos_estrenos/pelicula/Regresa.html\"><img src=\"static/images/banners/regresa-375x96.jpg\" border=\"0\" /></a></div><!-- fin debajo-buscador -->   \r\n");
      out.write("          </div> <!-- fin banner_cines-->        \r\n");
      out.write("<div id=\"contieneslider\">\r\n");
      out.write("    \t <div id=\"slider\">\r\n");
      out.write("         \r\n");
      out.write("           <a href=\"maxcard.jsp\"><img src=\"static/images_slider/starcard_promocion.jpg\" alt=\"\" width=\"535\" height=\"244\" border=\"0\"/></a>\r\n");
      out.write("          \r\n");
      out.write("                                    \r\n");
      out.write("       <a href=\"cartelera.jsp\"><img src=\"static/images_slider/drive.jpg\" alt=\"\" width=\"535\" height=\"244\" border=\"0\"/></a>\r\n");
      out.write("       \r\n");
      out.write("       \r\n");
      out.write("        <a href=\"cartelera.jsp\"><img src=\"static/images_slider/rec_3.jpg\" alt=\"\" width=\"535\" height=\"244\" border=\"0\"/></a>\r\n");
      out.write("        \r\n");
      out.write("      \r\n");
      out.write("   \r\n");
      out.write("        \r\n");
      out.write("         <a href=\"cartelera.jsp\"><img src=\"static/images_slider/cuando_te_encuentre.jpg\" alt=\"\" width=\"535\" height=\"244\" border=\"0\"/></a>\r\n");
      out.write("             \r\n");
      out.write("             \r\n");
      out.write("              <a href=\"cartelera.jsp\"><img src=\"static/images_slider/los_vengadores.jpg\" alt=\"\" width=\"535\" height=\"244\" border=\"0\"/></a>\r\n");
      out.write("              \r\n");
      out.write("              <a href=\"cartelera.jsp\"><img src=\"static/images_slider/hombres_de_negro_3.jpg\" alt=\"\" width=\"535\" height=\"244\" border=\"0\"/></a>\r\n");
      out.write("              \r\n");
      out.write("              <a href=\"cartelera.jsp\"><img src=\"static/images_slider/blanca_nieves.jpg\" alt=\"\" width=\"535\" height=\"244\" border=\"0\"/></a>\r\n");
      out.write("       \r\n");
      out.write("        <img src=\"static/images_slider/precios_3D.jpg\" alt=\"\" width=\"535\" height=\"244\" border=\"0\"/>\r\n");
      out.write("                                                                         \r\n");
      out.write("          </div><!-- FIN slider -->\r\n");
      out.write("</div>  <!-- FIN contieneslider -->                 \r\n");
      out.write("</div><!--FIN info_interes-->\r\n");
      out.write("<!--Fin cabecera-->\r\n");
      out.write("<!--Inicio contenido-->\r\n");
      out.write("<div id=\"main_contento\">\r\n");
      out.write("<div class=\"clearbox\"></div>\r\n");
      out.write("<div id=\"area_info\">\r\n");
      out.write("    \t<div class=\"infoh_area1\">\r\n");
      out.write("        \t<div class=\"banner1_h\">\r\n");
      out.write("            \t<div class=\"banner1_h_titu\">Cartelera</div>\r\n");
      out.write("                \r\n");
      out.write("                <ul id=\"mycarousel\" class=\"jcarousel-skin-tango\">\t\t\r\n");
      out.write("                \r\n");
      out.write("                \t\r\n");
      out.write("                            ");

		    Connection cn;
                    conexion con = new conexion();
		    	
                    try{
                		
                        cn = con.getAccesoBD();
                        Statement stmt = cn.createStatement();
                        String cod="";
			String foto="";
			String a="select IdPelicula,Foto from pelicula";               
						ResultSet rs = stmt.executeQuery(a);
                        while (rs.next()) {
					cod=String.valueOf(rs.getString(1));
                                        foto=String.valueOf(rs.getString(2));
                                        
                     
					 		
                
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                                    <li><div class=\"slider-cartelera\"><a href=\"detalle_pelicula.jsp?pelicula=");
      out.print(cod);
      out.write("\"><img src=\"");
      out.print(foto);
      out.write("\" width=\"75\" height=\"107\" alt=\"Cartelera CineMax\" /></a></div></li>\r\n");
      out.write("                            \r\n");
      out.write("                            ");
}
      out.write("        \r\n");
      out.write("                              \t\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("          </div>\r\n");
      out.write("        \r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("          </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        <div class=\"infoh_area2\">\r\n");
      out.write("\r\n");
      out.write("           <div class=\"banner2_h\">\r\n");
      out.write("                <!--<div class=\"banner2_h_info\"><a href=\"starcard/\"><img src=\"banners/starcard_home.jpg\" /></a></div>-->\r\n");
      out.write("                <div class=\"banner2_h_info\"><img src=\"static/images/banners/tabletaoc_447x195.jpg\"/></div>\r\n");
      out.write("          </div>\r\n");
      out.write("          \r\n");
      out.write("          <div class=\"banner4_h\">\r\n");
      out.write("                <div class=\"banner4_h_info\">\r\n");
      out.write("<iframe src=\"http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2FCINE.MAX.IHC&amp;width=463&amp;colorscheme=light&amp;show_faces=true&amp;border_color&amp;stream=false&amp;header=true&amp;height=200\" scrolling=\"no\" frameborder=\"0\" style=\"border:none; overflow:hidden; width:463px; height:200px;\" allowTransparency=\"true\"></iframe>\r\n");
      out.write("                </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          \r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("                <div class=\"infoh_area3\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"banner5_h\">\r\n");
      out.write("                <div class=\"banner5_h_info\"><a href=\"concursos.jsp\"><img src=\"static/images/banners/concurso_vengadores_933x104.jpg\" /></a></div>\r\n");
      out.write("          </div>\r\n");
      out.write("    \r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"clearbox\"></div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<!--final estructura principal-->\r\n");
      out.write("\r\n");
      out.write("<div class=\"clearbox\"></div>\r\n");
      out.write("<script>\r\n");
      out.write("$(\".slider-cartelera a img\").hover( function(){\r\n");
      out.write("\t$(this).addClass(\"imgslider\");\r\n");
      out.write("\t}, function(){\r\n");
      out.write("\t\t$(this).removeClass(\"imgslider\");\r\n");
      out.write("\t\t});\r\n");
      out.write("</script>\r\n");
      out.write("       <!--Final contenido-->   \r\n");
      out.write("\r\n");
      out.write("<!--Inicio Footer-->\r\n");
      out.write("<!--</div> FIN main_content -->\r\n");
      out.write("<div id=\"curva-inferior\">&nbsp;</div>\r\n");
      out.write("<!--adsense-->\r\n");
      out.write("<!--final adsense-->\r\n");
      out.write("</div> <!-- FIN contienemain -->\r\n");
      out.write("<div id=\"pie-sub\">&nbsp;</div>\r\n");
      out.write("<div id=\"pie\">\r\n");
      out.write("    <div id=\"info_pie\">\r\n");
      out.write("        <ul id=\"menuinferior\">\r\n");
      out.write("            <li><a href=\"index.jsp\">Inicio</a> |</li>\r\n");
      out.write("            <li><a href=\"quienes_somos.jsp\">Quiénes somos</a> |</li>\r\n");
      out.write("            <li><a href=\"eventos.jsp\">Eventos</a> |</li>\r\n");
      out.write("            <li><a href=\"anuncios.jsp\">Anuncios</a> |</li>\r\n");
      out.write("           \r\n");
      out.write("            <li><a href=\"trabaja_con_nosotros.jsp\">Trabaja con nosotros</a> |</li>\r\n");
      out.write("            <li><a href=\"contactenos.jsp\">Cont&aacute;ctenos</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <div style=\"clear:both\"></div>\r\n");
      out.write("    \t<div class=\"creditos_texto\">\r\n");
      out.write("        \tCopyright © 2012 ® Multicines CINE-MAX - Todos los Derechos Reservados\r\n");
      out.write("Powered by <a href=\"http://www.upao.edu.pe\" target=\"_blank\">AlumnosUPAO</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"sociales\">\r\n");
      out.write("       \t\t <div class=\"pie-texto\">&nbsp;&nbsp;Síguenos en: </div>\r\n");
      out.write("            <ul id=\"pie-social\">\r\n");
      out.write("            <li><a href=\"http://www.facebook.com/CINE.MAX.IHC\" target=\"_blank\"><img src=\"static/images/logo_face.png\" /></a></li>\r\n");
      out.write("            <!--<li><a href=\"\" target=\"_blank\"><img src=\"logo_twit.png\" /></a></li>\r\n");
      out.write("            <li><a href=\"\" target=\"_blank\"><img src=\"logo_yout.png\" /></a></li>-->\r\n");
      out.write("            <li><a href=\"\" target=\"_blank\"><img src=\"static/images/logo_rss.png\" /></a></li>\r\n");
      out.write("            </ul> \r\n");
      out.write("       </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("<!--Final estructura principal-->\r\n");
      out.write("<!--</div>-->\r\n");
      out.write("</div><!--Final Footer-->\r\n");
      out.write("<!--Final estructura principal-->\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("                            \r\n");
      out.write("                            ");

                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }  

      out.write("\r\n");
      out.write("\t\t");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
