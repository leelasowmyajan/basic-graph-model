//Use case #1 - Who borrowed 1984?
MATCH (p:Person)-[:BORROWED]->(b:Book)
WHERE b.title = '1984'
RETURN p

//Use case #2 - Who lent the books to David Wilson?
MATCH (staff:Person)-[:LENT]->(book:Book)<-[:BORROWED]-(david:Person {name: 'David Wilson'})
RETURN staff.name AS Staff, book.title AS BookTitle

//Use case #3 - What books have been borrowed by Emily Clark?
MATCH (p:Person)-[:BORROWED]->(b:Book)
WHERE p.name = 'Emily Clark'
RETURN b

//Use case #4 - Who wrote 'Sense and Sensibility'?
MATCH (a:Author)-[:WROTE]->(b:Book)
WHERE b.title = 'Sense and Sensibility'
RETURN a