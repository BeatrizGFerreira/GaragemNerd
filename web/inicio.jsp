<%-- 
    Document   : inicio
    Created on : 21/05/2018, 09:51:52
    Author     : 11151100178
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="estilo.css">
    </head>
    <body>
        <h1>Prateleira Virtual</h1>
        <form action="BuscaProduto" method="get">
            <input type="search" name="q" placeholder="Digite o nome do produto para buscar">
        </form>
        
        <br>
    
        <%
            List<Produto> lista = (List<Produto>) request.getAttribute("listaProdutos");
            NumberFormat formatadorPreco = NumberFormat.getCurrencyInstance();
            
            if (lista != null) {
                for (Produto p : lista) {              
        %>
            <div id="case-produtos"><div id="case-produtos-in">
                <div class="produto">
                    <a href="BuscaProduto?q=<%=p.getTitulo()%>">
                          <img src="<%=p.getImagem()%>" width="200">
                    </a>
                    <h3><%=p.getTitulo()%></h3>
                    <p><%=formatadorPreco.format(p.getPreco())%></p>
                </div>
            </div></div>
        <%
                }
            } else {

        %>
            <p>Nenhum produto disponível no momento.</p>   
        <%
            }
        %>
    </body>
</html>
