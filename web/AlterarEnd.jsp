<%-- 
    Document   : AlterarEnd
    Created on : 27/08/2018, 08:47:59
    Author     : alunocmc
--%>

<%@page import="modelo.Endereco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>                      
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>Garagem NERD</title>
    </head>
    <body>
        <% 
        
        //recuperar a lista do request
        Endereco endereco = (Endereco) request.getAttribute("consulta");
        
        if(endereco != null){
            String msg = (String)request.getAttribute("erro");
        }
           
        %>
  
        <div class="container">
            <h2 style="text-align: center;">ATUALIZAR MEUS DADOS</h2>
        <form action="ControleEndereco?id=<%= endereco.getId_endereco()%>" method="POST">
            
            <div class="form-group">
               <%-- <label for="text">ID:</label>--%>
                <input type="hidden" class="form-control" id="id" name="txtId" value="<%= endereco.getId_endereco()%>">
            </div>
            <div class="form-group">
                <label for="text">Logradouro:</label>
                <input type="text" class="form-control" id="id" name="txtLogradouro" value="<%= endereco.getLogradouro()%>">
            </div>
            <div class="form-group">
                <label for="text">CEP:</label>
                <input type="text" class="form-control" id="id" name="txtCep" value="<%= endereco.getCep()%>">
            </div>
            <div class="form-group">
                <label for="text">Número:</label>
                <input type="text" class="form-control" id="id" name="txtNumero" value="<%= endereco.getNumero()%>">
            </div>
            <div class="form-group">
                <label for="text">Bairro:</label>
                <input type="text" class="form-control" id="id" name="txtBairro" value="<%= endereco.getBairro()%>">
            </div>
            <div class="form-group">
                <label for="text">Cidade:</label>
                <input type="text" class="form-control" id="id" name="txtCidade" value="<%= endereco.getCidade()%>">
            </div>
            <div class="form-group">
                <label for="text">Estado:</label>
                <input type="text" class="form-control" id="id" name="txtEstado" value="<%= endereco.getEstado()%>">
            </div>
            
            
            <%--ID: <input type="text" name="txtId" value="<%= endereco.getId_endereco()%>"><br/><br/>
            Logradouro: <input type="text" name="txtLogradouro" value="<%= endereco.getLogradouro() %>"><br/>
            CEP: <input type="text" name="txtRG" value="<%= endereco.getCep() %>"><br/>
            Número: <input type="text" name="txtCPF" value="<%= endereco.getNumero() %>"><br/>
            Bairro <input type="text" name="txtBairro" value="<%= endereco.getBairro() %>"><br/>
            Cidade: <input type="text" name="txtCidade" value="<%= endereco.getCidade() %>"><br/>
            Estado: <input type="text" name="txtEstado" value="<%= endereco.getEstado() %>"><br/><br/> 
           --%> 
             
            
            <input a href="ControleEndereco?id=<%= endereco.getId_endereco()%>" class="btn btn-success" type="submit" name="acao" value="Alterar">
            <%--<input class="btn btn-danger" type="submit" name="acao" value="Excluir"><br/><br/>--%>
            
            
        </form>
            <br/>
            <a href="principal.jsp">Página Principal</a>
    </div>
        
    </body>
</html>
