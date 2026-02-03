# 📊 Rede Social com Neo4j – Sistema de Recomendações

Este repositório contém um **protótipo de banco de dados orientado a grafos**, desenvolvido com **Neo4j e Cypher**, que simula uma rede social com usuários, posts, comentários, curtidas, amizades, seguidores e grupos.

O foco do projeto é demonstrar como **bancos de dados em grafos** podem ser utilizados para gerar **recomendações e insights sociais** a partir das conexões entre usuários e conteúdos.

---

## 🧩 Contexto do Problema

Uma startup de análise de mídias sociais deseja criar um novo produto capaz de oferecer **insights sobre engajamento**, **conexões entre usuários** e **popularidade de conteúdo** dentro de uma plataforma social.

A solução precisa permitir consultas complexas, como:
- Recomendar conteúdos com base em interações sociais
- Identificar posts populares
- Sugerir novas conexões entre usuários
- Analisar engajamento em posts, comentários e grupos

---

## 🎯 Desafio

Utilizando os conhecimentos adquiridos ao longo do módulo, o desafio consiste em:

- Projetar o **modelo de dados** de uma rede social
- Construir um **dataset consistente** em Neo4j
- Criar **consultas Cypher** capazes de responder perguntas reais de negócio

Este projeto representa um **protótipo funcional**, com foco na modelagem correta dos relacionamentos e na exploração do potencial dos grafos.

---

## 🛠️ Tecnologias Utilizadas

- **Neo4j**
- **Cypher Query Language**
- Modelagem de dados orientada a grafos

---

## 🗂️ Estrutura do Dataset

O banco de dados foi construído seguindo as etapas abaixo:

1. Criação de **Constraints (UNIQUE)**  
2. Criação de **Usuários**
3. Criação de **Posts**
4. Criação de **Comentários em posts**
5. Criação de **Relacionamentos de seguidores (FOLLOWS)**
6. Criação de **Relacionamentos de amizade (FRIENDS_WITH – bidirecional)**
7. Criação de **Curtidas em posts**
8. Criação de **Curtidas em comentários**
9. Criação de **Compartilhamentos**
10. Criação de **Grupos**
11. Criação de **Membros dos grupos**
12. Criação de **Postagens dentro de grupos**

---

## 🧠 Modelo Conceitual

### Principais Nós
- `User`
- `Post`
- `Comment`
- `Group`

### Principais Relacionamentos
- `(:User)-[:FOLLOWS]->(:User)`
- `(:User)-[:FRIENDS_WITH]->(:User)`
- `(:User)-[:CREATED]->(:Post | :Comment)`
- `(:User)-[:LIKED]->(:Post | :Comment)`
- `(:User)-[:SHARED]->(:Post)`
- `(:Comment)-[:COMMENTED_ON]->(:Post)`
- `(:User)-[:MEMBER_OF]->(:Group)`
- `(:Post)-[:POSTED_IN]->(:Group)`

---

## 🔍 Consultas de Recomendação

### 🔹 1. Posts curtidos por usuários que Rafael segue, mas que ele ainda não curtiu
*(Descartando os próprios posts do usuário)*

```cypher
MATCH (rafael:User {user_id: 1})
MATCH (rafael)-[:FRIENDS_WITH|FOLLOWS]->(user)
MATCH (user)-[:LIKED]->(p:Post)
WHERE NOT (rafael)-[:CREATED]->(p)
  AND NOT (rafael)-[:LIKED]-(p)
RETURN DISTINCT p.post_id AS postRecommended, p.content;
```

### 🔹2. Pessoas que Rafael talvez conheça
```cypher
MATCH (rafael:User {user_id: 1})-[:FRIENDS_WITH]->(f1)-[:FRIENDS_WITH]->(f2)
WHERE f2 <> rafael
  AND NOT (rafael)-[:FRIENDS_WITH]->(f2)
RETURN f2.user_id, f2.user_name, COUNT(*) AS mutualFriends
ORDER BY mutualFriends DESC;
```

### 🔹3. Posts mais populares da rede
```cypher
MATCH (:User)-[:LIKED]->(p:Post)
RETURN p.post_id, p.content, COUNT(*) AS totalLikes
ORDER BY totalLikes DESC
LIMIT 5;
```

### 📈 Objetivos Alcançados

- Modelagem de uma rede social usando grafos
- Criação de um dataset consistente e relacional
- Implementação de recomendações baseadas em conexões sociais
- Exploração prática do Neo4j e da linguagem Cypher

### 📌 Observações Finais

Este projeto foi desenvolvido com fins educacionais e demonstra como bancos de dados em grafos são especialmente eficientes para cenários envolvendo relacionamentos complexos e recomendações sociais.
