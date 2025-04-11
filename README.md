# Projeto de Banco de Dados para Oficina Mecânica

Este projeto implementa um banco de dados relacional para gerenciar as operações de uma oficina mecânica. A estrutura do banco foi derivada de um modelo conceitual ER e traduzida para um esquema lógico relacional. O objetivo do sistema é administrar clientes, seus veículos, mecânicos, equipes, serviços, peças e ordens de serviço.

## Modelo Entidade-Relacionamento e Esquema Lógico

O modelo ER foi utilizado para identificar as entidades e os relacionamentos no sistema. Com base nesse modelo, o esquema lógico inclui as seguintes tabelas:

- Clientes  
- Veículos  
- Mecânicos  
- Equipes  
- Serviços  
- Peças  
- Ordens de Serviço  
- Itens de Serviço (peças e serviços utilizados por ordem)  
- Equipes_Mecânicos (relacionamento muitos-para-muitos entre equipes e mecânicos)

## Script do Esquema SQL

O script `Create Table.sql` contém as instruções SQL para criar todas as tabelas do banco de dados, juntamente com as chaves primárias e estrangeiras.

## Dados de Exemplo

O arquivo `Insert Data.sql` inclui dados de exemplo para popular o banco de dados e testar consultas.

## Consultas SQL Avançadas

O arquivo `Queries.sql` contém consultas SQL avançadas que demonstram:

- Instruções SELECT  
- Filtros com cláusula WHERE  
- Expressões para atributos derivados  
- Ordenação com ORDER BY  
- Agrupamentos com GROUP BY e HAVING  
- JOINs entre múltiplas tabelas  

Cada consulta é acompanhada de um comentário explicando qual pergunta ela responde.

## Objetivo do Projeto

Este projeto foi desenvolvido como parte de um desafio de modelagem e implementação de banco de dados. O objetivo foi percorrer todas as etapas, desde a modelagem conceitual até o design lógico e execução de consultas.
