<%-- 
    Document   : principal
    Created on : 06/09/2018, 10:07:48
    Author     : alunocmc
--%>

<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <title>Garagem NERD</title>
    </head>
    <body>
        
        <%
            //recupera o usuario da sessao
            Usuario usuario = (Usuario)session.getAttribute("usuarioAutenticado");
            //Usuario usuario = new Usuario();
            
            if(usuario !=null){
        %>
        
        <%}%>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <!-- Brand/logo -->
        <a class="navbar-brand" href="#">Garagem NERD</a>
        <!-- Links -->
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="../ControleUsuario?id=<%=usuario.getId()%>&acao=Consultar">Meus Dados</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../ControleUsuario?acao=Listar">Lista de Clientes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../ControleEndereco?acao=Listar">Lista de Endereços</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cadProduto.html">Cadastro de Produtos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../ControleProduto?acao=Listar">Lista de Produtos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../ControleAcesso?acao=Sair">Logout</a>
          </li>

        </ul>
        </nav>
          <div class="container-fluid">
            <h3>Garagem NERD</h3>
            <p>nothing.</p>
          </div> 
    </body>
</html>
