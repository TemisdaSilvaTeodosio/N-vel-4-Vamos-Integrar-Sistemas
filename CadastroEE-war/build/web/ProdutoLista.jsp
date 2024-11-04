<%-- 
    Document   : ProdutoLista
    Created on : 2 de nov. de 2024, 12:30:46
    Author     : Temis
--%>

<%@page import="java.util.List"%>
<%@page import="cadastroee.model.Produto" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>JSP Page</title>
        
    </head>
    <body class="container">
        <h1>Listagem de produto</h1>
    <a class="btn btn-primary m-2" href="ServletProdutoFC?acao=formIncluir">Novo Produto</a>
        <br>
        <table class="table table-striped">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Nome</th>
                    <th>Quantidade</th>
                    <th>Preço de Venda</th>
                    <th>Opções</th>
                </tr>
            </thead>
            <tbody>
                <%  List<Produto> lista = (List<Produto>) request.getAttribute("lista"); for (Produto p : lista) {  %>
                <tr>
                    <td><%=p.getIdProduto()%></td>
                    <td><%=p.getNome()%></td>
                    <td><%=p.getQuantidade()%></td>
                    <td><%=p.getPrecoVenda()%></td>
                    <td>
                        <a class="btn btn-primary btn-sm" href="ServletProdutoFC?acao=formAlterar&id=${produto.id}>">Alterar</a> 
                        <a class="btn btn-danger btn-sm" href="ServletProdutoFC?acao=excluir&id=<%=p.getIdProduto()%>">Excluir</a>
                    </td>
                </tr>
                <% }%>
            </tbody>
        </table>
    </body>
</html>
