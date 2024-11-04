<%-- 
    Document   : ProdutoDados
    Created on : 2 de nov. de 2024, 12:35:07
    Author     : Temis
--%>

<%@page import="cadastroee.model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body class="container">
        
        <h1>Dados do Produto</h1>
        <% Produto produto = (Produto) request.getAttribute("produto"); String acao = (produto == null) ? "incluir" : "alterar"; %>
        
        
        <form action="ServletProdutoFC" method="post">
        
        <input type="hidden" name="acao" value="<%= acao %>">
        <input type="hidden" name="id" value="${produto.id}">
        

        <div class="mb-3">
            <label for="nome" class="form-label">Nome:</label>
        <br/>
        <input type="text" class="form-control" id="nome" name="nome" value="${produto != null ? produto.nome : ''}" required>
        </div>
       
        <div class="mb-3">
            <label for="quantidade" class="form-label">Quantidade:</label>
        <br/>
        <input type="number" class="form-control" id="quantidade" name="quantidade" value="${produto != null ? produto.quantidade : ''}" required min="0">
        </div>
      
        <div class="mb-3">
            <label for="preco" form="form-label">Preço de Venda (R$):</label>
        <br/>
        <input type="number" class="form-control" id="preco" name="preco" value="${produto != null ? produto.precoVenda : ''}" required step="0.01" min="0">
        </div>
        
        <br>
         <button type="submit" class="btn btn-primary">
            <%= (acao.equals("incluir")) ? "Incluir Produto" : "Alterar Produto" %>
        </button>

    </form>
        
    </body>
</html>
