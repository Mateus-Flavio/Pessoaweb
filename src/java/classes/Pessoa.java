package classes;

import utils.Conexao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Pessoa extends Conexao {

    private int idPessoa;
    private String nome;
    private String email;

    // INSERIR
    public boolean incluirPessoa() {
        try {
            open();

            acessarocrud = conectaraobanco.prepareStatement(
                "INSERT INTO pessoa (nome, email) VALUES (?, ?)"
            );
            acessarocrud.setString(1, nome);
            acessarocrud.setString(2, email);
            acessarocrud.executeUpdate();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            fecharTudo();
        }
    }
    
      
    public void alterarPessoa() {

    try {
        
        open();

        acessarocrud = conectaraobanco.prepareStatement(
            "UPDATE pessoa SET nome = ?, email = ? WHERE idpessoa = ?"
        );
        
        acessarocrud.setString(1, nome);
        acessarocrud.setString(2, email);
        acessarocrud.setInt(3,idPessoa);

        /*int linhas = acessarocrud.executeUpdate();
        System.out.println("Linhas alteradas: " + linhas);*/
        acessarocrud.executeUpdate();
        //return true;

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            fecharTudo();
        }
    }

    // LISTAR
    public List<Pessoa> listarPessoa() {
        List<Pessoa> lista = new ArrayList<>();

        try {
            open();
            acessarocrud = conectaraobanco.prepareStatement(
                "SELECT * FROM pessoa"
            );
            preparaocomandopraserexecutado = acessarocrud.executeQuery();

            while (preparaocomandopraserexecutado.next()) {
                Pessoa p = new Pessoa();
                p.idPessoa = preparaocomandopraserexecutado.getInt("idpessoa");
                p.nome = preparaocomandopraserexecutado.getString("nome");
                p.email = preparaocomandopraserexecutado.getString("email");
                lista.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            fecharTudo();
        }

        return lista;
    }

    // BUSCAR POR ID
    public Pessoa consultarPessoaIndividual(int id) {
        Pessoa p = null;

        try {
            open();
            acessarocrud = conectaraobanco.prepareStatement(
                "SELECT * FROM pessoa WHERE idpessoa = ?"
            );
            acessarocrud.setInt(1, id);
            ResultSet rs = acessarocrud.executeQuery();

            if (rs.next()) {
                p = new Pessoa();
                p.idPessoa = rs.getInt("idpessoa");
                p.nome = rs.getString("nome");
                p.email = rs.getString("email");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            fecharTudo();
        }

        return p;
    }

    // EXCLUIR
    public void excluirPessoa(int id) {
        try {
            open();
            acessarocrud = conectaraobanco.prepareStatement(
                "DELETE FROM pessoa WHERE idpessoa = ?"
            );
            acessarocrud.setInt(1, id);
            acessarocrud.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            fecharTudo();
        }
    }

    // GETTERS E SETTERS
    public int getIdPessoa() { return idPessoa; }
    public void setIdPessoa(int idPessoa) { this.idPessoa = idPessoa; }
    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
}

