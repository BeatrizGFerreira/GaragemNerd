<%-- 
    Document   : carrinho
    Created on : 20/03/2018, 08:31:40
    Author     : 11151100178, Beatriz
    
--%>

<%@page import="modelo.Produto"%>
<%@page import="modelo.ItemDeCompra"%>
<%@page import="modelo.CarrinhoDeCompra"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
    <%@include file="header.jsp"%>
    
        <div id="templatemo_main">

            <div id="sidebar" class="float_l">
                <%@include file="menulateral.jsp" %>
                </div>
                <%@include file="menulateral2.jsp" %>

            </div>
                <div id="content" class="float_r">
                       <h1>Shopping Cart</h1>
                       <table width="680px" cellspacing="0" cellpadding="5">
                           <tr bgcolor="#ddd">
                               <th width="220" align="left">Imagem </th> 
                               <th width="180" align="left">Título </th>
                               <th width="180" align="left">Descrição </th>
                               <%--<th width="100" align="center">Quantity </th> --%>
                               <th width="60" align="right">Preço </th> 
                               
                               <th width="90"> </th>
                           </tr>
               <%
                   //recupera os produtos do carrinho da sessao
                   CarrinhoDeCompra carrinho = (CarrinhoDeCompra) session.getAttribute("carrinho");
                   for(ItemDeCompra item : carrinho.getItens()){
               %>
               <tr>
                   <td  valign="bottom"><img src="imagem/<%=item.getProduto().getImagem()%>"
                   alt="Imagem do produto <%=item.getProduto().getImagem()%>" style="width:100px"/></td>
                   <td><%=item.getProduto().getTitulo()%></td> 
                   <td><%=item.getProduto().getDescricao()%></td>
                   <td align="right"><%=item.getProduto().getPreco() %></td>
                   <td align="center"> <a href="ControleCarrinho?acao=removeProduto&idProduto=<%=item.getProduto().getId()%>">Remove</a> </td>
                   <%--<td><%=item.getTotal()%></td>
                   <td><a href="ControleCarrinho?acao=removeProduto&idProduto=<%=item.getProduto().getId()%>">X</td>--%>







                   <%--<td><a href="ControleCarrinho?acao=addProduto&idProduto=<%=item.getProduto().getId()%>">+</a></td>--%>
               </tr>
               <%
                   }
               %>
               
               
               <tr>
                   <td colspan="3" align="right"  height="30px"><a href="principal.jsp"><strong>Continue Comprando!</strong></a></a>&nbsp;&nbsp; <br/>
                       <a href="ControleCarrinho?acao=cancelaCompra" rel="nofollow"><strong>Cancelar Compra</strong></a><br/>
                       <%--<a href="ControleCarrinho?acao=finalizarcompra" rel="nofollow"><strong>Finalizar Compra</strong></a>&nbsp;&nbsp;</td>--%>
                       <a href="finalizar.jsp" rel="nofollow"><strong>Finalizar Compra</strong></a>&nbsp;&nbsp;</td>
                    <td align="right" style="background:#ddd; font-weight:bold">Total:</td>
                    <td align="right" style="background:#ddd; font-weight:bold"> <%=carrinho.calculaTotal() %> </td>                    
                    <td style="background:#ddd; font-weight:bold"> </td>
		</tr>
               </table>
              <%-- <strong>Valor Total: <%=carrinho.calculaTotal() %></strong><br/><br/>--%>
               
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
            
            
            
            
     <%--   
        <tr>
           <td bgcolor="#000088"><font color="#FBEFEF">Excluir</font></td>
           <td bgcolor="#000088"><font color="white">ID</font></td>
           <td bgcolor="#000088"><font color="white">Título</font></td>
           <td bgcolor="#000088"><font color="white">Descricao</font></td>           
           <td bgcolor="#000088"><font color="white">Preço</font></td>
           <td bgcolor="#000088"><font color="white">Total</font></td>
           <td bgcolor="#000088"><font color="white">Imagem</font></td>
        </tr>
        <%
            //recupera os produtos do carrinho da sessao
            CarrinhoDeCompra carrinho = (CarrinhoDeCompra) session.getAttribute("carrinho");
            for(ItemDeCompra item : carrinho.getItens()){
        %>
        <tr>
            <td><a href="ControleCarrinho?acao=removeProduto&idProduto=<%=item.getProduto().getId()%>">X</td>
            <td><%=item.getProduto().getId()%></td>
            <td><%=item.getProduto().getTitulo()%></td>     
            <td><%=item.getProduto().getDescricao()%></td>             
            <td><%=item.getProduto().getPreco() %></td>
            <td><%=item.getTotal()%></td>
            <td align="center" valign="bottom"><img src="imagem/<%=item.getProduto().getImagem()%>"
            alt="Imagem do produto <%=item.getProduto().getImagem()%>" style="width:100px"/></td>
            
            <td><a href="ControleCarrinho?acao=addProduto&idProduto=<%=item.getProduto().getId()%>">+</a></td>
        </tr>
        <%
            }
        %>
        </table>
        
        <strong>Valor Total: <%=carrinho.calculaTotal() %></strong><br/><br/>
        <a href="prateleira.jsp">Continue Comprando!</a><br/>
        <a href="ControleCarrinho?acao=cancelaCompra">Cancelar Compra</a><br/><br/>        
        <a href="ControleCarrinho?acao=finalizarcompra">Finalizar Compra!</a>
    </body>
</html> --%>