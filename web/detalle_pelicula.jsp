<%-- 
    Document   : detalle_pelicula
    Created on : 14-jun-2012, 15:06:23
    Author     : Carlos J Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date,Util.LlenarCombo1,java.util.Vector"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-language" content="es" />
<base  />
<title>Cartelera | Multicines CineMax</title>
<meta name="title" content="Cartelera | Los Vengadores | Multicines CineMax"/>

<meta name="keywords" content=" cinestar, multicines, cine, cartelera, pelicula, estreno, novedades, concursos"/>
<meta name="copyright" content="(c) www.AlumnosUPAO"/>


                	
                            <%
		    Connection cn;
                    conexion con = new conexion();
					String cod=request.getParameter("pelicula");
		    	
                    try{
                		
                        cn = con.getAccesoBD();
                        Statement stmt = cn.createStatement();
			            String nombre="";
						String director="";
						String reparto="";
						String duracion="";
						String clasificacion="";
						String tipo="";
						String precio="";
						String trailer="";
						String foto="";
						String sinopsis="";
						
						String a="select * from pelicula where IdPelicula='" + cod + "'";

                                                                                                           
						ResultSet rs = stmt.executeQuery(a);
                        while (rs.next()) {
				nombre=String.valueOf(rs.getString(2));
                     		director=String.valueOf(rs.getString(3));
				reparto=String.valueOf(rs.getString(4));
                     		duracion=String.valueOf(rs.getString(5));
				clasificacion=String.valueOf(rs.getString(6));
                     		tipo=String.valueOf(rs.getString(7));
				precio=String.valueOf(rs.getString(8));
                     		trailer=String.valueOf(rs.getString(9));
				foto=String.valueOf(rs.getString(10));
				sinopsis=String.valueOf(rs.getString(12));
						}
                                        
                    %>     

<link rel="shortcut icon" href="favicon.ico">
<link href="static/css/estilos_cinestar.css" rel="stylesheet" type="text/css">
<link href="static/css/nivo-slider.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="static/scripts/function.js"></script>
<script type="text/javascript" src="static/scripts/jquery.min.js.php"></script>
<script type="text/javascript" src="static/scripts/jquery.nivo.slider.js"></script>
<script type="text/javascript"> 
 
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:15,
		animSpeed:500,
		pauseTime:6000,
		directionNav:true, //Next & Prev
		directionNavHide:false, //Only show on hover
		controlNav:true, //1,2,3...
		pauseOnHover:true, //Stop animation while hovering
		beforeChange: function(){},
		afterChange: function(){}
	});
});
</script>
<script>
$(document).ready(function() {
$("a.getback").click( function(){
	history.back();
	});
});
</script>

<script type="text/javascript">
$(document).ready(function() {
	$("#topnav li").prepend("<span></span>"); //Throws an empty span tag right before the a tag
	
	$("#topnav li").each(function() { //For each list item...
		var linkText = $(this).find("a").html(); //Find the text inside of the a tag
		$(this).find("span").show().html(linkText); //Add the text in the span tag
	}); 
	
	$("#topnav li").hover(function() {	//On hover...
		$(this).find("span").stop().animate({ 
			marginTop: "-32" //Find the span tag and move it up 40 pixels
		}, 250);
	} , function() { //On hover out...
		$(this).find("span").stop().animate({
			marginTop: "0" //Move the span back to its original state (0px)
		}, 250);
	});
});
</script>
<script type="text/javascript" src="static/scripts/jquery.featureList-1.0.0.js"></script>
<script language="javascript">
		$(document).ready(function() {
			$.featureList(
				$("#tabs li a"),
				$("#output li"), {
					start_item	:	1
				}
			);
		});
</script>


<script type="text/javascript" src="static/highslide/highslide-with-html.js"></script>
<link rel="stylesheet" type="text/css" href="static/highslide/highslide_min.css" />
<script type="text/javascript">
	// Apply the Highslide settings
	hs.graphicsDir = 'index.jsp';
	hs.outlineType = 'beveled';
	hs.wrapperClassName = 'draggable-header no-footer';
	hs.allowSizeReduction = false;
	hs.preserveContent = false;
