# biblioteca_Lab

# 📚 Sistema Biblioteca - Laboratório de Banco de Dados

## 📌 Descrição Geral

Projeto acadêmico desenvolvido na disciplina de Laboratório de Banco de Dados, com implementação de um sistema CRUD completo utilizando:

- Banco de Dados Relacional (MySQL)
- Back-end em Java (JDBC)
- Interface Gráfica em Java Swing

---

## 🧱 Estrutura do Projeto

O projeto está organizado em três camadas principais:

---

## 🗄️ Banco de Dados

- Modelagem conceitual (DER)
- Modelagem lógica (relacional)
- Modelo físico (SQL)

### Contém:
- Script SQL (schema.sql)
- Tabelas com PK e FK
- Relacionamentos 1:N e N:N
- Views e regras de negócio (CHECK, UNIQUE, NOT NULL)

---

## ⚙️ Back-end (Java - JDBC)

Responsável pela comunicação com o banco de dados.

### Funcionalidades:
- Conexão com MySQL via JDBC
- Operações CRUD utilizando PreparedStatement:
  - Create (Inserir)
  - Read (Listar)
  - Update (Atualizar)
  - Delete (Excluir)
- Organização em camadas:
  - model
  - dao/repository
  - service

---

## 🖥️ Front-end (Java Swing)

Interface gráfica do sistema.

### Funcionalidades:
- Telas de cadastro
- Listagem de registros
- Edição de dados
- Exclusão de registros
- Validação básica de campos

---

## 📊 Modelagem

O sistema possui:

- Modelo Conceitual (DER)
- Modelo Lógico (Relacional)
- Diagrama de Classes

---

## 🔗 Relacionamentos do Sistema

- 1:N entre Autor e Livro
- 1:N entre Gênero e Livro
- 1:N entre Usuário e Empréstimo
- N:N entre Empréstimo e Livro (via tabela associativa)

---

## 📁 Estrutura de Pastas (recomendado)    
biblioteca/
│
├── db/
│ └── schema.sql
│
├── docs/
│ ├── der.png
│ ├── modelo-logico.png
│ └── diagrama-classes.png
│
├── src/
│ └── (código Java - JDBC + Swing)
│
└── README.md


---

## 📦 Entregáveis

- Código-fonte completo (Java)
- Script do banco de dados (schema.sql)
- Modelo conceitual (DER)
- Modelo lógico (relacional)
- Modelo físico (SQL)
- Diagrama de classes
- Vídeo demonstrativo do sistema

---

## 🎯 Requisitos Atendidos

- [x] 4 a 6 tabelas no banco
- [x] Relacionamentos com PK/FK
- [x] Relacionamento N:N com tabela associativa
- [x] Regras de negócio (CHECK, NOT NULL, UNIQUE)
- [x] CRUD completo em Java (JDBC + Swing)

---

## 👩‍💻 Disciplina

Laboratório de Banco de Dados  
Universidade Católica de Brasília
