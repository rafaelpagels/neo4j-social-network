//Criando posts
MATCH (rafael: User {user_id: 1})
CREATE (rafael)-[:CREATED {at: date("2025-11-22")}]->(:Post {
        post_id: 101,
        content: "My son was burned!",
        created_at: date("2025-11-22")
});

MATCH (sara: User {user_id: 2})
CREATE (sara)-[:CREATED {at: date("2025-09-13")}]->(:Post {
        post_id: 102,
        content: "My marriage",
        created_at: date("2025-09-13")
});

MATCH (isaac: User {user_id: 3})
CREATE (isaac)-[:CREATED {at: date("2026-01-01")}]->(:Post {
        post_id: 103,
        content: "Happy new year!",
        created_at: date("2026-01-01")
});

MATCH (helena: User {user_id: 4})
CREATE (helena)-[:CREATED {at: date("2026-02-04")}]->(:Post {
        post_id: 104,
        content: "My first job as an IT profissional",
        created_at: date("2026-02-04")
});

MATCH (rose: User {user_id: 5})
CREATE (rose)-[:CREATED {at: date("2024-09-14")}]->(:Post {
        post_id: 105,
        content: "I'm going to another country. Bye, guys!",
        created_at: date("2024-09-14")
});
