<%-- 
    Document   : alterarCli
    Created on : 14/02/2018, 20:06:24
    Author     : Beatriz
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
    </head>
    <body>
        <% 
        
        //recuperar a lista do request
        Usuario usuario = (Usuario) request.getAttribute("consulta");
        
        if(usuario != null){
            String msg = (String)request.getAttribute("erro");
        }
           
        %>
  
        <div>
            <h1 style="text-align: center;">ATUALIZAR CADASTRO DE CLIENTES</h1>
        <form action="ControleUsuario?id=<%= usuario.getId()%>" method="POST">
            ID: <input type="text" name="txtId" value="<%= usuario.getId()%>"><br/><br/>
            Nome: <input type="text" name="txtNome" value="<%= usuario.getNome() %>"><br/>
            RG: <input type="text" name="txtRG" value="<%= usuario.getRg() %>"><br/>
            CPF: <input type="text" name="txtCPF" value="<%= usuario.getCpf() %>"><br/>
            Data de Nasc: <input type="date" name="txtDtNasc" value="<%= usuario.getDtnasc() %>"><br/>
            Telefone: <input type="text" name="txtTelefone" value="<%= usuario.getTelefone() %>"><br/>
            Email: <input type="email" name="txtEmail" value="<%= usuario.getEmail() %>"><br/><br/> 
            Login: <input type="text" name="txtLogin" value="<%= usuario.getLogin() %>"<br/><br/>
            Senha: <input type="text" name="txtSenha" value="<%= usuario.getSenha() %>"><br/><br/>
            
            
            
            <input a href="ControleUsuario?id=<%= usuario.getId()%>" class="ui-btn ui-btn-b" type="submit" name="acao" value="Alterar">
            <input class="ui-btn ui-btn-b" type="submit" name="acao" value="Excluir"><br/><br/>
            
            
        </form>
    </div>
        <a href="principal.jsp">Página Principal</a>
    </body>
</html>
