<%--
    Document   : prateleira 
    Created on : 21/03/2018, 10:18:57
    Author     : 11151100178, Beatriz
--%>

<%@page import="java.util.ArrayList"%>
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

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
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
            
        <div class="product_box">
                 <%
                 // Recupera os produtos.
                List<Produto> produtos = (List<Produto>)
                request.getAttribute("produtos");
                 if(produtos == null) {
                 request.getRequestDispatcher("/ControleProduto?acao=listaProdutos").forward(request,
                response);
                 }
                %>
            
                <table border="0" cellpadding="5" align="center">
            <%
                int contadorColuna=1;
                for(Produto produto : produtos){
                //se é o primeiro produto, cria o inicio da linha
                if(contadorColuna == 1) {
                out.println("<tr>");
                }
            %>
            <td align="center" valign="bottom"> <img border="100" width="180" height="300" vspace="30" src="imagem/<%=produto.getImagem()%>"
            alt="Imagem do produto <%=produto.getImagem()%>" style="width:180px"/> <br/>
             <%=produto.getTitulo()%><br/>
             R$ <%=produto.getPreco()%><br/>             
             <a href="ControleCarrinho?acao=addProduto&idProduto=<%=produto.getId()%>">
                 <button class="btn btn-default">
                        <span class="glyphicon glyphicon-tag icone-botao"></span> 
                        <span>&nbsp; Comprar</span>
                 </button>
             <%
                //se é o último produto, exibir o término da linha
                if(contadorColuna == 3){
                out.println("</tr>");
                contadorColuna =0;
                }
                //atualiza o contador de colulas
                contadorColuna ++;

                }//fim do for
             %>
            </table>
             </div>  
            </div>
            </div>
            <br>
            <hr>
              
     </body>
           <%@include file="footer.jsp" %>   
</html>