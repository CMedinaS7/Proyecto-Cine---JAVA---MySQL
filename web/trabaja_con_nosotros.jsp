<%-- 
    Document   : trabaja_con_nosotros
    Created on : 15-jun-2012, 13:13:27
    Author     : Carlos J Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" Dao.conexion,java.sql.*,java.util.Date,Util.LlenarCombo1,java.util.Vector"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-language" content="es" />
<base  />
<title>Trabaja con Nosotros | Multicines CineMax</title>
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
    <script type="text/javascript" src="static/scripts/jquery.cycle.lite.js"></script>
    
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
               	<h1 class="tituloh1">Trabaja con nosotros</h1>
    <div class="addthis_toolbox addthis_default_style" style="float:right; background-color:#FFF; width:380px; height:25px; padding-top:5px; padding-left:15px; margin-right:283px; ">

    <span class="addthis_separator"> | </span>
     <a class="getback"> &lt; VOLVER</a>
</div>

 <div class="banners_internos">
				<div id="infoi_izq">
        	<div class="banner2_h2">
                <div class="banner2_h_info"><a href="maxcard.jsp"><img src="static/images/banners/banner-sidebar-266x133.jpg" width="268" height="133" /></a></div>
          </div>
          &nbsp;
          <br /><br />
 
           
        </div> 
</div> 
                    <div id="contenedor_peliculas" style="background-color:#FFF; margin-top:5px; padding:0 10px 10px 10px; width:623px;"> <br /><p><span class="tx_gris">
<script type="text/javascript" src="static/scripts/ddaccordion.js"></script>
<style type="text/css">
.mypets{ /*accordion*/
cursor: pointer;
padding: 2px 5px;
border: 1px solid white;
background: #E1E1E1;
font: 11px "Trebuchet MS",Arial,Helvetica,sans-serif;
font-weight:bold;
}

