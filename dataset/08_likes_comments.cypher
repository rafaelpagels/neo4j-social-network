//Criando curtidas em comentários
//Rafael curte comentários
MATCH (rafael:User {user_id: 1}), (c999:Comment {comment_id: 999})
MERGE (rafael)-[:LIKED {at: date("2026-01-02")}]->(c999);

MATCH (rafael:User {user_id: 1}), (c996:Comment {comment_id: 996})
MERGE (rafael)-[:LIKED {at: date("2024-09-15")}]->(c996);


//Sara curte comentários
MATCH (sara:User {user_id: 2}), (c998:Comment {comment_id: 998})
MERGE (sara)-[:LIKED {at: date("2025-11-23")}]->(c998);


//Isaac curte comentários
MATCH (isaac:User {user_id: 3}), (c993:Comment {comment_id: 993})
MERGE (isaac)-[:LIKED {at: date("2025-11-24")}]->(c993);


//Helena curte comentários
MATCH (helena:User {user_id: 4}), (c992:Comment {comment_id: 992})
MERGE (helena)-[:LIKED {at: date("2026-02-06")}]->(c992);


//Jessica curte comentário da Jéssica
MATCH (jessica:User {user_id: 7}), (c991:Comment {comment_id: 991})
MERGE (jessica)-[:LIKED {at: date("2024-09-16")}]->(c991);


//Eliana curte comentário da Débora
MATCH (eliana:User {user_id: 8}), (c994:Comment {comment_id: 994})
MERGE (eliana)-[:LIKED {at: date("2026-02-05")}]->(c994);
