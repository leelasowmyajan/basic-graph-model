//Step 1 - Create the intermediate node - Publisher and PUBLISHED relationship

// Find authors that wrote Books
MATCH (a:Author)-[w:WROTE]->(b:Book)

// Create a Publisher nodes
MERGE (x:Publisher {name: w.publisher})

// Create the PUBLISHED relationship between the Book and the Publisher nodes
MERGE (x)-[:PUBLISHED]->(b)

//Step 2 - Remove the 'publisher' property from the WROTE relationship

MATCH (:Author)-[w:WROTE]->(:Book)
REMOVE w.publisher 