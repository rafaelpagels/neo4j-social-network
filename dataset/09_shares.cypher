//Criando compartilhamentos
// Compartilhamentos da Sara
MATCH (sara:User {user_id: 2}), (p101:Post {post_id: 101})
MERGE (sara)-[:SHARED {at: date("2025-11-24")}]->(p101);

// Compartilhamentos do Luciano
MATCH (luciano:User {user_id: 6}), (p105:Post {post_id: 105})
MERGE (luciano)-[:SHARED {at: date("2024-09-16")}]->(p105);

// Compartilhamentos da Jessica
MATCH (jessica:User {user_id: 7}), (p102:Post {post_id: 102})
MERGE (jessica)-[:SHARED {at: date("2025-09-14")}]->(p102);
