Projeto JSP CRUD de Pessoa
Descrição

Este projeto é um sistema CRUD (Create, Read, Update, Delete) para gerenciamento de pessoas, desenvolvido em JSP, Servlets e JDBC. Ele permite cadastrar, consultar, editar e excluir informações de pessoas em um banco de dados, proporcionando uma interface web simples e funcional.

Funcionalidades

Cadastrar Pessoa: Permite adicionar uma nova pessoa ao sistema com dados como nome, idade e e-mail.

Consultar Pessoa: Lista todas as pessoas cadastradas, com opção de pesquisa por nome.

Editar Pessoa: Permite atualizar informações de uma pessoa já cadastrada.

Excluir Pessoa: Permite remover uma pessoa do banco de dados.

Redirecionamento pós-cadastro: Após cadastrar uma pessoa, o usuário é redirecionado para a página de consulta.

Tecnologias Utilizadas

Java (Servlets e JSP)

HTML / CSS para a interface

JDBC para conexão com o banco de dados

Banco de Dados: MySQL ou outro de sua escolha

Estrutura de Pastas
/ProjetoCRUDPessoa
│
├── /web
│   ├── cadastrarPessoa.jsp
│   ├── editarPessoa.jsp
│   ├── consultarPessoa.jsp
│   └── index.jsp
│
├── /src
│   └── PessoaDAO.java
│   └── Pessoa.java
│
├── /lib
│   └── mysql-connector-java.jar
│
└── README.md
Configuração do Banco de Dados

Crie um banco de dados chamado crud_pessoa.

Crie a tabela pessoa:

CREATE TABLE pessoa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR(100) NOT NULL
);

Configure o PessoaDAO.java com as credenciais do seu banco de dados:

String url = "jdbc:mysql://localhost:3306/crud_pessoa";
String usuario = "root";
String senha = "sua_senha";
Como Executar

Importe o projeto em uma IDE compatível com Java EE (NetBeans ou Eclipse).

Configure um servidor Tomcat ou outro servlet container.

Compile o projeto e execute.

Acesse http://localhost:8080/ProjetoCRUDPessoa/ no navegador.

Observações

Certifique-se de que o conector JDBC do MySQL está na pasta /lib.

Depois de cadastrar uma pessoa, o sistema redireciona para a página de consulta, evitando problemas de duplicação de cadastro.

Este projeto serve como base para sistemas web simples e pode ser expandido com autenticação, validação de dados e interface mais avançada.
