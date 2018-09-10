<%-- 
    Document   : alterarProd
    Created on : 26/02/2018, 11:39:28
    Author     : 11151100178
--%>

<%@page import="modelo.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%-- <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
        <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script> --%>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>Alterar Produtos</title>
    </head>
    <body>
        <%
            //recuperar a lista do request
            Produto produto = (Produto)request.getAttribute("consulta");
            
            if(produto != null){
                String msg = (String)request.getAttribute("erro");
            }
        %>
        
        
        <div>
        <h1 style="text-align: center "font-family: inherit>ATUALIZAR CADASTRO DE PRODUTOS</h1>
        <form action="ControleProduto?id=<%= produto.getId()%>" method="POST">
            ID: <input type="text" name="txtId" value="<%=produto.getId() %>"><br/><br/>
            Título: <input type="text" name="txtTitulo" value="<%=produto.getTitulo() %>">
            Descricao: <input type="text" name="txtDescricao" value="<%=produto.getDescricao()%>"><br/>          
            Preço: <input type="text" name="txtPreco" value="<%=produto.getPreco() %>"><br/>
            Imagem: <input type="text" name="txtImagem" value="<%=produto.getImagem() %>"><br/>
            
            </font>
            <input a href="ControleProduto?id=<%= produto.getId()%>"class="ui-btn ui-btn-b" type="submit" name="acao" value="Alterar">
            <input class="ui-btn ui-btn-b" type="submit" name="acao" value="Excluir"><br/><br/>

        </form>
        
        </div>            
            <a href="admin/main.jsp">Página Principal</a>
    </body>
</html>
