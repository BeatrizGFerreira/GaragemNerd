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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>                      
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>Garagem NERD</title>
    </head>
    <body> 
        <div class="container">
            <h2><font style="font-family: cursive, Comic Sans">Entrar!</h2></font>
        <% 
            String msg = (String)request.getAttribute("msg");
            if (msg!=null){
            
        %>
        <font color="red"><%=msg%></font>
        <%}%>
        
        <form action="ControleAcesso" method="POST">
            <div class="form-group">
                <label for="text">Login:</label>
                <input type="text" class="form-control" id="login" placeholder="Digite seu Login" name="txtLogin">
            </div>
            <div class="form-group">
                <label for="text">Senha:</label>
                <input type="password" class="form-control" id="nome" placeholder="Digite sua senha" name="txtSenha">
            </div>
            
            <!-- Login: <input type="text" name="txtLogin"></br></font><br>
             Senha: <input type="password" name="txtSenha"></br></font>-->
            </br>
            <input type="submit" value="Entrar" name="acao" class="btn btn-success"></br></br></br>
           
            
            <p><font style="font-family: cursive, Comic Sans">Ou clique no link e cadastre-se para continuar :D</font></p>
            <a href="cadCli.html">Não possuo cadastro</a>
            
        </form>     
            
        </div>
    </body>
</html>
