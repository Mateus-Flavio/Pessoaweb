<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="classes.Pessoa" %>

<%
    int idPessoa = Integer.parseInt(request.getParameter("idPessoa"));

    Pessoa dao = new Pessoa();
    Pessoa pessoa = dao.consultarPessoaIndividual(idPessoa);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Pessoa</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
</head>

<body>
<div class="container">
    <h3>Editar Pessoa</h3>

    <form action="salvarPessoa.jsp" method="post">

        <!-- ID real da pessoa -->
        <input type="hidden" name="idPessoa"
               value="<%= pessoa.getIdPessoa() %>">

        <div class="form-group">
            <label>Nome</label>
            <input type="text" name="nome"
                   class="form-control"
                   value="<%= pessoa.getNome() %>" required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email"
                   class="form-control"
                   value="<%= pessoa.getEmail() %>" required>
        </div>

        <button type="submit" class="btn btn-warning">
            Salvar Alterações
        </button>

        <a href="consultarpessoa.jsp" class="btn btn-default">
            Cancelar
        </a>

    </form>
</div>
</body>
</html>



