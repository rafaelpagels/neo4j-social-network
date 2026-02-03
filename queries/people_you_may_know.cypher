//Pessoas que você talvez conheça (amigo de amigo)

MATCH (rafael:User {user_id: 1})-[:FRIENDS_WITH]->(f1)-[:FRIENDS_WITH]->(f2)
WHERE f2 <> rafael
  AND NOT (rafael)-[:FRIENDS_WITH]->(f2)
RETURN f2.user_id, f2.user_name, COUNT(*) AS mutualFriends
ORDER BY mutualFriends DESC;
