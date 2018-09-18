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
  
        <div>
            <h1 style="text-align: center;">ATUALIZAR MEUS DADOS</h1>
        <form action="ControleEndereco?id=<%= endereco.getId_endereco()%>" method="POST">
            ID: <input type="text" name="txtId" value="<%= endereco.getId_endereco()%>"><br/><br/>
            Logradouro: <input type="text" name="txtLogradouro" value="<%= endereco.getLogradouro() %>"><br/>
            CEP: <input type="text" name="txtRG" value="<%= endereco.getCep() %>"><br/>
            Número: <input type="text" name="txtCPF" value="<%= endereco.getNumero() %>"><br/>
            Bairro <input type="text" name="txtBairro" value="<%= endereco.getBairro() %>"><br/>
            Cidade: <input type="text" name="txtCidade" value="<%= endereco.getCidade() %>"><br/>
            Estado: <input type="text" name="txtEstado" value="<%= endereco.getEstado() %>"><br/><br/> 
            
             
            
            <input a href="ControleEndereco?id=<%= endereco.getId_endereco()%>" class="ui-btn ui-btn-b" type="submit" name="acao" value="Alterar">
            <input class="ui-btn ui-btn-b" type="submit" name="acao" value="Excluir"><br/><br/>
            
            
        </form>
    </div>
        <a href="principal.jsp">Página Principal</a>
    </body>
</html>
