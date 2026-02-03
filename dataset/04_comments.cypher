//Criando comentários
MATCH (luciano:User {user_id: 6})
MATCH (post:Post {post_id: 103})
MERGE (luciano)-[:CREATED {at: date("2026-01-01")}]->(c:Comment {
        comment_id: 999,
        text: "Happy new year for you too!",
        created_at: date("2026-01-01")
})
MERGE (c)-[:COMMENTED_ON]->(post);

MATCH (luciano:User {user_id: 6})
MATCH (post:Post {post_id: 101})
MERGE (luciano)-[:CREATED {at: date("2025-11-22")}]->(c:Comment {
        comment_id: 998,
        text: "Congratulations!",
        created_at: date("2025-11-22")
})
MERGE (c)-[:COMMENTED_ON]->(post);

MATCH (jessica:User {user_id: 7})
MATCH (post:Post {post_id: 102})
MERGE (jessica)-[:CREATED {at: date("2025-09-13")}]->(c:Comment {
        comment_id: 997,
        text: "Have fun! You deserve it!",
        created_at: date("2025-09-13")
})
MERGE (c)-[:COMMENTED_ON]->(post);

MATCH (eliana:User {user_id: 8})
MATCH (post:Post {post_id: 105})
MERGE (eliana)-[:CREATED {at: date("2024-09-14")}]->(c:Comment {
        comment_id: 996,
        text: "Let me go with you!",
        created_at: date("2024-09-14")
})
MERGE (c)-[:COMMENTED_ON]->(post);

MATCH (eliana:User {user_id: 8})
MATCH (post:Post {post_id: 105})
MERGE (eliana)-[:CREATED {at: date("2024-09-14")}]->(c:Comment {
        comment_id: 995,
        text: "I'm just kidding. Take care, friend! Hope everything is going ok.",
        created_at: date("2024-09-14")
})
MERGE (c)-[:COMMENTED_ON]->(post);

MATCH (debora:User {user_id: 9})
MATCH (post:Post {post_id: 104})
MERGE (debora)-[:CREATED {at: date("2026-02-04")}]->(c:Comment {
        comment_id: 994,
        text: "Congrats!!!",
        created_at: date("2026-02-04")
})
MERGE (c)-[:COMMENTED_ON]->(post);


MATCH (sara:User {user_id: 2})
MATCH (post:Post {post_id: 101})
MERGE (sara)-[:CREATED {at: date("2025-11-23")}]->(c:Comment {
    comment_id: 993,
    text: "Wishing health and happiness to your family",
    created_at: date("2025-11-23")
})
MERGE (c)-[:COMMENTED_ON]->(post);


MATCH (guerino:User {user_id: 10})
MATCH (post:Post {post_id: 104})
MERGE (guerino)-[:CREATED {at: date("2026-02-05")}]->(c:Comment {
    comment_id: 992,
    text: "This is just the beginning. Keep going!",
    created_at: date("2026-02-05")
})
MERGE (c)-[:COMMENTED_ON]->(post);


MATCH (isaac:User {user_id: 3})
MATCH (post:Post {post_id: 105})
MERGE (isaac)-[:CREATED {at: date("2024-09-15")}]->(c:Comment {
    comment_id: 991,
    text: "Big changes are scary, but also exciting. Good luck!",
    created_at: date("2024-09-15")
})
MERGE (c)-[:COMMENTED_ON]->(post);
