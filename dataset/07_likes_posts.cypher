//Criando curtidas em posts
//Curtidas do Rafael
MATCH (rafael:User {user_id: 1}), (p102:Post {post_id: 102}), (p105:Post {post_id: 105})
MERGE (rafael)-[:LIKED {at: date("2025-09-14")}]->(p102)
MERGE (rafael)-[:LIKED {at: date("2024-09-15")}]->(p105);

//Curtidas da Sara
MATCH (sara:User {user_id: 2}), (p101:Post {post_id: 101}), (p104:Post {post_id: 104})
MERGE (sara)-[:LIKED {at: date("2025-11-23")}]->(p101)
MERGE (sara)-[:LIKED {at: date("2026-02-05")}]->(p104);

//Curtidas do Isaac
MATCH (isaac:User {user_id: 3}), (p105:Post {post_id: 105})
MERGE (isaac)-[:LIKED {at: date("2024-09-16")}]->(p105);

//Curtidas da Eliana
MATCH (eliana:User {user_id: 8}), (p103:Post {post_id: 103})
MERGE (eliana)-[:LIKED {at: date("2026-01-02")}]->(p103);
