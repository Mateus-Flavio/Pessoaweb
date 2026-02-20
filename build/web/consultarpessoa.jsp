<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="classes.Pessoa" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Consultar Pessoas</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
</head>

<body>
<div class="container">
    <h3 class="text-center">Lista de Pessoas</h3>

    <%
        Pessoa p = new Pessoa();
        List<Pessoa> lista = p.listarPessoa();
    %>

    <table class="table table-bordered table-striped">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Email</th>
            <th>Ações</th>
        </tr>

        <%
            for (Pessoa pessoa : lista) {
        %>
        <tr>
            <td><%= pessoa.getIdPessoa() %></td>
            <td><%= pessoa.getNome() %></td>
            <td><%= pessoa.getEmail() %></td>
            <td>
                <!-- EDITAR -->
                <a href="editarpessoa.jsp?idPessoa=<%= pessoa.getIdPessoa() %>"
                   class="btn btn-warning btn-sm">
                    Editar
                </a>

                <!-- EXCLUIR -->
                <a href="excluirPessoa.jsp?idPessoa=<%= pessoa.getIdPessoa() %>"
                   class="btn btn-danger btn-sm"
                   onclick="return confirm('Deseja excluir esta pessoa?')">
                    Excluir
                </a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>



