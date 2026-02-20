<%@ page import="classes.Pessoa" %>

<%
    String idParam = request.getParameter("idPessoa");
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");

    Pessoa p = new Pessoa();
    p.setNome(nome);
    p.setEmail(email);

    if (idParam == null || idParam.isEmpty() || idParam.equals("0")) {
        // ? CADASTRAR
        p.incluirPessoa();
    } else {
        // ? EDITAR
        p.setIdPessoa(Integer.parseInt(idParam));
        p.alterarPessoa();
    }

    // ? SEMPRE volta para consulta
    response.sendRedirect("consultarpessoa.jsp");
%>

