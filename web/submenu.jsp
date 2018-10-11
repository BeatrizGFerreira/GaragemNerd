<%-- 
    Document   : submenu
    Created on : 05/10/2018, 09:12:06
    Author     : alunocmc
--%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>
      <div id="templatemo_menu">
    	<div id="top_nav" class="ddsmoothmenu">
             <%
                //recupera o usuario da sessao
                Usuario usuario = (Usuario)session.getAttribute("usuarioAutenticado");
                //Usuario usuario = new Usuario();


                if(usuario !=null){
            %>
       
               <div id="templatemo_menu">
                <div id="top_nav" class="ddsmoothmenu">
                <h1 style="font-family: cursive, Comic Sans"><font color="black">Bem vindo, <%=usuario.getNome()%>!</h1>
                <%}%>
                <%
                    Usuario consulta = new Usuario();
                %>
            <ul>
                <li><a href="ControleUsuario?id=<%=usuario.getId()%>&acao=Consultar">Meus Dados</a></li></br>
                <li><a href="prateleira.jsp">Prateleira</a></li>
                <li><a href="carrinho.jsp">Meu Carrinho</a></li>
                <li><a href="ControleAcesso?acao=Sair">Logout</a></li>
            </ul>
            <br style="clear: left" />
            </div> <!-- end of ddsmoothmenu -->

        	<div id="templatemo_search">
                <form action="#" method="get">
                  <input type="text" value="Search" name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
                  <input type="submit" name="Search" value=" Search " alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
                </form>
            </div>
            <div class="cleaner"></div>
    	</div>
        </div> <!-- END of templatemo_menu -->
       </div> 
    </body>
</html>
