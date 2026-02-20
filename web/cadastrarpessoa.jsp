<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Pessoa</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
</head>

<body>
<div class="container">
    <h3>Cadastrar Pessoa</h3>

    <form action="salvarPessoa.jsp" method="post">

        <!-- ID = 0 → indica cadastro -->
        <input type="hidden" name="idPessoa" value="0">

        <div class="form-group">
            <label>Nome</label>
            <input type="text" name="nome" class="form-control" required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-success">
            Salvar
        </button>

        <a href="consultarpessoa.jsp" class="btn btn-default">
            Consultar
        </a>

    </form>
</div>
</body>
</html>


