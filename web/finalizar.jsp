<%-- 
    Document   : finalizar
    Created on : 08/09/2018, 20:37:12
    Author     : beatr
--%>

<%@page import="modelo.Endereco"%>
<%@page import="modelo.ItemDeCompra"%>
<%@page import="modelo.CarrinhoDeCompra"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
    </head>
    <body>
        <h1>Finalizar!</h1>
        <table border="1" cellpadding="2" >
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
        <!--<a href="prateleira.jsp">Continue Comprando!</a><br/>-->
        <a href="ControleCarrinho?acao=cancelaCompra">Cancelar Compra</a><br/><br/>        
        <!--<a href="Login.jsp">Finalizar Compra!</a>-->
        
        <!--<input class="ui-btn ui-btn-b" type="submit" name="acao" value="finalizarCompra"><br/><br/>
        <button type="submit" name="acao" value="finalizarCompra">Confirmar</button>-->
        
         <a href="ControleProduto?acao=finalizarCompra">
                 <button class="btn btn-default">
                        <span class="icone-botao"></span> 
                        <span>&nbsp; Confirmar</span>
                 </button>
    </body>
</html>
