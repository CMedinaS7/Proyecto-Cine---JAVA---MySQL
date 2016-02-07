package org.apache.jsp.intranet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Dao.conexion;
import java.sql.*;
import java.util.Date;
import Util.LlenarCombo1;
import java.util.Vector;

public final class horarios_jsp extends org.apache.jasper.runtime.HttpJspBase
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

            HttpSession sesion = request.getSession(true);
            String Usuario = (String) sesion.getAttribute("nombres") + " " + (String) sesion.getAttribute("apellidos");
            String Cargo = (String) sesion.getAttribute("cargo");
			String Foto = (String) sesion.getAttribute("foto");
            if ((String) sesion.getAttribute("nombres") == null) {
                response.sendRedirect("login.jsp?e=1");
            }
			String resp=request.getParameter("resp");
                               

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <!--[if lt IE 7]><html class=\"no-js ie6 oldie\" lang=en><![endif]--> <!--[if IE 7]><html class=\"no-js ie7 oldie\" lang=en><![endif]--> <!--[if IE 8]><html class=\"no-js ie8 oldie\" lang=en><![endif]--> <!--[if gt IE 8]><!--> <html class=no-js lang=en> <!--<![endif]--> \r\n");
      out.write("<head> \r\n");
      out.write("<meta charset=utf-8>\r\n");
      out.write("<link rel=dns-prefetch href=\"http://fonts.googleapis.com/\">\r\n");
      out.write("<meta http-equiv=X-UA-Compatible content=\"IE=edge,chrome=1\">\r\n");
      out.write("<title>Intranet :: BABYMODAS ::</title>\r\n");
      out.write("<link rel=\"icon\" type=\"image/png\" href=\"image/icono.png\" />\r\n");
      out.write("<meta name=description content=\"\"> <meta name=author content=\"\">\r\n");
      out.write("<meta name=viewport content=\"width=device-width,initial-scale=1\">\r\n");
      out.write("<link rel=stylesheet href='css/c11f8f1b6c157a7a1ee04039d038c282336416b9.css'>\r\n");
      out.write("<link href=\"http://fonts.googleapis.com/css?family=PT+Sans\" rel=stylesheet type=\"text/css\">\r\n");
      out.write("<script src=\"js/libs/modernizr-2.0.6.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script src=\"modernizr.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body id=top>\r\n");
      out.write("<div id=container>\r\n");
      out.write("<div id=header-surround>\r\n");
      out.write("<header id=header><img src=\"img/logo.png\" alt=Grape class=logo>\r\n");
      out.write("<div class=\"divider-header divider-vertical\"></div>\r\n");
      out.write("<a href=\"javascript:void(0);\" onClick=\"$('#info-dialog').dialog({ modal: true });\">\r\n");
      out.write("<span class=btn-info></span></a>\r\n");
      out.write("<ul class=toolbox-header>\r\n");
      out.write("  <li> <a rel=tooltip title=\"Crear Usuario\" class=toolbox-action href=\"javascript:void(0);\"><span class=i-24-user-business></span></a>\r\n");
      out.write("    <div class=toolbox-content>\r\n");
      out.write("      <div class=block-border>\r\n");
      out.write("        <div class=\"block-header small\">\r\n");
      out.write("          <h1>Asignar Usuario</h1>\r\n");
      out.write("        </div>\r\n");
      out.write("        <form id=create-user-form2 class=\"block-content form\" action=\"#\" method=post>\r\n");
      out.write("          <div class=_100>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=username3>Personal:</label>\r\n");
      out.write("              <input id=username3 name=username2 class=required type=text value=\"\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=_50>\r\n");
      out.write("            <p class=no-top-margin>\r\n");
      out.write("              <label for=firstname3>Usuario</label>\r\n");
      out.write("              <input id=firstname3 name=firstname2 class=required type=text value=\"\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=_50>\r\n");
      out.write("            <p class=no-top-margin>\r\n");
      out.write("              <label for=lastname3>Clave</label>\r\n");
      out.write("              <input id=lastname3 name=lastname2 class=required type=password value=\"\"/>\r\n");
      out.write("            </p>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=clear></div>\r\n");
      out.write("          <div class=block-actions>\r\n");
      out.write("            <ul class=actions-left>\r\n");
      out.write("              <li><a class=\"close-toolbox button red\" id=reset4 href=\"javascript:void(0);\">Cancel</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <ul class=actions-right>\r\n");
      out.write("              <li>\r\n");
      out.write("                <input type=submit class=button value=\"Crear Usuario\">\r\n");
      out.write("              </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("        </form>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </li>\r\n");
      out.write("  <li> <a rel=tooltip title=\"Encribir Mensaje\" class=toolbox-action href=\"javascript:void(0);\"><span class=i-24-balloon></span></a>\r\n");
      out.write("    <div class=toolbox-content>\r\n");
      out.write("      <div class=block-border>\r\n");
      out.write("        <div class=\"block-header small\">\r\n");
      out.write("          <h1>Escribir Mensaje</h1>\r\n");
      out.write("        </div>\r\n");
      out.write("        <form id=write-message-form2 class=\"block-content form\" action=\"#\" method=post>\r\n");
      out.write("          <p class=inline-mini-label>\r\n");
      out.write("            <label for=recipient3>Destino</label>\r\n");
      out.write("            <input type=text name=recipient2 class=required>\r\n");
      out.write("          </p>\r\n");
      out.write("          <p class=inline-mini-label>\r\n");
      out.write("            <label for=subject3>Asunto</label>\r\n");
      out.write("            <input type=text name=subject2>\r\n");
      out.write("          </p>\r\n");
      out.write("          <div class=_100>\r\n");
      out.write("            <p class=no-top-margin>\r\n");
      out.write("              <label for=message3>Mensaje</label>\r\n");
      out.write("              <textarea id=message3 name=message2 class=required rows=5 cols=40></textarea>\r\n");
      out.write("            </p>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=clear></div>\r\n");
      out.write("          <div class=block-actions>\r\n");
      out.write("            <ul class=actions-left>\r\n");
      out.write("              <li><a class=\"close-toolbox button red\" id=reset5 href=\"javascript:void(0);\">Cancel</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <ul class=actions-right>\r\n");
      out.write("              <li>\r\n");
      out.write("                <input type=submit class=button value=\"Enviar Mensaje\">\r\n");
      out.write("              </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("        </form>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </li>\r\n");
      out.write("  <li> <a rel=tooltip title=\"Historial\" class=toolbox-action href=\"javascript:void(0);\"><span class=\"i-24-application\"></span></a>\r\n");
      out.write("    <div class=toolbox-content>\r\n");
      out.write("      <div class=block-border>\r\n");
      out.write("        <div class=\"block-header small\">\r\n");
      out.write("          <h1>Ver Historial</h1>\r\n");
      out.write("        </div>\r\n");
      out.write("        <form id=create-folder-form2 class=\"block-content form\" action=\"#\" method=post>\r\n");
      out.write("          <p class=inline-mini-label>\r\n");
      out.write("            <label for=folder-name3>Fecha</label>\r\n");
      out.write("            <input type=text name=folder-name2 class=required>\r\n");
      out.write("          </p>\r\n");
      out.write("          <div class=block-actions>\r\n");
      out.write("            <ul class=actions-left>\r\n");
      out.write("              <li><a class=\"close-toolbox button red\" id=reset6 href=\"javascript:void(0);\">Cancel</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <ul class=actions-right>\r\n");
      out.write("              <li>\r\n");
      out.write("                <input type=submit class=button value=\"Consultar\">\r\n");
      out.write("              </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("        </form>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </li>\r\n");
      out.write("</ul>\r\n");
      out.write("<div id=info-dialog title=Privacidad style=\"display: none;\"> <p>Toda la información contenida en este sitio tiene únicamente fines informativos y educativos. Le sugerimos que lea y examine detenidamente estos Términos y Condiciones de Privacidad antes de utilizar o acceder a este sitio web. Al utilizar o acceder a este sitio web, usted reconoce que ha leído, entendido y aceptado el Contrato de Condiciones de Uso. Si no está de acuerdo con las Condiciones de Uso, no puede usar ni acceder a este sitio..</p> <p>Att. El Administrador.</p> </div>\r\n");
      out.write("\r\n");
      out.write("<ul class=toolbox-header> <li><div class=toolbox-content> <div class=block-border> <div class=\"block-header small\"> <h1>Create a User</h1> </div> <form id=create-user-form class=\"block-content form\" action=\"#\" method=post> <div class=_100> <p><label for=username>Username</label><input id=username name=username class=required type=text value=\"\"/></p> </div> <div class=_50> <p class=no-top-margin><label for=firstname>Firstname</label><input id=firstname name=firstname class=required type=text value=\"\"/></p> </div> <div class=_50> <p class=no-top-margin><label for=lastname>Lastname</label><input id=lastname name=lastname class=required type=text value=\"\"/></p> </div> <div class=clear></div> <div class=block-actions> <ul class=actions-left> <li><a class=\"close-toolbox button red\" id=reset href=\"javascript:void(0);\">Cancel</a></li> </ul> <ul class=actions-right> <li><input type=submit class=button value=\"Create the User\"></li> </ul> </div> </form> </div> </div> </li> <li><div class=toolbox-content> <div class=block-border> <div class=\"block-header small\"> <h1>Write a Message</h1> </div> <form id=write-message-form class=\"block-content form\" action=\"#\" method=post> <p class=inline-mini-label> <label for=recipient>Recipient</label> <input type=text name=recipient class=required> </p> <p class=inline-mini-label> <label for=subject>Subject</label> <input type=text name=subject> </p> <div class=_100> <p class=no-top-margin><label for=message>Message</label><textarea id=message name=message class=required rows=5 cols=40></textarea></p> </div> <div class=clear></div> <div class=block-actions> <ul class=actions-left> <li><a class=\"close-toolbox button red\" id=reset2 href=\"javascript:void(0);\">Cancel</a></li> </ul> <ul class=actions-right> <li><input type=submit class=button value=\"Send Message\"></li> </ul> </div> </form> </div> </div> </li> <li><div class=toolbox-content> <div class=block-border> <div class=\"block-header small\"> <h1>Create a Folder</h1> </div> <form id=create-folder-form class=\"block-content form\" action=\"#\" method=post> <p class=inline-mini-label> <label for=folder-name>Name</label> <input type=text name=folder-name class=required> </p> <div class=block-actions> <ul class=actions-left> <li><a class=\"close-toolbox button red\" id=reset3 href=\"javascript:void(0);\">Cancel</a></li> </ul> <ul class=actions-right> <li><input type=submit class=button value=\"Create Folder\"></li> </ul> </div> </form> </div> </div> </li> </ul>\r\n");
      out.write("<div id=user-info>\r\n");
      out.write("  <p> <span class=messages>Bienvenido <a href=\"javascript:void(0);\">");
      out.print(Usuario);
      out.write("</a> ( <a href=\"javascript:void(0);\"><img src=\"img/icons/packs/fugue/16x16/mail.png\" alt=Messages> 3 nuevos mensajes</a> )</span> <a href=\"javascript:void(0);\" class=\"toolbox-action button\">Perfil</a> <a href=\"../logoutpersonal\" class=\"button red\">Logout</a></p>\r\n");
      out.write("</div>\r\n");
      out.write("</header>\r\n");
      out.write("</div> <div class=fix-shadow-bottom-height></div>\r\n");
      out.write("<aside id=sidebar>\r\n");
      out.write("  <div id=search-bar>\r\n");
      out.write("    <form id=search-form name=search-form action=\"#\" method=post>\r\n");
      out.write("      <input type=text id=query name=query value=\"\" autocomplete=off placeholder=Search>\r\n");
      out.write("    </form>\r\n");
      out.write("  </div>\r\n");
      out.write("  <section id=login-details> <img src=\"");
      out.print(Foto);
      out.write("\" alt=\"Hello Admin\" width=\"60\" height=\"60\" class=\"img-left framed\">\r\n");
      out.write("    <h3>Logueado como</h3>\r\n");
      out.write("    <h2><a class=user-button href=\"javascript:void(0);\">Administrador<span class=arrow-link-down></span></a></h2>\r\n");
      out.write("    <ul class=dropdown-username-menu>\r\n");
      out.write("      <li><a href=\"#\">Perfil</a></li>\r\n");
      out.write("      <li><a href=\"#\">Mensajes</a></li>\r\n");
      out.write("      <li><a href=\"#\">Logout</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("    <div class=clearfix></div>\r\n");
      out.write("  </section>\r\n");
      out.write("  <nav id=nav>\r\n");
      out.write("    <ul class=\"menu collapsible shadow-bottom\">\r\n");
      out.write("      <li><a href=\"principal.jsp\" class=current><img src=\"img/icons/packs/fugue/16x16/dashboard.png\">Principal</a></li>\r\n");
      out.write("      <li><a href=\"javascript:void(0);\"><img src=\"img/icons/packs/fugue/16x16/application-form.png\">Peliculas<span class=\"badge grey\">2</span></a>\r\n");
      out.write("        <ul class=sub>\r\n");
      out.write("          <li><a href=\"peliculas.jsp\">Mostrar Todos</a></li>\r\n");
      out.write("          <li><a href=\"peliculas1.jsp\">Ingresar Nuevo</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li><a href=\"javascript:void(0);\"><img src=\"img/icons/packs/fugue/16x16/table.png\">Personal<span class=\"badge grey\">2</span></a>\r\n");
      out.write("        <ul class=sub>\r\n");
      out.write("          <li><a href=\"personal.jsp\">Mostrar Todos</a></li>\r\n");
      out.write("          <li><a href=\"personal1.jsp\">Ingresar Nuevo</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li><a href=\"javascript:void(0);\"><img src=\"img/icons/packs/fugue/16x16/user-white.png\">Cines<span class=\"badge grey\">2</span></a>\r\n");
      out.write("        <ul class=sub>\r\n");
      out.write("          <li><a href=\"cines.jsp\">Mostrar Todos</a></li>\r\n");
      out.write("          <li><a href=\"cines1.jsp\">Ingresar Nuevo</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li><a href=\"javascript:void(0);\"><img src=\"img/icons/packs/fugue/16x16/chart.png\">Graficos</a></li>\r\n");
      out.write("      <li> <a href=\"horarios.jsp\"><img src=\"img/icons/packs/fugue/16x16/newspaper.png\">Armar Horario</a></li>\r\n");
      out.write("      <ul class=sub>\r\n");
      out.write("        <li></li>\r\n");
      out.write("        <li></li>\r\n");
      out.write("        <li></li>\r\n");
      out.write("        <li></li>\r\n");
      out.write("        <li></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li><a href=\"javascript:void(0);\" onClick=\"$('#info-dialog').dialog({ modal: true });\"><img src=\"img/icons/packs/fugue/16x16/magnifier--exclamation.png\">Importante</a></li>\r\n");
      out.write("      <li> <a href=\"javascript:void(0);\"><img src=\"img/icons/packs/fugue/16x16/newspaper.png\">Mensajes</a></li>\r\n");
      out.write("      <li><a href=\"../logoutpersonal\"><img src=\"img/icons/packs/fugue/16x16/door-open-in.png\">Logout</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("  </nav>\r\n");
      out.write("</aside>\r\n");
      out.write("<div id=main role=main> <div id=title-bar> <ul id=breadcrumbs> <li><a href=\"principal.jsp\" title=Home><span id=bc-home></span></a></li> <li class=no-hover>Principal</li> </ul> </div> <div class=\"shadow-bottom shadow-titlebar\"></div> <div id=main-content> <div class=container_12><div class=grid_12>\r\n");
      out.write("  <div class=grid_12>\r\n");
      out.write("    <h1>Formulario Personal</h1>\r\n");
      out.write("    <p>Este formulario permite grabar y modificar los datos de una persona.</p>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=grid_6>\r\n");
      out.write("            <div class=block-border>\r\n");
      out.write("      <div class=block-header>\r\n");
      out.write("        <h1>Actualizar Datos Personales</h1>\r\n");
      out.write("        <span></span></div>\r\n");
      out.write("        ");
if("0".equals(resp)){
      out.write("\r\n");
      out.write("      <div class=\"alert info no-margin top\"><span class=hide>x</span>Información: Se ha añadido un nuevo registro en la tabla cine de forma correcta!!!.</div>\r\n");
      out.write("      ");
}
      out.write("\r\n");
      out.write("      <form id=login-form  class=\"block-content form\" action=\"../moduloHorario\" method=post>\r\n");
      out.write("          <div class=_50>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=cbopelicula>Seleccionar Pelicula:</label>\r\n");
      out.write("              <select name = \"cbopelicula\" id=\"cbopelicula\" >\r\n");
      out.write("              ");

            LlenarCombo1 combo = new LlenarCombo1();
            Vector Aux = new Vector();
           Aux = combo.llenarPeliculas();
           String[] datos=new String[2];
           for(int i=0; i<Aux.size();i++){
           datos=(String[])Aux.elementAt(i);
                
      out.write("\r\n");
      out.write("              <option value=\"");
      out.print(datos[0] );
      out.write('"');
      out.write('>');
      out.print(datos[1] );
      out.write("</option>\r\n");
      out.write("              ");

  }

      out.write("\r\n");
      out.write("            </select>\r\n");
      out.write("            </p>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=_50>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=cbocine>Seleccionar Cine:</label>\r\n");
      out.write("              <select name = \"cbocine\"  id=\"cbocine\">\r\n");
      out.write("              ");

            LlenarCombo1 combo1 = new LlenarCombo1();
            Vector Aux1 = new Vector();
           Aux1 = combo1.llenarCines();
           String[] datos1=new String[2];
           for(int i=0; i<Aux.size();i++){
           datos1=(String[])Aux1.elementAt(i);
                
      out.write("\r\n");
      out.write("              <option value=\"");
      out.print(datos1[0] );
      out.write('"');
      out.write('>');
      out.print(datos1[1] );
      out.write("</option>\r\n");
      out.write("              ");

  }

      out.write("\r\n");
      out.write("            </select>\r\n");
      out.write("            </p>\r\n");
      out.write("          </div>\r\n");
      out.write("              \r\n");
      out.write("        <div class=_50>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=txtfecha>Fecha:</label>\r\n");
      out.write("              <input name=\"txtfecha\" class=required type=\"date\" id=txtfecha value=\"\" />\r\n");
      out.write("            </p>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=_50>\r\n");
      out.write("            <p>\r\n");
      out.write("              <label for=txthora>Hora:</label>\r\n");
      out.write("              <input name=\"txthora\" class=required type=\"time\" id=txthora value=\"\" />\r\n");
      out.write("            </p>\r\n");
      out.write("          </div>\r\n");
      out.write("          \r\n");
      out.write("              \r\n");
      out.write("        <p>&nbsp;</p>\r\n");
      out.write("        <div class=clear></div>\r\n");
      out.write("        <div class=block-actions>\r\n");
      out.write("          <ul class=actions-left>\r\n");
      out.write("            <li><a class=\"button red\" id=reset-validate-form2 href=\"principal.jsp\">Cancelar</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          <ul class=actions-right>\r\n");
      out.write("            <li>\r\n");
      out.write("              <input name=\"modificar\" id=\"modificar\" class=\"button\" type=\"submit\" value=\"Actualizar Datos\">\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("      </form>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div><div class=\"clear height-fix\"></div> \r\n");
      out.write("</div></div> </div> <footer id=footer><div class=container_12> <div class=grid_12> <div class=\"footer-icon align-center\"><a class=top href=\"#top\"></a></div> </div> </div></footer> </div> \r\n");
      out.write("\r\n");
      out.write("<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js\"></script>\r\n");
      out.write("<script>window.jQuery||document.write('<script src=\"js/libs/jquery-1.6.2.min.js\"><\\/script>');</script>\r\n");
      out.write("<script defer src='js/8f71c247c4dadc837fe569208a7a1dc0f7625c46.js'></script>\r\n");
      out.write("<!--[if lt IE 7 ]><script src=\"//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js\"></script> <script>window.attachEvent(\"onload\",function(){CFInstall.check({mode:\"overlay\"})});</script><![endif]--> </body> \r\n");
      out.write("</html>\t\t\t\r\n");
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
