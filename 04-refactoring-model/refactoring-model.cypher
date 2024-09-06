//Step 1 - Profiling the query before refactoring

//Profiling the query for Use case #5 - Who are the staff members born before 1990?
PROFILE MATCH (p:Person)-[:LENT]->()
WHERE p.dob < '1990-01-01'
RETURN p

//Step 2 - Refactoring the graph

//Adding Reader Label
MATCH (p:Person)
WHERE exists ((p)-[:BORROWED]->())
SET p:Reader

//Adding Staff Label
MATCH (p:Person)
WHERE exists ((p)-[:LENT]->())
SET p:Staff

//Step 3 - Profiling the query before refactoring

//Profiling the query for Use case #5 - Who are the staff members born before 1990?
PROFILE MATCH (s:Staff)
WHERE s.dob < '1990-01-01'
RETURN s

//Step 4 - Retesting the model

//Use case #1 - Who borrowed 1984?
MATCH (r:Reader)-[:BORROWED]->(b:Book)
WHERE b.title = '1984'
RETURN r

//Use case #2 - Who lent the books to David Wilson?
MATCH (staff:Staff)-[:LENT]->(book:Book)<-[:BORROWED]-(david:Reader {name: 'David Wilson'})
RETURN staff.name AS Staff, book.title AS BookTitle

//Use case #3 - What books have been borrowed by Emily Clark?
MATCH (r:Reader)-[:BORROWED]->(b:Book)
WHERE r.name = 'Emily Clark'
RETURN b

//Use case #4 - Who wrote 'Sense and Sensibility'?
MATCH (a:Author)-[:WROTE]->(b:Book)
WHERE b.title = 'Sense and Sensibility'
RETURN a