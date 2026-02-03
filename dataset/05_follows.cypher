// Criando seguidores
// Rafael segue Sara, Isaac, Helena
MATCH (rafael:User {user_id: 1})
MATCH (sara:User {user_id: 2})
MATCH (isaac:User {user_id: 3})
MATCH (helena:User {user_id: 4})
MERGE (rafael)-[:FOLLOWS]->(sara)
MERGE (rafael)-[:FOLLOWS]->(isaac)
MERGE (rafael)-[:FOLLOWS]->(helena);

// Sara segue Rose e Eliana
MATCH (sara:User {user_id: 2})
MATCH (rose:User {user_id: 5})
MATCH (eliana:User {user_id: 8})
MERGE (sara)-[:FOLLOWS]->(rose)
MERGE (sara)-[:FOLLOWS]->(eliana);

// Isaac segue Rafael e Luciano
MATCH (isaac:User {user_id: 3})
MATCH (rafael:User {user_id: 1})
MATCH (luciano:User {user_id: 6})
MERGE (isaac)-[:FOLLOWS]->(rafael)
MERGE (isaac)-[:FOLLOWS]->(luciano);
