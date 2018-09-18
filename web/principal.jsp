<%-- 
    Document   : principal
    Created on : 14/02/2018, 20:16:26
    Author     : Beatriz Gomes
--%>

<%@page import="modelo.Usuario"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>
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
            <%
                Usuario consulta = new Usuario();
            %>
            <ul>
                <li><a href="ControleUsuario?id=<%=usuario.getId()%>&acao=Consultar">Meus Dados</a></li></br>
                <li><a href="carrinho.jsp">Meu carrinho</a></li></br>
                <li><a href="ControleAcesso?acao=Sair">Logout</a></li>
            </ul>
        </div>       
    </body>
</html>