<%-- 
    Document   : principal
    Created on : 14/02/2018, 20:16:26
    Author     : Beatriz Gomes
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Produto"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <!-- templatemo 352 station shop -->
        <!-- 
        Station Shop Template 
        http://www.templatemo.com/preview/templatemo_352_station_shop 
        -->
        <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/ddsmoothmenu.js"></script>

        <script language="javascript" type="text/javascript">
        function clearText(field)
        {
            if (field.defaultValue == field.value) field.value = '';
            else if (field.value == '') field.value = field.defaultValue;
        }
        </script>
        
        <script type="text/javascript">

        ddsmoothmenu.init({
                mainmenuid: "top_nav", //menu DIV id
                orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
                classname: 'ddsmoothmenu', //class added to menu's outer DIV
                //customtheme: ["#1c5a80", "#18374a"],
                contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
        })

        </script>
        
        <link rel="stylesheet" type="text/css" media="all" href="css/jquery.dualSlider.0.2.css" />

        <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
        <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
        <script src="js/jquery.timers-1.2.js" type="text/javascript"></script>
        <script src="js/jquery.dualSlider.0.3.min.js" type="text/javascript"></script>

        <script type="text/javascript">

            $(document).ready(function() {

                $(".carousel").dualSlider({
                    auto:true,
                    autoDelay: 6000,
                    easingCarousel: "swing",
                    easingDetails: "easeOutBack",
                    durationCarousel: 1000,
                    durationDetails: 600
                });

            });

        </script>
        
    </head>
        <body>
            
            <div id="templatemo_wrapper">
	
            <%@include file="header.jsp"%>

            <%@include file="submenu.jsp"%>

            <%@include file="carousel.jsp" %>
            
            <div id="templatemo_main">

            <div id="sidebar" class="float_l">
                <%@include file="menulateral.jsp" %>
                </div>
                <%@include file="menulateral2.jsp" %>

            </div>
            
              <div id="content" class="float_r">
                  
            <h1>Nossa prateleira é bem variada, confira!</h1>
            <a href="prateleira.jsp">Conheça nossa prateleira!</a>
              </div>
            </div> <!-- END of templatemo_wrapper -->
            <%@include file="footer.jsp" %>

        </body>
</html>