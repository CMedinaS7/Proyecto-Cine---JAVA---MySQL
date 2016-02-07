<%-- 
    Document   : index
    Created on : 05-jun-2012, 15:20:55
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import=" Dao.conexion,java.sql.*,java.util.Date,Util.LlenarCombo1,java.util.Vector"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">

<!-- Mirrored from www.cinestar.com.pe/ by HTTrack Website Copier/3.x [XR&CO'2010], Thu, 24 May 2012 03:42:45 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-language" content="es" />
<base  />
<title>Multicines CineMax</title>
<meta name="title" content="Multicines CineMax"/>
<meta name="description" content="Multicines CineMax es una empresa pionera en el formato de multicines en el Perú. Información de películas, estrenos, concursos y más"/>
<meta name="keywords" content=" cinestar, multicines, cine, cartelera, pelicula, estreno, novedades, concursos"/>
<meta name="copyright" content="(c) www.AlumnosUPAO"/>
<meta name="author" content="Mario-Alejandro-Gonzales-Flores"/>


<meta property="og:title" content="Multicines CineMax" />
<meta property="og:description" content="Multicines CineMax es una empresa pionera en el formato de multicines en el Perú. Información de películas, estrenos, concursos y más" />
<meta property="og:image" content="static/images/logo_cinestar.png" />


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
%></select><br /><br />
                 <div id = "pelsel" style="display:inline;">
                     <input name="imageField2" type="image"  style="border:0""id="imageField2" src="static/images/ver.png" align="center" />
                </form>
                </div>
                   </div>  <!-- fin banner_cines_info-->   
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
<div class="clearbox"></div>
<div id="area_info">
    	<div class="infoh_area1">
        	<div class="banner1_h">
            	<div class="banner1_h_titu">Cartelera</div>
                
                <ul id="mycarousel" class="jcarousel-skin-tango">		
                
                	
                            <%
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
                                        
                     
					 		
                %>
                
                
                                    <li><div class="slider-cartelera"><a href="detalle_pelicula.jsp?pelicula=<%=cod%>"><img src="<%=foto%>" width="75" height="107" alt="Cartelera CineMax" /></a></div></li>
                            
                            <%}%>        
                              	
			</ul>
          </div>
        
        </div>
        
          </div>
        
        
        <div class="infoh_area2">

           <div class="banner2_h">
                <!--<div class="banner2_h_info"><a href="starcard/"><img src="banners/starcard_home.jpg" /></a></div>-->
                <div class="banner2_h_info"><img src="static/images/banners/tabletaoc_447x195.jpg"/></div>
          </div>
          
          <div class="banner4_h">
                <div class="banner4_h_info">
<iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2FCINE.MAX.IHC&amp;width=463&amp;colorscheme=light&amp;show_faces=true&amp;border_color&amp;stream=false&amp;header=true&amp;height=200" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:463px; height:200px;" allowTransparency="true"></iframe>
                </div>
          </div>
          
        </div>
        
                <div class="infoh_area3">

            <div class="banner5_h">
                <div class="banner5_h_info"><a href="concursos.jsp"><img src="static/images/banners/concurso_vengadores_933x104.jpg" /></a></div>
          </div>
    
        </div>
        
    </div>
    
    <div class="clearbox"></div>

</div>
<!--final estructura principal-->

<div class="clearbox"></div>
<script>
$(".slider-cartelera a img").hover( function(){
	$(this).addClass("imgslider");
	}, function(){
		$(this).removeClass("imgslider");
		});
</script>
       <!--Final contenido-->   

<!--Inicio Footer-->
<!--</div> FIN main_content -->
<div id="curva-inferior">&nbsp;</div>
<!--adsense-->
<!--final adsense-->
</div> <!-- FIN contienemain -->
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
            <li><a href="" target="_blank"><img src="static/images/logo_rss.png" /></a></li>
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
		