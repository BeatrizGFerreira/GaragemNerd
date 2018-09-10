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
        <link rel="stylesheet" href="../estilo.css"  type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
    </head>
    <body>
        
        <%
            //recupera o usuario da sessao
            Usuario usuario = (Usuario)session.getAttribute("usuarioAutenticado");
            //Usuario usuario = new Usuario();
            
            if(usuario !=null){
        %>
        <div>
            <h1 style="font-family: cursive, Comic Sans"><font color="black">Bem vindo, <%=usuario.getNome()%>!</h1>
            <%}%>
            <ul>
                <font color ="black" style="font-family: cursive, Comic Sans">
                    <!--<li><a href="admin/cad_user.jsp">Cadastro usuário</a></li></br>-->
                    <!--<li><a href="cadCli.html">Cadastro de clientes</a></li></br>-->
                    <li><a href="../ControleUsuario?acao=Listar">Lista De Clientes</a></li><br>                    
                    <li><a href="../ControleEndereco?acao=Listar">Lista De Endereços</a></li><br>
                    <li><a href="cadProduto.html">Cadastro de produtos</a></li></br>
                    <li><a href="../ControleProduto?acao=Listar">Lista De Produtos</a></li><br>            
                    <!--<li><a href="../prateleira.jsp">Prateleira Virtual</a></li></br>
                    <li><a href="../carrinho.jsp">Meu Carrinho</a></li></br>-->
                    <li><a href="../ControleAcesso?acao=Sair">Logout</a></li>
                </font>
            </ul>
        </div>       
    </body>
</html>
