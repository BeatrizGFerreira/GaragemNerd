<%--
    Document   : prateleira 
    Created on : 21/03/2018, 10:18:57
    Author     : 11151100178, Beatriz
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="estilo.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        -->
        
        <title>Garagem NERD</title>
    </head>
    <body>
        <div class="img-test">
        
        <%
             // Recupera os produtos.
            List<Produto> produtos = (List<Produto>)
            request.getAttribute("produtos");
             if(produtos == null) {
             request.getRequestDispatcher("/ControleProduto?acao=listaProdutos").forward(request,
            response);
             }
        %>
        <!--/ControleProduto?acao=Listar"-->
        <h1>Prateleira Virtual</h1>
        <h2>Mais Procurados</h2>        
           <form action="BuscaProduto" method="get">
                <input type="search" name="q" placeholder="Digite o nome do produto para buscar">
           </form></br>
        <a href="Login.jsp">
                 <button class="btn btn-default">
                        <span class="icone-botao"></span> 
                        <span>&nbsp;Login</span>
                 </button> 
            </a>
        </br>
           
            <table border="0" cellpadding="5" align="center">
            <%
                int contadorColuna=1;
                for(Produto produto : produtos){
                //se é o primeiro produto, cria o inicio da linha
                if(contadorColuna == 1) {
                out.println("<tr>");
                }
            %>
            <td align="center" valign="bottom"> <img src="imagem/<%=produto.getImagem()%>"
            alt="Imagem do produto <%=produto.getImagem()%>" style="width:250px"/> <br/>
             <%=produto.getTitulo()%><br/>
             R$ <%=produto.getPreco()%><br/>             
             <a href="ControleCarrinho?acao=addProduto&idProduto=<%=produto.getId()%>">
                 <button class="btn btn-default">
                        <span class="glyphicon glyphicon-tag icone-botao"></span> 
                        <span>&nbsp; Comprar</span>
                 </button>
             <%
                //se é o último produto, exibir o término da linha
                if(contadorColuna == 4){
                out.println("</tr>");
                contadorColuna =0;
                }
                //atualiza o contador de colulas
                contadorColuna ++;

                }//fim do for
             %>
            </table>
        </div>
            <br>
            
    </body>
</html>