</script>
<script type="text/javascript" src="static/scripts/jquery.jcarousel.js"></script>
<link rel="stylesheet" type="text/css" href="static/css/skin.css" />
<script type="text/javascript">
jQuery(document).ready(function() {
    jQuery('#mycarousel').jcarousel({
    	wrap: 'circular',
		scroll:1 
    });
});

</script>
<link rel="stylesheet" type="text/css" href="static/css/colortip-1.0-jquery.css"/>
<script type="text/javascript" src="static/scripts/colortip-1.0-jquery.js"></script>
<script type="text/javascript" src="static/scripts/script.js"></script>
<!--  MENU CINE -->
<link href="static/css/menu_cine.css" rel="stylesheet" type="text/css" />

	<script type="text/javascript" src="static/scripts/jquery.backgroundPosition.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#s1').cycle('fade');
			//Set css in Firefox (Required to use the backgroundPosition js)
	$('#cine1, #cine2, #cine3, #cine4, #cine5, #cine6, #cine7, #cine8, #cine9, #cine10, #cine11, #cine12').css({backgroundPosition: '0px 0px'});
			//Animate the shutter  
			$(".link").hover(function(){
			      $(this).parent().animate({backgroundPosition: '(0px -100px)'}, 500 );
			    }, function() {
			      $(this).parent().animate({backgroundPosition: '(0px 0px)'}, 500 );
			}); 
		 });
	</script>
</head>
<body>

<!--<div id="fondo_pelicula">-->
<!--Inicio estructura principal-->
<!--Inicio cabecera-->

<div id="cabecera">
	<div id="navegacion_principal">
    	<div id="logo_cinestar">
        	<div id="interno_logo_cinestar"><a href="index.jsp"><img src="static/images/logo_cinestar.png" /></a></div>
        </div>
        
        <div id="area_menus">
            <div id="menu_principal">
            	<div id="menu_principal_franja">
                 <div id="menu_principal_curva_izq">&nbsp;</div>
                	<div id="menu_principal_links">
                        <ul id="topnav" class="v2">         
                            <li><a href="cartelera.jsp">Cartelera</a></li>
                            <li><a href="cartelera.jsp">Próximos estrenos</a></li>
                             <!--<li><a href="ventas_corporativas/">Películas 3D</a></li>-->
                            <li><a href="maxcard.jsp">Max Card</a></li>
                            <li><a href="cines.jsp">Nuestros Cines</a></li>
                            <li><a href="concursos.jsp">Concursos</a></li>
                            <li><a href="ventas_corporativas.jsp">Ventas Corporativas</a></li>
                        </ul>
					</div>
                   <div id="menu_principal_curva">&nbsp;</div>
                </div><!-- FIN menu_principal_franja -->
            </div><!-- FIN menu_principal -->
        </div><!-- FIN area_menus -->
               
  	</div><!-- FIN navegacion_principal -->
</div><!-- FIN cabecera -->
<div id="contienemain">
<div id="curva-superior">&nbsp;</div>
<div id="main_content">

    <div id="info_interes">
             <div class="banner_cines">
               <div class="banner_cines_info">
                 <div class="titulo-buscador">Elige tu película</div>
                 <form action="horario_pelicula.jsp" id="valida" name="valida" method="post">
                   <select name = "cines_select" style="width:321px; margin-left:21px; margin-top:20px; color:#696969; font-weight:bold;" >
                     <option value="">Seleccionar Pelicula .....</option>
                     <%
            LlenarCombo1 combo = new LlenarCombo1();
            Vector Aux = new Vector();
           Aux = combo.llenarPeliculas();
           String[] datos=new String[2];
           for(int i=0; i<Aux.size();i++){
           datos=(String[])Aux.elementAt(i);
                %>
                     <option value="<%=datos[0] %>"><%=datos[1] %></option>
                     <%
  }
