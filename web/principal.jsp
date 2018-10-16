<%-- 
    Document   : principal
    Created on : 14/02/2018, 20:16:26
    Author     : Beatriz Gomes
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Produto"%>
<%@page import="modelo.Usuario"%>


            <%@include file="header.jsp"%>


            <%@include file="carousel.jsp" %>
            
            <div id="templatemo_main">

            <div id="sidebar" class="float_l">
                <%@include file="menulateral.jsp" %>
                </div>
                <%@include file="menulateral2.jsp" %>

            </div>
            
            <div id="content" class="float_r">
                  
               <h1>Prateleira Virtual</h1>
               <div class="product_box">
                 <%
                 // Recupera os produtos.
                List<Produto> produtos = (List<Produto>)
                request.getAttribute("produtos");
                 if(produtos == null) {
                 request.getRequestDispatcher("/ControleProduto?acao=listaProdutos").forward(request,
                response);
                 }
                %>
            
                <table border="0" cellpadding="5" align="center">
            <%
                int contadorColuna=1;
                for(Produto produto : produtos){
                //se � o primeiro produto, cria o inicio da linha
                if(contadorColuna == 1) {
                out.println("<tr>");
                }
            %>
            <td align="center" valign="bottom"> <img border="100" width="180" height="300" vspace="30" src="imagem/<%=produto.getImagem()%>"
            alt="Imagem do produto <%=produto.getImagem()%>" style="width:180px"/> <br/>
             <%=produto.getTitulo()%><br/>
             R$ <%=produto.getPreco()%><br/>             
             <a href="ControleCarrinho?acao=addProduto&idProduto=<%=produto.getId()%>">
                 <button class="btn btn-default">
                        <span class="glyphicon glyphicon-tag icone-botao"></span> 
                        <span>&nbsp; Comprar</span>                        
                 </button>
                 <a href="ControleProduto?id=<%=produto.getId() %>&acao=Consultar" class="detail">Detalhes</a>
                 <button>
                     <span class="glyphicon glyphicon-tag icone-botao"></span> 
                     <span>&nbsp; Detalhes</span>  
                 </button>
             <%
                //se � o �ltimo produto, exibir o t�rmino da linha
                if(contadorColuna == 3){
                out.println("</tr>");
                contadorColuna =0;
                }
                //atualiza o contador de colulas
                contadorColuna ++;

                }//fim do for
             %>
            </table>
            </div>
            </div>
          
            <%@include file="footer.jsp" %>

        </body>
</html>