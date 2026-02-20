<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="utils.Conexao" %>

<%
    String id = request.getParameter("idPessoa");

    if (id == null || id.trim().isEmpty()) {
        out.println("ID não recebido.");
        return;
    }

    Connection con = null;
    PreparedStatement ps = null;

    try {
        con = Conexao.getConnection();

        String sql = "DELETE FROM pessoa WHERE idpessoa = ?";
        ps = con.prepareStatement(sql);

        ps.setInt(1, Integer.parseInt(id));

        int resultado = ps.executeUpdate();

        out.println("ID recebido: " + id + "<br>");
        out.println("Linhas afetadas: " + resultado);

    } catch (Exception e) {
        out.println("Erro: " + e.getMessage());
    } finally {
        if (ps != null) ps.close();
        if (con != null) con.close();
    }
%>

