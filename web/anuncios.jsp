<%-- 
    Document   : anuncios
    Created on : 15-jun-2012, 13:10:29
    Author     : Carlos J Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date,Util.LlenarCombo1,java.util.Vector"%>
<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-language" content="es" />
<base  />
<title>Anuncios | Multicines CineMax</title>
<meta name="title" content="Cartelera | Los Vengadores | Multicines CineMax"/>

<meta name="keywords" content=" cinestar, multicines, cine, cartelera, pelicula, estreno, novedades, concursos"/>
<meta name="copyright" content="(c) www.AlumnosUPAO"/>

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
 <div id="area_info">        
        <div id="infoi_der">
        	<div id="infoi_der_info">
           	  <div id="area_info_internas">
               	<h1 class="tituloh1">Ventas Corporativas</h1>
    <div class="addthis_toolbox addthis_default_style" style="float:right; background-color:#FFF; width:380px; height:25px; padding-top:5px; padding-left:15px; margin-right:283px; ">
  
    <span class="addthis_separator"> | </span>
     <a class="getback"> &lt; VOLVER</a>
</div>
 <div class="banners_internos">
			  <div id="infoi_izq">
        	<div class="banner2_h2">
                <div class="banner2_h_info"><a href="maxcard.jsp"><img src="static/images/banners/banner-sidebar-266x133.jpg" width="266" height="133" /></a></div>
          </div>
          &nbsp;
          <br /><br />
			  </div> 
</div>
 <div id="contenedor_peliculas" style="background-color:#FFF; margin-top:5px; padding:0 10px 10px 10px; width:623px;"><br />
   <h4> ¿Quiénes somos?</h4>
   <p><span class="tx_gris"> La cadena de CINES MAX es pionera en el nuevo formato de multicines en el Perú. 
     La idea surgió hace 30 años con un inversionista proveniente de La India, quien optó por apostar por el Perú y revolucionar el mercado a fuerza de constancia y trabajo. <br />
     Actualmente Cines Star cuenta con 11 multicines en Lima y 1 en Iquitos. 
     CINE MAX, siempre pensando en ti… tu mejor opción! <br />
     </span>
     <script>
$(document).ready( function (){
	$("table.odd tr:odd").css("background-color", "#FFFDDD");
	});
     </script>
   <div class="programacion_" style="color:#666666;"></div>
   <h4><br />
     Publicidad en fachadas:</h4>
   <br />
   <ul class="imageul">
     <li><img src="static/images/anuncios/fachada_1.jpg" /></li>
     <li><img src="static/images/anuncios/fachada_2.jpg" /></li>
   </ul>
   <h4> <br />
     Publicidad en piso:</h4>
   <br />
   <span class="tx_gris">Elementos de acto impacto al encontrarse en el ingreso de los lobbies logrando así una exposición creativa y de vista obligatoria.</span><br />
   <br />
   <ul class="imageul">
     <li><img src="static/images/anuncios/piso_1.jpg" /></li>
   </ul>
   <h4> <br />
     Publicidad en escaleras:</h4>
   <br />
   <ul class="imageul">
     <li><img src="static/images/anuncios/escalera_1.jpg" /></li>
     <li><img src="static/images/anuncios/escalera_2.jpg" /></li>
   </ul>
   <h4> <br />
     Alquiler de espacios:</h4>
   <br />
   <ul class="imageul">
     <li><img src="static/images/anuncios/espacio_1.jpg" /></li>
     <li><img src="static/images/anuncios/espacio_2.jpg" /></li>
   </ul>
   <h4> <br />
     Publicidad en baños:</h4>
   <br />
   <ul class="imageul">
     <li><img src="static/images/anuncios/banos_1.jpg" /></li>
     <li><img src="static/images/anuncios/banos_2.jpg" /></li>
   </ul>
   <h4> <br />
     <span class="tx_gris" style="display:block; width:400px; height:auto;"><br />
       Informes y consultas:<br />
       Tel: 275-4685 / 275-4943<br />
       Mail: <a href="#">admin@cinemax.com.pe</a> </span></h4>
 </div>
           	  </div>
            </div>
            
           <!-- <div id="infoi_der_pie"></div>-->
        </div>
    </div> </div>
    
    <div class="clearbox"></div> 
</div>
<!--final estructura principal--> <!--Final contenido-->   

<!--Inicio Footer-->
<!--</div> FIN main_content -->
<div id="curva-inferior">&nbsp;</div>
<!--adsense-->

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