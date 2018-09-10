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
        <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
    </head>
    <body>
        <h1 style="text-align:center; font-family: cursive, Comic Sans">Lista de Usuário</h1>
        <%
            //recuperar lista do request
            List<Usuario> listaUsuario = (List<Usuario>) request.getAttribute("lista");
           
        %>
        
        <table data-role="table" border="1" id="table-custom-2" data-mode="columntoggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b">
        <tr>
                <td>Nome: </td>
                <td>RG: </td>
                <td>CPF: </td>
                <td>Data de nascimento: </td>
                <td>Telefone:</td>
                <td>Email:</td>
                <td>Login:</td>
                <td>Senha:</td>   
                <td>Logradouro:</td>
                <td>CEP:</td>
                <td>Número:</td>
                <td>Bairro:</td>
                <td>Cidade:</td>
                <td>Estado:</td>
                
                <td>    </td>
                
                
            </tr>
            
            <% 
                for(Usuario usuario: listaUsuario ){
                       
            %>
      
            <tr class="ui-bar-d">
                <td> <%= usuario.getNome() %>   </td> 
                <td> <%= usuario.getRg() %>  </td>
                <td> <%= usuario.getCpf()%>  </td>
                <td> <%= usuario.getDtnasc() %>  </td>
                <td> <%= usuario.getTelefone() %>  </td>
                <td> <%= usuario.getEmail() %>  </td>
                <td> <%= usuario.getLogin()%>  </td>
                <td> <%= usuario.getSenha()%>  </td>
                
                <td> <%= usuario.getEndereco().getLogradouro()%>  </td>
                <td> <%= usuario.getEndereco().getCep()%>  </td>
                <td> <%= usuario.getEndereco().getNumero()%>  </td>
                <td> <%= usuario.getEndereco().getBairro()%>  </td>
                <td> <%= usuario.getEndereco().getCidade()%>  </td>
                <td> <%= usuario.getEndereco().getEstado()%>  </td>
     
   
                        
                <%-- <td><a href="ControlePessoa?id=<%=usuario.getId() %>&acao=Excluir"> Excluir</a></td> --%>
                <td><a href="ControleUsuario?id=<%=usuario.getId()%>&acao=Consultar"> Editar</a></td>
                <td></td>
                
            </tr>

            <% 
               }           
            %>
         
        </table>        
            <br><br/>
            <a href="admin/main.jsp">Voltar</font></a>
    </body>
</html>
