//Recomenda posts de usuários que o Rafael segue ou é amigo curtiram

MATCH (rafael:User {user_id: 1})
MATCH (rafael)-[:FRIENDS_WITH|FOLLOWS]->(user)
MATCH (user)-[:LIKED]->(p:Post)
WHERE NOT (rafael)-[:CREATED]->(p)
  AND NOT (rafael)-[:LIKED]->(p)
RETURN DISTINCT p.post_id AS postRecommended, p.content