%>
                   </select>
                   <br />
                   <br />
                   <div id = "pelsel" style="display:inline;">
                   <input name="imageField2" type="image"  style="border:0""id="imageField2" src="static/images/ver.png" align="center" />
                 </form>
               </div>
               </div>
               <!-- fin banner_cines_info-->   
                   <div id="s1" class="debajo-buscador">
             
   
     
     
     <a href="proximos_estrenos/pelicula/Regresa.html"><img src="static/images/banners/regresa-375x96.jpg" border="0" /></a></div><!-- fin debajo-buscador -->   
          </div> <!-- fin banner_cines-->        
<div id="contieneslider">
    	 <div id="slider">
         
            <a href="maxcard.jsp"><img src="static/images_slider/starcard_promocion.jpg" alt="" width="535" height="244" border="0"/></a>
          
                                    
       <a href="cartelera.jsp"><img src="static/images_slider/drive.jpg" alt="" width="535" height="244" border="0"/></a>
       
       
        <a href="cartelera.jsp"><img src="static/images_slider/rec_3.jpg" alt="" width="535" height="244" border="0"/></a>
        
      
   
        
         <a href="cartelera.jsp"><img src="static/images_slider/cuando_te_encuentre.jpg" alt="" width="535" height="244" border="0"/></a>
             
             
              <a href="cartelera.jsp"><img src="static/images_slider/los_vengadores.jpg" alt="" width="535" height="244" border="0"/></a>
              
              <a href="cartelera.jsp"><img src="static/images_slider/hombres_de_negro_3.jpg" alt="" width="535" height="244" border="0"/></a>
              
              <a href="cartelera.jsp"><img src="static/images_slider/blanca_nieves.jpg" alt="" width="535" height="244" border="0"/></a>
       
        <img src="static/images_slider/precios_3D.jpg" alt="" width="535" height="244" border="0"/>

          
                                                                         
          </div><!-- FIN slider -->
</div>  <!-- FIN contieneslider -->                 
</div><!--FIN info_interes-->
<!--Fin cabecera-->
<!--Inicio contenido-->
<div id="main_contento">
<div id="area_info">
        <div id="infoi_der">
        	<div id="infoi_der_info">
            	<div id="area_info_internas">
                	<h1 class="tituloh1">Cartelera</h1>
                      <div class="addthis_toolbox addthis_default_style" style="float:right; background-color:#FFF; width:380px; height:25px; padding-top:5px; padding-left:15px;">
    
      <span class="addthis_separator"> | </span>
     <a class="getback"> &lt; VOLVER</a>
</div>

 <br /> 
<br /><div class="clearbox"></div>

                <div id="contenedor_peliculas_info">
                    	<div class="pelicula_foto_g"><img src="<%=foto%>" width="115" height="170" /></div>
                  <div class="pelicula_info">
 <h4><%=nombre%></h4>  
                     <br />
                                          <p><span class="tx_gris"><%=sinopsis%></span></p>
                     
 
                                          <div class="icos_links"><span>Trailer</span><a href="<%=trailer%>" target="blank"><img src="static/images/ico_video.jpg" width="33" height="31" style="border:0;" /></a></div>
  

<p>
<div>
<span class="titu_simple_rojo"><a href="horario_pelicula.jsp?cines_select=<%=cod%>">Ver Horario</a></span><br />
<div id="cargando" style="display:none;"><img src="static/images/ajax-loader.gif" /></div>
<div id="resultado">
</div>
</div>
</p>

                  </div>
<div class="detalles">
                     <table width="350" border="0" cellspacing="5" cellpadding="0">