.openpet{ /*class added to contents of 1st demo when they are open*/
background: #ccc;
font: 11px "Trebuchet MS",Arial,Helvetica,sans-serif;
font-weight:bold;
color:#000;
}
.thepet{font: 11px "Trebuchet MS",Arial,Helvetica,sans-serif;
color:#000;}
a.vermore{ display:block; font-size:12px; font-weight:bold; font-family:"Trebuchet MS", Arial, Helvetica, sans-serif; margin-top:10px; margin-bottom:10px;}
</style>

<script type="text/javascript">

//Initialize first demo:
ddaccordion.init({
	headerclass: "mypets", // d CSS class name of headers group
	contentclass: "thepet", // d CSS class name of contents group
	revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["none", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: "slow", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})


</script>	
<script>
$(document).ready(function() {

	// Accordion

	$("#mostrarcargos").click(function (){
	$("#accordion").show("slow");
	$(this).hide();
	$("#ocultarcargos").show("slow");
		});
	$("#ocultarcargos").click(function() {
	$("#accordion").hide("slow");
	$("#mostrarcargos").show("slow");
	$(this).hide();
		});	
	});
	</script>
    
<!--Inicio contenido home-->
<noscript><META HTTP-EQUIV="refresh" CONTENT="1; url=../index.html"></noscript>
<div id="contenido_internas">
<table width="910" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="610" height="100" align="left" valign="top">
    <br />
    <fieldset style="margin-left:10px;margin-right:5px;">
    <legend style="text-align:left;">Puestos de Trabajo  </legend>
    <a class="vermore" id="mostrarcargos" style="cursor:pointer;">Ver el detalle de nuestros puestos de trabajo aquí</a><a class="vermore" id="ocultarcargos" style="display:none;cursor:pointer;">Ocultar</a>
<div id="accordion" style="display:none;">    
<h4 class="mypets">Auxiliar de Servicio</h4>
<div class="thepet"><br />
<p>
Colaboradores (hombres o mujeres) con Vocación de Servicio al Cliente, Honestidad, Iniciativa, Dinamismo, Trabajo en Equipo, Pasión por el cine, Innovación, Responsabilidad.</p>
<h4>HORARIO:</h4><ul>
<li> Disponibilidad como FULL TIME, aprox. de 15:00 horas a 23:45 horas de Lunes a Domingo, con un día de descanso de preferencia Lunes o Miércoles.</li>
<li> Disponibilidad como PART TIME aprox. de 18:00 horas a 22:00 horas de Lunes a Domingo, con un día de descanso de preferencia Lunes o Miércoles.</li>
</ul>
</div>

<h4 class="mypets">Cajeros(as)</h4>
<div class="thepet"><br />
<p>
Estudiantes universitarios y/o técnicos con experiencia en detección de billetes y monedas falsas, con el siguiente perfil:</p>
<ul>
<li>Orientación de servicio al cliente, proactivo, vocación de Servicio, iniciativa, conocimientos de office.</li>
<li>Experiencia mínima de 6 meses en el puesto (deseable)</li>
</ul>
<h4>HORARIO:</h4>
<ul>
<li>Disponibilidad como FULL TIME, aprox. de 15:00 horas a 23:45 horas de Lunes a Domingo, con un día de descanso de preferencia Lunes o Miércoles.</li>
<li>Disponibilidad como PART TIME aprox. de 18:00 horas a 22:00 horas de Lunes a Domingo, con un día de descanso de preferencia Lunes o Miércoles.</li>
</ul>
</div>

<h4 class="mypets">Administrador(a) de Cine</h4>
<div class="thepet"><br />
<h4>Titulado en Administración de Empresas, Administración Hotelera o afines.
Competencias de formación:</h4> 
<p>Experiencia de 3 a 5 años. <strong>(DESEABLE EMPRESAS DE ENTRETENIMIENTO)</strong></p>
<h4>Competencias:</h4>
<p>Con alta capacidad de servicio al cliente, delegación, trabajo en equipo, empatía, gestión de recursos, desarrollo de personas, manejo de conflicto y negociaciones efectivas.</p>

<h4>Funciones:</h4>
<ul>
<li>Encargado de la Supervisión y el manejo del personal.</li>
<li>Supervisión de las operaciones del  cine  (ventas por áreas, chocolaterías y boletería)</li>
<li>Arqueo de liquidaciones a los cajeros y  bóveda.</li>
<li>Servicio de atención al cliente.</li>
<li>Aplicación de los procesos de acuerdo a las políticas de la empresa.</li> 
<li>Efectuar informes y reportes administrativos  a la Gerencia.</li>
<li>Mantener control adecuado de los temas laborales del cine: registros del personal., contratos, vacaciones, libros de asistencia, carnets sanitarios, etc.</li>
<li>Verificar el óptimo funcionamiento de los equipos y software del cine.</li>
<li>Anulación de Tickets y vouchers Visa y Master.</li>
<li>Llevar el control de la publicidad de la película y trailers.</li>
</ul>
</div>

<h4 class="mypets">Supervisor (a) Sala Bar</h4>
<div class="thepet"><br />
<p>Estudios técnicos o universitarios en Administración, Contabilidad, Turismo y Hotelería,etc.</p>
<h4>Competencias de formación:</h4>
<p>Experiencia mínima de 1 año ocupando el puesto en empresas de entretenimiento (deseable).Inglés básico.</p>
<p>Con conocimiento en preparación de Tragos y Cocteles.</p>
<h4>Competencias:</h4>
<p>Con capacidad de análisis, organización, liderazgo y para trabajar bajo presión. Además deberá ser una persona proactiva, extrovertida y tener buen trato hacia los clientes y equipo de trabajo. </p>
<h4>Funciones:</h4>
<ul>
<li>Rol de Horarios Semanales del personal a su cargo y revisión de breaks diarios del personal.</li>
<li>Cuadre de cajas y sistema de control: arqueos.</li>
<li>Control de stock y mermas de los productos.</li>
<li>Pedidos diarios y semanales.</li>
<li>Inventarios.</li>
<li>Ver la correcta exhibición de los productos.</li>
<li>Ver el control de calidad de los productos y el control de los suministros.</li>
</ul>
</div>

<h4 class="mypets">Supervisor (a) Chocolatería</h4>
<div class="thepet"><br />
<p>Estudios técnicos o universitarios en Administración, Contabilidad, Turismo y Hotelería,etc.</p>
<h4>Competencias de formación:</h4>
<p>Experiencia mínima de 1 año ocupando el puesto en empresas de entretenimiento (deseable).Inglés básico.</p>
<h4>Competencias:</h4>
<p>Con capacidad de análisis, organización, liderazgo y para trabajar bajo presión. Además deberá ser una persona proactiva, extrovertida y tener buen trato hacia los clientes y equipo de trabajo. </p>
<h4>Funciones:</h4>
<ul>
<li>Encargado de la Supervisión y el manejo del personal.</li>
<li>Supervisión de las operaciones del cine (ventas por áreas, chocolaterías y boletería).</li>
<li>Arqueo de liquidaciones a los cajeros y bóveda.</li>
<li>Servicio de atención al cliente.</li>
<li>Aplicación de los procesos de acuerdo a las políticas de la empresa</li>
<li>Efectuar informes y reportes administrativos a la Gerencia.</li>
<li>Mantener control adecuado de los temas laborales del cine: registros del personal, contratos, vacaciones, libros de asistencia, carnets sanitarios, etc.</li>
<li>Verificar el óptimo funcionamiento de los equipos y software del cine.</li>
</ul>
</div>

<h4 class="mypets">Supervisor de Caja / Tesorero</h4>
<div class="thepet"><br />
<h4>Descripción general del cargo:</h4>  
<p>Responsable de la apertura de las boleterías, chocolaterías y distribución de fondos asignados  a los cajeros (as), cierre y cuadre de caja, entrega de remesa a Prosegur.<br />    
<h4>Competencias de conocimiento:  </h4>      
Estudios técnicos y/o  universitarios, últimos ciclos o egresados de Administración, Contabilidad, ingles básico con dominio del office, manejo de sistemas, detección de billetes y monedas falsas.  <br /> <br />
<h4>Competencias de formación:</h4>   
Experiencia mínima de un año a más ocupando el mismo cargo o afines.   <br />  
<h4>Principales Funciones:</h4>
<ul>      
<li>Apertura ,cierre, cuadre de caja</li>
<li>Control del fondo de sencillo.</li>
<li>Declaración de Impuestos Municipales del Cine.</li>
</ul>
<p>Con alta capacidad de servicio al cliente, delegación, trabajo en equipo, empatía, gestión de recursos, desarrollo de personas, manejo de conflicto y negociaciones efectivas.<br /><br />  
Principales funciones:<br />
<ul>
<li>Rol de Horarios Semanales del personal a su cargo y revisión de break diarios del personal</li>
<li>Cuadre de cajas y sistema de control :arqueos</li>
<li>Control de stock y mermas de los productos del cine bar.</li>
<li>Hacer pedidos diarios y semanales</li>
<li>Inventarios</li>
<li>Ver la correcta exhibición de los productos.</li>
<li>Ver el control de calidad de los productos y el control de los suministros.</li>
</ul>
</div>
<h4 class="mypets">Almacenero</h4>
<div class="thepet"><br />
<p>
<h4>Descripción general del cargo:</h4>
Responsable de requisiciones y órdenes de compra, revisión de ingresos y salidas de los productos de cada cine, Kardex, revisión de inventarios semanal de los Cines. <br /><br />
<h4> Competencias de conocimiento:  </h4>    
<p>Estudios técnicos, primeros ciclos de Administración, Contabilidad o Ingeniería, dominio del office.</p>
<h4>Competencias de formación:</h4>   
<p>Experiencia mínima de un año a más ocupando el mismo cargo o afines.</p>  
<h4>Competencias generales (de la empresa)</h4>
<p>Orientación a la calidad, trabajo en equipo y bajo presión, proactivo, vocación de Servicio, con Iniciativa, liderazgo, con mucha personalidad, criterio operatividad y disposición.</p>      
       <br />
Principales Funciones:  <br />
<ul>     
<li>Manejo de Kardex</li>
<li>Manejo de órdenes de compra, archivo y planificación.</li>
<li>Manejo de Base de Datos.</li>
<li>Importaciones</li>
<li>Ingreso de documentación de compras y ventas al sistema.</li>
</ul>
</div>
</div>
  </fieldset> 
<br />	
        <fieldset style="margin-left:10px;margin-right:5px;">
    <legend>Ingresa tus datos personales</legend>
    <br />
    <form name="inputform" id="inputform" method="post" action="#" enctype="multipart/form-data">
    <table>
    <tr><td><h4>Nombres: </h4></td><td><input class="inp-form" type="text" name="nombres" id="nombres" size="50" maxlength="50" value=""/><div id="input-nombres" class="error-left"></div><div id="input-nombresx" class="error-inner">No ha ingresado su nombre.</div></td></tr>
    <tr><td><h4>Apellidos: </h4></td><td><input class="inp-form" type="text" name="apellidos" id="apellidos" size="50" maxlength="50" /><div id="input-apellidos" class="error-left"></div><div id="input-apellidosx" class="error-inner">No ha ingresado sus apellidos.</div></td></tr>
    <tr><td><h4>Sexo: </h4></td><td><select class="selecto" name="sexo" id="sexo">
      <option value="" selected="selected">Selecciona el sexo:</option>
      <option value="mujer">Mujer</option>
      <option value="hombre">Hombre</option>
    </select><div id="input-sexo" class="error-left"></div><div id="input-sexox" class="error-inner">No ha seleccionado su sexo.</div></td></tr>
    <tr><td><h4>Fecha de Nacimiento:</h4> </td><td><select class="selecto" name="dia" id="dia">
   <option value="">Día:</option>
      <option  value="1">1</option>
      <option  value="2">2</option>
      <option  value="3">3</option>
      <option  value="4">4</option>
      <option  value="5">5</option>
      <option  value="6">6</option>
      <option  value="7">7</option>
      <option  value="8">8</option>
      <option  value="9">9</option>
      <option  value="10">10</option>
      <option  value="11">11</option>
      <option  value="12">12</option>
      <option  value="13">13</option>
      <option  value="14">14</option>
      <option  value="15">15</option>
      <option  value="16">16</option>
      <option  value="17">17</option>
      <option  value="18">18</option>
      <option  value="19">19</option>
      <option  value="20">20</option>
      <option  value="21">21</option>
      <option  value="22">22</option>
      <option  value="23">23</option>
      <option  value="24">24</option>
      <option  value="25">25</option>
      <option  value="26">26</option>
      <option  value="27">27</option>
      <option  value="28">28</option>
      <option  value="29">29</option>
      <option  value="30">30</option>
      <option  value="31">31</option>
    </select>
              
<select class="selecto" name="mes" id="mes">
   <option value="">Mes:</option>
    <option value="1"  >Enero</option>
    <option value="2"  >Febrero</option>
    <option value="3"  >Marzo</option>
    <option value="4"  >Abril</option>
    <option value="5"  >Mayo</option>
    <option value="6"  >Junio</option>
    <option value="7"  >Julio</option>
    <option value="8"  >Agosto</option>
    <option value="9"  >Septiembre</option>
    <option value="10"  >Octubre</option>
    <option value="11"  >Noviembre</option>
    <option value="12"  >Diciembre</option>
</select>
            
<select class="selecto" name="anno" id="anno">
                        <option value="">Año:</option>
                                            <option  value="1894">1894</option>
                                                                  <option  value="1895">1895</option>
                                                                  <option  value="1896">1896</option>
                                                                  <option  value="1897">1897</option>
                                                                  <option  value="1898">1898</option>
                                                                  <option  value="1899">1899</option>
                                                                  <option  value="1900">1900</option>
                                                                  <option  value="1901">1901</option>
                                                                  <option  value="1902">1902</option>
                                                                  <option  value="1903">1903</option>
                                                                  <option  value="1904">1904</option>
                                                                  <option  value="1905">1905</option>
                                                                  <option  value="1906">1906</option>
                                                                  <option  value="1907">1907</option>
                                                                  <option  value="1908">1908</option>
                                                                  <option  value="1909">1909</option>
                                                                  <option  value="1910">1910</option>
                                                                  <option  value="1911">1911</option>
                                                                  <option  value="1912">1912</option>
                                                                  <option  value="1913">1913</option>
                                                                  <option  value="1914">1914</option>
                                                                  <option  value="1915">1915</option>
                                                                  <option  value="1916">1916</option>
                                                                  <option  value="1917">1917</option>
                                                                  <option  value="1918">1918</option>
                                                                  <option  value="1919">1919</option>
                                                                  <option  value="1920">1920</option>
                                                                  <option  value="1921">1921</option>
                                                                  <option  value="1922">1922</option>
                                                                  <option  value="1923">1923</option>
                                                                  <option  value="1924">1924</option>
                                                                  <option  value="1925">1925</option>
                                                                  <option  value="1926">1926</option>
                                                                  <option  value="1927">1927</option>
                                                                  <option  value="1928">1928</option>
                                                                  <option  value="1929">1929</option>
                                                                  <option  value="1930">1930</option>
                                                                  <option  value="1931">1931</option>
                                                                  <option  value="1932">1932</option>
                                                                  <option  value="1933">1933</option>
                                                                  <option  value="1934">1934</option>
                                                                  <option  value="1935">1935</option>
                                                                  <option  value="1936">1936</option>
                                                                  <option  value="1937">1937</option>
                                                                  <option  value="1938">1938</option>
                                                                  <option  value="1939">1939</option>
                                                                  <option  value="1940">1940</option>
                                                                  <option  value="1941">1941</option>
                                                                  <option  value="1942">1942</option>
                                                                  <option  value="1943">1943</option>
                                                                  <option  value="1944">1944</option>
                                                                  <option  value="1945">1945</option>
                                                                  <option  value="1946">1946</option>
                                                                  <option  value="1947">1947</option>
                                                                  <option  value="1948">1948</option>
                                                                  <option  value="1949">1949</option>
                                                                  <option  value="1950">1950</option>
                                                                  <option  value="1951">1951</option>
                                                                  <option  value="1952">1952</option>
                                                                  <option  value="1953">1953</option>
                                                                  <option  value="1954">1954</option>
                                                                  <option  value="1955">1955</option>
                                                                  <option  value="1956">1956</option>
                                                                  <option  value="1957">1957</option>
                                                                  <option  value="1958">1958</option>
                                                                  <option  value="1959">1959</option>
                                                                  <option  value="1960">1960</option>
                                                                  <option  value="1961">1961</option>
                                                                  <option  value="1962">1962</option>
                                                                  <option  value="1963">1963</option>
                                                                  <option  value="1964">1964</option>
                                                                  <option  value="1965">1965</option>
                                                                  <option  value="1966">1966</option>
                                                                  <option  value="1967">1967</option>
                                                                  <option  value="1968">1968</option>
                                                                  <option  value="1969">1969</option>
                                                                  <option  value="1970">1970</option>
                                                                  <option  value="1971">1971</option>
                                                                  <option  value="1972">1972</option>
                                                                  <option  value="1973">1973</option>
                                                                  <option  value="1974">1974</option>
                                                                  <option  value="1975">1975</option>
                                                                  <option  value="1976">1976</option>
                                                                  <option  value="1977">1977</option>
                                                                  <option  value="1978">1978</option>
                                                                  <option  value="1979">1979</option>
                                                                  <option  value="1980">1980</option>
                                                                  <option  value="1981">1981</option>
                                                                  <option  value="1982">1982</option>
                                                                  <option  value="1983">1983</option>
                                                                  <option  value="1984">1984</option>
                                                                  <option  value="1985">1985</option>
                                                                  <option  value="1986">1986</option>
                                                                  <option  value="1987">1987</option>
                                                                  <option  value="1988">1988</option>
                                                                  <option  value="1989">1989</option>
                                                                  <option  value="1990">1990</option>
                                                                  <option  value="1991">1991</option>
                                                                  <option  value="1992">1992</option>
                                                                  <option  value="1993">1993</option>
                                                                  <option  value="1994">1994</option>
                                  </select><div id="input-fechanac" class="error-left"></div><div id="input-fechanacx" class="error-inner">Su fecha?</div></td></tr>
<tr><td><h4>Edad:</h4></td><td><select class="selecto" name="edad" id="edad">
   <option value="">Selecciona edad:</option>
      <option  value="18">18</option>
      <option  value="19">19</option>
      <option  value="20">20</option>
      <option  value="21">21</option>
      <option  value="22">22</option>
      <option  value="23">23</option>
      <option  value="24">24</option>
      <option  value="25">25</option>
      <option  value="26">26</option>
      <option  value="27">27</option>
      <option  value="28">28</option>
      <option  value="29">29</option>
      <option  value="30">30</option>
      <option  value="31">31</option>
      <option  value="32">32</option>
      <option  value="33">33</option>
      <option  value="34">34</option>
      <option  value="35">35</option>
      <option  value="36">36</option>
      <option  value="37">37</option>
      <option  value="38">38</option>
      <option  value="39">39</option>
      <option  value="40">40</option>
      <option  value="41">41</option>
      <option  value="42">42</option>
      <option  value="43">43</option>
      <option  value="44">44</option>
      <option  value="45">45</option>
      <option  value="46">46</option>
      <option  value="47">47</option>
      <option  value="48">48</option>
      <option  value="49">49</option>
      <option  value="50">50</option>
      <option  value="51">51</option>
      <option  value="52">52</option>
      <option  value="53">53</option>
      <option  value="54">54</option>
      <option  value="55">55</option>
      <option  value="56">56</option>
      <option  value="57">57</option>
      <option  value="58">58</option>
      <option  value="59">59</option>
      <option  value="60">60</option>
      <option  value="61">61</option>
      <option  value="62">62</option>
      <option  value="63">63</option>
      <option  value="64">64</option>
      <option  value="65">65</option>
    </select><div id="input-edad" class="error-left"></div><div id="input-edadx" class="error-inner">No ha seleccionado su edad.</div></td></tr>
<tr><td><h4>DNI:</h4></td><td><input class="inp-form" type="text" name="dni" id="dni" size="30" maxlength="30" /><div id="input-dni" class="error-left"></div><div id="input-dnix" class="error-inner">No ha ingresado su DNI.</div></td></tr>

<tr><td><h4>Teléfono fijo:</h4></td><td><input class="inp-form" type="text" name="telefono" id="telefono" size="40" maxlength="45" /><div id="input-telefono" class="error-left"></div><div id="input-telefonox" class="error-inner">Ingrese su télefono fijo o celular</div></td></tr>
<tr><td><h4>Teléfono Celular:</h4></td><td><input class="inp-form" type="text" name="celular" id="celular" size="40" maxlength="45" /></td></tr>
<tr><td><h4>Dirección y distrito:</h4></td><td><input class="inp-form" type="text" name="direccion" id="direccion" size="50" maxlength="50" /><div id="input-direccion" class="error-left"></div><div id="input-direccionx" class="error-inner">No ha ingresado su dirección.</div></td></tr>
<tr><td><h4>Correo Electrónico:</h4></td><td><input class="inp-form" type="text" name="email" id="email" size="35" maxlength="40" /><div id="input-email" class="error-left"></div><div id="input-emailx" class="error-inner">Correo no ingresado o inválido.</div></td></tr>
    <tr><td><h4>Cargo al que postula: </h4></td><td><select class="selecto" name="cargo" id="cargo">
      <option value="" selected="selected">Selecciona cargo al que postula:</option>
      <option value="Auxiliar de servicio">Auxiliar de Servicio</option>
      <option value="Cajero(a)">Cajero(a)</option>
      <option value="Administrador(a) de cine">Administrador(a) de Cine</option>
      <option value="Supervisor Sala Bar">Supervisor Sala Bar</option>
      <option value="Supervisora de chocolateria">Supervisora Chocolatería</option>
      <option value="Tesorero(a)">Supervisor de Caja / Tesorero</option>
      <option value="Almacenero">Almacenero</option>
    </select><div id="input-cargo" class="error-left"></div><div id="input-cargox" class="error-inner">Escoja el cargo</div></td></tr>
    <tr><td><h4>Pretensiones salariales:</h4></td><td><input class="inp-form" type="text" name="pretensiones" id="pretensiones" size="30" maxlength="30" /><div id="input-pretensiones" class="error-left"></div><div id="input-pretensionesx" class="error-inner">Ingrese sus pretensiones.</div></td></tr>
    <tr><td></td><td><input type="submit" name="enviar" id="enviar" value="Enviar" class="button-submit"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Limpiar" class="button-submit" id="limpiar" /></td></tr>
    </table>
    </form>
    <div id="cargando" style="display:none; color: green;">Procesando...</div>
<div id="status"></div>
</fieldset>    
    </td>
    <td width="300" align="left" valign="top">
   
        </td>
  </tr>
  <tr>
    <td height="10" align="left" valign="top"></td>
    <td height="10" align="left" valign="top"></td>
    <td height="10" align="left" valign="top">&nbsp;</td>
  </tr>
</table>
</div>
<script>
$(document).ready(function() {	
	$("#nombres").focus();
	$("#superior").hide();
	$("#neducacion").val("");

$("#input-nombres, #input-nombresx, #input-apellidos, #input-apellidosx, #input-dni, #input-dnix, #input-direccion, #input-direccionx, #input-email, #input-emailx, #input-pretensiones, #input-pretensionesx, #input-sexo, #input-sexox, #input-fechanac, #input-fechanacx, #input-edad, #input-edadx, #input-neducacion, #input-neducacionx, #input-cargo, #input-cargox, #input-cv, #input-cvx, #input-telefono, #input-telefonox, #input-profesion, #input-profesionx, #msgsup").hide();

// get the form values
var nombres = $("#nombres");
var apellidos = $("#apellidos");
var sexo = $("#sexo");
var dia = $("#dia");
var mes = $("#mes");
var anno = $("#anno");
var edad = $("#edad");
var dni = $("#dni");
var telefono = $("#telefono");
var celular = $("#celular");
var direccion = $("#direccion");
var email = $("#email");
var neducacion = $("#neducacion");
var cargo = $("#cargo");
var profesion = $("#profesion");
var grado = $("#grado");
var pretensiones = $("#pretensiones");
var cv = $("#cv");
var enviar = $("#enviar");

   //controlamos la validacion en los distintos eventos
function validatenombres(){  
    if(nombres.val().length < 2){  $("#input-nombresx").fadeIn(2000).fadeOut(2000); $("#input-nombres").fadeIn(2000).fadeOut(2000);
        return false;   } else { return true;}  
}
function validateapellidos(){  
    if(apellidos.val().length < 2){  $("#input-apellidosx").fadeIn(2000).fadeOut(2000); $("#input-apellidos").fadeIn(2000).fadeOut(2000);
        return false;   } else { return true;}  
}
function validatedni(){  
    if(dni.val().length < 2){  $("#input-dnix").fadeIn(2000).fadeOut(2000); $("#input-dni").fadeIn(2000).fadeOut(2000);
        return false;   } else { return true;}  
}
function validatedireccion(){  
    if(direccion.val().length < 2){  $("#input-direccionx").fadeIn(2000).fadeOut(2000); $("#input-direccion").fadeIn(2000).fadeOut(2000);
        return false;   } else { return true;}  
}
function validateemail(){  
    if(email.val().length < 2){  $("#input-emailx").fadeIn(2000).fadeOut(2000); $("#input-email").fadeIn(2000).fadeOut(2000);
        return false;   }
	
   else if(!email.val().match(/^[^\s()<>@,;:\/]+@\w[\w\.-]+\.[a-z]{2,}$/i)){  
       $("#input-emailx").fadeIn(2000).fadeOut(2000); $("#input-email").fadeIn(2000).fadeOut(2000);
        return false;  
    } 
		 else { return true;}  
}
function validatepretensiones(){  
    if(pretensiones.val().length < 2){  $("#input-pretensionesx").fadeIn(2000).fadeOut(2000); $("#input-pretensiones").fadeIn(2000).fadeOut(2000);
        return false;   } else { return true;}  
}
function validatesexo(){  
    if(sexo.val().length < 1){  $("#input-sexox").fadeIn(2000).fadeOut(2000); $("#input-sexo").fadeIn(2000).fadeOut(2000);
        return false;   } else { return true;}  
}
function validatefechanac(){  
    if((dia.val().length < 1) || (mes.val().length < 1) || (anno.val().length < 1)){  $("#input-fechanacx").fadeIn(2000).fadeOut(2000); $("#input-fechanac").fadeIn(2000).fadeOut(2000);
        return false;   } else { return true;}  
}
function validateedad(){  
    if(edad.val().length < 1){  $("#input-edadx").fadeIn(2000).fadeOut(2000); $("#input-edad").fadeIn(2000).fadeOut(2000);
        return false;   } else { return true;}  
}  
function validateneducacion(){  
    if(neducacion.val().length < 1){  $("#msgsup").hide(); $("#input-neducacionx").fadeIn(2000).fadeOut(2000); $("#input-neducacion").fadeIn(2000).fadeOut(2000, function(){
		var valor;
	valor = $("#neducacion").val();
	if (valor == "superior"){
		$("#msgsup").show("fast");
		$("#profesion").focus();
	}
		});
        return false;   } else { return true;}  
}  
function validatecargo(){  
    if(cargo.val().length < 1){  $("#input-cargox").fadeIn(2000).fadeOut(2000); $("#input-cargo").fadeIn(2000).fadeOut(2000);
        return false;   } else { return true;}  
}  
function validatecv(){  
    if(cv.val().length < 1){ $("#msgcv").hide(); $("#input-cvx").fadeIn(2000).fadeOut(2000); $("#input-cv").fadeIn(2000).fadeOut(2000, function(){
		$("#msgcv").show("fast");
		}
	);
        return false;   } else { return true;}  
} 
function validatetelefonos(){  
    if((telefono.val().length < 1) && (celular.val().length < 7)){  	
	$("#input-telefonox").fadeIn(2000).fadeOut(2000); $("#input-telefono").fadeIn(2000).fadeOut(2000);
        return false;   }
		else if((celular.val().length < 1) && (telefono.val().length < 7)){  	
	$("#input-telefonox").fadeIn(2000).fadeOut(2000); $("#input-telefono").fadeIn(2000).fadeOut(2000);
        return false;   } 
		
		else { return true;}  
}
function validateprofesionygradoacad(){
	if (neducacion.val()== "superior"){  
    if((profesion.val().length < 3) || (grado.val().length < 3)){  $("#msgsup").hide(); $("#input-profesionx").fadeIn(2000).fadeOut(2000); $("#input-profesion").fadeIn(2000).fadeOut(2000, function(){
		var valor;
	valor = $("#neducacion").val();
	if (valor == "superior"){
		$("#msgsup").show("fast");
		$("#profesion").focus();
	}
		});
        return false;   } else { return true;}
	}
	return true;
} 
    // Perdida de foco  
    nombres.blur(validatenombres);dni
	apellidos.blur(validateapellidos);
	dni.blur(validatedni);
	direccion.blur(validatedireccion);
	email.blur(validateemail);
	pretensiones.blur(validatepretensiones); 
	sexo.blur(validatesexo);
	edad.blur(validateedad);
	neducacion.blur(validateneducacion);
	cargo.blur(validatecargo);
	
$("#neducacion").change(function(){
	var valor;
	valor = $("#neducacion").val();
	if (valor == "superior"){
	$("#msgsup").show("slow");
	$("#superior").show("slow");
	$("#profesion").focus();
	}else {
	$("#superior").hide("slow");
	$("#msgsup").hide();}	
	});
	
$('#cv').change(function(){
$('#fileAttached').html("<h4>"+$('#cv').val()+"</h4>");
});	
	
// Envio de formulario  
 $("#inputform").submit(function(){    
    if(validatenombres() & validateapellidos() & validatedni() & validatedireccion() & validateemail() & validatepretensiones() & validatesexo() & validatefechanac() & validateedad() & validateneducacion() & validatecargo() & validatecv() & validatetelefonos() & validateprofesionygradoacad()){  
       $("#enviar").hide("slow");
	   $("#limpiar").hide("slow");
		return true;  
   } else  
       return false;  
 });
});
</script>
</span>
 </p>     
      
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