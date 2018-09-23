<%--
    Document   : Lista
    Created on : 14/02/2018, 19:57:39
    Author     : Beatriz
--%>

<%@page import="modelo.Endereco"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Garagem NERD</title>
       <!-- <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>                      
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
    </head>
    <body>
        <div class="container">
        <h2 style="text-align:center">Lista de Clientes</h2>
        <%
            //recuperar lista do request
            List<Usuario> listaUsuario = (List<Usuario>) request.getAttribute("lista");
           
        %>
        
        <table class="table table-striped">
            <thead>
              <tr>
                <th>Nome:</th>
                <th>RG:</th>
                <th>CPF:</th>
                <th>Data de Nascimento:</th>
                <th>Telefone:</th>
                <th>E-mail:</th>
                <th>Login:</th>
                <th>Senha:</th>
              </tr>
            </thead>
            <tbody>
        
       <!-- <table data-role="table" border="1" id="table-custom-2" data-mode="columntoggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b">
        <tr>
                <td>Nome: </td>
                <td>RG: </td>
                <td>CPF: </td>
                <td>Data de nascimento: </td>
                <td>Telefone:</td>
                <td>Email:</td>
                <td>Login:</td>
                <td>Senha:</td>                   
                
                <td>    </td>
                
                
            </tr>-->
            
            <% 
                for(Usuario usuario: listaUsuario ){
                       
            %>
      
            <tr>
                <td> <%= usuario.getNome() %>   </td> 
                <td> <%= usuario.getRg() %>  </td>
                <td> <%= usuario.getCpf()%>  </td>
                <td> <%= usuario.getDtnasc() %>  </td>
                <td> <%= usuario.getTelefone() %>  </td>
                <td> <%= usuario.getEmail() %>  </td>
                <td> <%= usuario.getLogin()%>  </td>
                <td> <%= usuario.getSenha()%>  </td>
                
                <td><a href="ControleUsuario?id=<%=usuario.getId()%>&acao=Consultar"> Editar</a></td>
                <td><a href="ControleUsuario?id=<%=usuario.getId() %>&acao=Excluir"> Excluir</a></td>                
                <!--<input class="ui-btn ui-btn-b" type="submit" name="acao" value="Excluir"><br/><br/>-->
                
                
            </tr>

            <% 
               }           
            %>
         
        </table>        
            <br><br/>
            <a href="admin/main.jsp">Voltar</font></a>
        </div>
    </body>
</html>
