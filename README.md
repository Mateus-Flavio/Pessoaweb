📌 CRUD de Pessoa - JSP + Servlet + PostgreSQL
📖 Sobre o Projeto

Este projeto é um sistema web simples de CRUD (Create, Read, Update, Delete) desenvolvido com Java (JSP e Servlets) utilizando JDBC para conexão com o banco de dados PostgreSQL.

O sistema permite cadastrar, listar, editar e excluir pessoas através de uma interface web.

Projeto desenvolvido para fins de aprendizado em desenvolvimento web com Java.

🚀 Funcionalidades

✅ Cadastrar pessoa
✅ Listar pessoas cadastradas
✅ Editar dados da pessoa
✅ Excluir pessoa
✅ Redirecionamento após cadastro
✅ Integração com PostgreSQL via JDBC

🛠️ Tecnologias Utilizadas

Java

JSP

Servlets

JDBC

PostgreSQL

HTML

Bootstrap

📂 Estrutura do Projeto
ProjetoCRUDPessoa/
│
├── web/
│   ├── index.jsp
│   ├── cadastrarPessoa.jsp
│   ├── consultarPessoa.jsp
│   ├── editarPessoa.jsp
│
├── src/
│   ├── classes/
│   │   └── Pessoa.java
│   │
│   └── dao/
│       └── PessoaDAO.java
│
├── lib/
│   └── postgresql-<versao>.jar
│
└── README.md
🗄️ Configuração do Banco de Dados (PostgreSQL)
1️⃣ Criar o banco
CREATE DATABASE crud_pessoa;
2️⃣ Criar a tabela
CREATE TABLE pessoa (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR(100) NOT NULL
);
🔌 Configuração da Conexão JDBC

No arquivo PessoaDAO.java:

String url = "jdbc:postgresql://localhost:5432/crud_pessoa";
String usuario = "seu_usuario";
String senha = "sua_senha";

⚠️ Não esqueça de adicionar o driver do PostgreSQL na pasta /lib ou nas dependências do projeto.

▶️ Como Executar

Importar o projeto na IDE (NetBeans ou Eclipse).

Configurar o servidor Apache Tomcat.

Adicionar o driver JDBC do PostgreSQL.

Iniciar o servidor.

Acessar no navegador:

http://localhost:8080/ProjetoCRUDPessoa/
📚 Objetivo Educacional

Este projeto tem como objetivo praticar:

Estrutura MVC básica

Conexão com banco de dados

Manipulação de dados com JDBC

Desenvolvimento web com JSP e Servlets

📌 Melhorias Futuras

Validação de formulário

Implementação de autenticação

Paginação na listagem

Melhorias no design

Deploy em servidor online
