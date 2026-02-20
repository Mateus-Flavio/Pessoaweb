<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="classes.Pessoa" %>

<%
    try {
        String vnomepessoa = request.getParameter("nomepessoa");
        String vemail = request.getParameter("email");

        Pessoa pes = new Pessoa();
        pes.setNome(vnomepessoa);
        pes.setEmail(vemail);

        if (pes.incluirPessoa()) {
            response.sendRedirect(
                "cadastrarpessoa.jsp?pmensagem=Pessoa cadastrada com sucesso"
            );
        } else {
            out.println("<h2 style='color:red'>Erro ao cadastrar pessoa</h2>");
        }

    } catch (Exception e) {
        out.println("<pre style='color:red'>");
        e.printStackTrace(new java.io.PrintWriter(out));
        out.println("</pre>");
    }
%>

