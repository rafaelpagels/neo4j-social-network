//Postagem no grupo
MATCH (rafael:User {user_id: 1})
MATCH (group:Group {group_id: 1})
MERGE (p:Post {
    post_id: 201,
    content: "Great discussion today about data engineering!",
    created_at: date("2026-02-10")
})
MERGE (rafael)-[:CREATED {at: date("2026-02-10")}]->(p)
MERGE (p)-[:POSTED_IN]->(group);

MATCH (rafael:User {user_id: 1})
MATCH (group:Group {group_id: 1})
MERGE (p:Post {
    post_id: 202,
    content: "How to use Neo4j correctly!",
    created_at: date("2026-02-11")
})
MERGE (rafael)-[:CREATED {at: date("2026-02-11")}]->(p)
MERGE (p)-[:POSTED_IN]->(group);
