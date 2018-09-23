<%-- 
    Document   : ListaProd
    Created on : 26/02/2018, 08:27:17
    Author     : 11151100178, Beatriz
--%>

<%@page import="modelo.Produto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <title>Garagem NERD</title>
    </head>
    <body>
        
        <div class="container">
        <h2 style="text-align:center">Lista de Produtos</h2>
        <% 
            //recuperar lista do request
            List<Produto> listaproduto = (List<Produto>) request.getAttribute("listaprod"); //("lista"); mudar na controle se der erro
        %>
        
         <table class="table table-striped">
            <thead>
              <tr>
                <th>ID:</th>
                <th>Título:</th>
                <th>Descrição:</th>
                <th>Preço:</th>
                <th>Imagem:</th>
                <th>Status:</th>
              </tr>
            </thead>
            <tbody>
            
        <!--<table data-role="table" border="1" id="table-custom-2" data-mode="columntoggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b"> 
            <tr>
                <td>ID: </td>
                <td>Título: </td>
                <td>Descrição: </td>
                <td>Preço: </td>
                <td>Imagem: </td>
                <td>Status: </td>
                <td> </td>
                <td> </td>                
            </tr>   -->
            
            <%                 
                for(Produto produto: listaproduto){                    
            %>
            <tr>
              <td><%= produto.getId()%></td>
              <td><%= produto.getTitulo()%></td>
              <td><%= produto.getDescricao()%></td>
              <td><%= produto.getPreco()%></td>
              <td><%= produto.getImagem()%></td>
              <td><%= produto.isStatus()%></td>
              <td><a href="ControleProduto?id=<%=produto.getId() %>&acao=Consultar"> Editar</a></td>
            </tr>
            <!--<tr class="ui-bar-d">
                <td>< %= produto.getId()%> </td>
                <td>< %= produto.getTitulo() %> </td>
                <td>< %= produto.getDescricao() %> </td>
                <td>< %= produto.getPreco() %></td>
                <td>< %= produto.getImagem() %></td>
                <td>< %= produto.isStatus() %></td>
                -->
                
                <!--<td><a href="ControleProduto?id=< %=produto.getId() %>&acao=Consultar"> Editar</a></td>-->
               <%-- <td><a href="ControleProduto?id=<%=produto.getId() %>&acao=Consultar"> Atualizar</a></td> --%>
            </tr>
            
            <% 
                }
            %>
            
        </table>
            <br><br/>
            <a href="admin/cadProduto.html">Continuar Cadastrando</font></a><br/><br/>
            <a href="admin/main.jsp">Página principal</font></a>
    </div>
    </body>
</html>