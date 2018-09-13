<%-- 
    Document   : CadEnd
    Created on : 01/09/2018, 20:20:47
    Author     : beatr
--%>

<%@page import="modelo.Usuario"%>
<%@page import="modelo.CarrinhoDeCompra"%>
<%@page import="modelo.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
        <title>Garagem NERD</title>
        <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <% 
            Usuario usuario = (Usuario) request.getAttribute("usuario");
            //Produto produto = new Produto();
            //recupera os produtos do carrinho da sessao
            //CarrinhoDeCompra carrinho = (CarrinhoDeCompra) session.getAttribute("carrinho");
        %>
        <h1 style="font-family: cursive, Comic Sans"><font color="black">Cadastro de Endereço</h1>
        <form action="ControleUsuario" method="POST">
            
            <input type="hidden" value="<%=usuario.getId()%>" name="id" ></input>
            
            Logradouro:<br><input type="text" name="txtLogradouro"><br>
            CEP:<br> <input name="txtCep" type="text"><br/>
            Número:<br><input name="txtCPF" type="text"><br>
            Bairro:<br> <input name="txtBairro" type="text"><br/>
            Cidade:<br> <input name="txtBairro" type="text"><br/>
            Estado: <br><input type="email" name="txtEstado"><br/><br/><br/>            
            
            <input type="submit" value="Cadastrar" name="acao"><br/><br/>
 
            
          <a href="cadCli.html">Voltar</a><br/>  
          <a href="ControleProduto?id=<%=request.getParameter("IdProduto")%>&acao=finalizarCompra">Terminar</a><br/>  
          <!--<a href="principal.jsp">Página Principal</a><br/>-->
        </form>        
    </body>
</html>
