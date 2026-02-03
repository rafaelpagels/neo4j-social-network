//Criando amizades
// Rafael e Sara
MATCH (rafael:User {user_id: 1}), (sara:User {user_id: 2})
MERGE (rafael)-[:FRIENDS_WITH]->(sara)
MERGE (sara)-[:FRIENDS_WITH]->(rafael);

// Rafael e Isaac
MATCH (rafael:User {user_id: 1}), (isaac:User {user_id: 3})
MERGE (rafael)-[:FRIENDS_WITH]->(isaac)
MERGE (isaac)-[:FRIENDS_WITH]->(rafael);

// Sara e Jessica
MATCH (sara:User {user_id: 2}), (jessica:User {user_id: 7})
MERGE (sara)-[:FRIENDS_WITH]->(jessica)
MERGE (jessica)-[:FRIENDS_WITH]->(sara);

// Luciano e Eliana
MATCH (luciano:User {user_id: 6}), (eliana:User {user_id: 8})
MERGE (luciano)-[:FRIENDS_WITH]->(eliana)
MERGE (eliana)-[:FRIENDS_WITH]->(luciano);

// Debora e Guerino
MATCH (debora:User {user_id: 9}), (guerino:User {user_id: 10})
MERGE (debora)-[:FRIENDS_WITH]->(guerino)
MERGE (guerino)-[:FRIENDS_WITH]->(debora);
