<%-- 
    Document   : cadProduto
    Created on : 13/10/2018, 15:50:09
    Author     : beatr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<link rel="stylesheet" href="../estilo.css"  type="text/css" media="screen"/>-->
        <title>Garagem NERD</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>                      
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        
            <div class="container">
           <h2>Cadastro de Produtos</h2>
            <form action="../ControleProduto" method="POST">

                <div class="form-group">
                    <label for="text">Título:</label>
                    <input type="text" class="form-control" id="titulo" placeholder="Digite o título" name="txtTitulo">
                </div>
                <div class="form-group">
                    <label for="text">Descrição:</label>
                    <input type="text" class="form-control" id="descricao" placeholder="Digite uma descrição" name="txtDescricao">
                </div>
                <div class="form-group">
                    <label for="text">Preço:</label>
                    <input type="text" class="form-control" id="preco" placeholder="Digite o preço" name="txtPreco">
                </div>
                <div class="form-group">
                    <label for="text">Imagem:</label><br>
                    <input type="file"  id="imagem" name="txtImagem">
                </div>

                <!--Título: <input name="txtTitulo" type="text"><br/>
                Descricao: <input name="txtDescricao" type="text"><br/>            
                Preço: <input type="text" name="txtPreco"><br/><br/>
                Imagem: <input type="file" name="txtImagem"><br/><br/>-->

                <input type="submit" value="Cadastrar" name="acao" class="btn btn-success">
                <!--<input type="submit" value="Cadastrar" name="acao" >
                <input type="submit" value="Listar" name="acao">--><br><br>
                <a href="main.jsp">Página Principal</a>
            </form>
            </div>
    </body>
</html>