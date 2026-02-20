package utils;

import java.sql.*;

public class Conexao {

    protected Connection conectaraobanco;
    protected PreparedStatement acessarocrud;
    protected ResultSet preparaocomandopraserexecutado;

    protected final String URL =
        "jdbc:postgresql://localhost:5432/cadastros";
    protected final String USER = "postgres";
    protected final String SENHA = "12345678";

    protected void open() throws Exception {
        Class.forName("org.postgresql.Driver");
        conectaraobanco = DriverManager.getConnection(URL, USER, SENHA);
    }

    protected void fecharTudo() {
        try {
            if (preparaocomandopraserexecutado != null)
                preparaocomandopraserexecutado.close();
            if (acessarocrud != null)
                acessarocrud.close();
            if (conectaraobanco != null)
                conectaraobanco.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
     public static Connection getConnection() throws Exception {
        String URL = "jdbc:postgresql://localhost:5432/cadastros";
        String USER = "postgres";
        String SENHA = "12345678";

        Class.forName("org.postgresql.Driver");
        return DriverManager.getConnection(URL, USER, SENHA);
    }
}