<tr>
    <td width="100" align="left" valign="top" class="titu_simple_rojo">&bull; Título original:</td>
    <td width="5" align="left" valign="top">&nbsp;</td>
    <td width="245" align="left" valign="top" class="tx_gris"><%=nombre%></td>
  </tr> <tr>
    <td width="100" align="left" valign="top" class="titu_simple_rojo">&bull; Género</td>
    <td width="5" align="left" valign="top">&nbsp;</td>
    <td width="245" align="left" valign="top" class="tx_gris"><%=tipo%></td>
  </tr>  <tr>
    <td width="100" align="left" valign="top" class="titu_simple_rojo">&bull; Director</td>
    <td width="5" align="left" valign="top">&nbsp;</td>
    <td width="245" align="left" valign="top" class="tx_gris"><%=director%></td>
  </tr> <!-- <tr>
    <td width="100" align="left" valign="top" class="titu_simple_rojo">&bull; País</td>
    <td width="5" align="left" valign="top">&nbsp;</td>
    <td width="245" align="left" valign="top" class="tx_gris">adasdasd</td>
  </tr>-->
  <tr>
    <td width="100" align="left" valign="top" class="titu_simple_rojo">&bull; Reparto</td>
    <td width="5" align="left" valign="top">&nbsp;</td>
    <td width="245" align="left" valign="top" class="tx_gris"><%=reparto%></td>
  </tr>   <tr>
    <td width="100" align="left" valign="top" class="titu_simple_rojo">&bull; Clasificación</td>
    <td width="5" align="left" valign="top">&nbsp;</td>
    <td width="245" align="left" valign="top" class="tx_gris"><%=clasificacion%></td>
  </tr>
    </table>
  </div>
                  
                  
                  </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="clearbox"></div>

</div></div>
<!--final estructura principal-->
<script>
$(document).ready(function(){
	$('#showcines').hide();
	$('#btn-showcines').click(function(){
	$('#showcines').slideDown('500');
	});
	
$('#cerrar-menu').click(function(){
	$('#showcines').slideUp('500');});
});
function onFocusCampo(ref){if(ref.value==ref.defaultValue){ref.value='';}}
function onBlurCampo(ref){if(ref.value===''){ref.value=ref.defaultValue;}}
</script> <!--Final contenido-->   

<!--Inicio Footer-->
<!--</div> FIN main_content -->
<div id="curva-inferior">&nbsp;</div>


<!--final adsense--></div><!-- FIN contienemain -->
<div id="pie-sub">&nbsp;</div>
<div id="pie">
    <div id="info_pie">
        <ul id="menuinferior">
            <li><a href="index.jsp">Inicio</a> |</li>
            <li><a href="quienes_somos.jsp">Quiénes somos</a> |</li>
            <li><a href="eventos.jsp">Eventos</a> |</li>
            <li><a href="anuncios.jsp">Anuncios</a> |</li>
           
            <li><a href="trabaja_con_nosotros.jsp">Trabaja con nosotros</a> |</li>
            <li><a href="contactenos.jsp">Cont&aacute;ctenos</a></li>
        </ul>
        <div style="clear:both"></div>
    	<div class="creditos_texto">
        	Copyright © 2012 ® Multicines CINE-MAX - Todos los Derechos Reservados
Powered by <a href="http://www.upao.edu.pe" target="_blank">AlumnosUPAO</a>
        </div>
        <div id="sociales">
       		 <div class="pie-texto">&nbsp;&nbsp;Síguenos en: </div>
            <ul id="pie-social">
            <li><a href="http://www.facebook.com/CINE.MAX.IHC" target="_blank"><img src="static/images/logo_face.png" /></a></li>
            <!--<li><a href="" target="_blank"><img src="logo_twit.png" /></a></li>
            <li><a href="" target="_blank"><img src="logo_yout.png" /></a></li>-->
            <li><a href="#" target="_blank"><img src="static/images/logo_rss.png" /></a></li>
            </ul> 
       </div>
  </div>

<!--Final estructura principal-->
<!--</div>-->
</div><!--Final Footer-->
<!--Final estructura principal-->
</body>

</html>

                            <%
                    } catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }  
%>
	