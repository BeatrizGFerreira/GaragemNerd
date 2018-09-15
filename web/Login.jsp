<%-- 
    Document   : Login
    Created on : 06/09/2018, 08:56:31
    Author     : alunocmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
    </head>
    <body> 
        <div>
            <h1><font style="font-family: cursive, Comic Sans">Garagem NERD</font><br> Entrar!</h1></font>
        <% 
            String msg = (String)request.getAttribute("msg");
            if (msg!=null){
            
        %>
        <font color="red"><%=msg%></font>
        <%}%>
        
        <form action="ControleAcesso" method="POST">
             Login ou e-mail: <input type="text" name="txtLogin"></br></font><br>
             Senha: <input type="password" name="txtSenha"></br></font>
            </br>
            <input type="submit" value="Entrar" name="acao"></br></br></br>
            
            <p><font style="font-family: cursive, Comic Sans">Ou clique no link e cadastre-se para continuar :D</font></p>
            <a href="cadCli.html">Não possuo cadastro</a>
            
        </form>     
            
        </div>
    </body>
</html>
