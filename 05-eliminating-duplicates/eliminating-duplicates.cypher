//Step 1 - Executing the query before elimination

//Use case #6: What books are available in Spanish?
MATCH (b:Book)
WHERE 'Spanish' IN b.languages
RETURN b.title

//Step 2 - Refactoring language property as nodes

MATCH (b:Book) // Match all Book nodes
UNWIND b.languages AS language // Unwind the 'languages' property (a list) into individual language strings
WITH language, collect(b) AS books // Collect all books associated with each language
MERGE (l:Language {name:language}) // Create a Language node if it doesn't already exist
WITH l, books // Pass the Language node and associated books forward
UNWIND books AS b // Unwind the collected books into individual book nodes
MERGE (b)-[:IN_LANGUAGE]->(l); // Create the IN_LANGUAGE relationship between each book and the corresponding Language node
MATCH (b:Book)
SET b.languages = null; // Remove the 'languages' property from the Book nodes

//Step 3 - Executing the query after elimination

//Use case #6: What books are available in Spanish?
MATCH (b:Book)-[:IN_LANGUAGE]-(l:Language)
WHERE  l.name = 'Spanish'
RETURN b.title