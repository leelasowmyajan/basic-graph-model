//Step 1 - Executing query before specialization

// Use case #7: What books were borrowed by Emily Clark in September?
MATCH (r:Reader {name: 'Emily Clark'})-[b:BORROWED]->(book:Book)
WHERE substring(b.borrowDate, 5, 2) = '09' // Extract 'MM' from 'YYYY-MM-DD'
RETURN book.title as BookTitle

//Step 2 - Specialization using APOC

MATCH (r:Reader)-[b:BORROWED]->(book:Book)
// Extract the month from the borrowDate and assign a month abbreviation
WITH r, book, 
     CASE substring(b.borrowDate, 5, 2)
       WHEN '01' THEN 'JAN'
       WHEN '02' THEN 'FEB'
       WHEN '03' THEN 'MAR'
       WHEN '04' THEN 'APR'
       WHEN '05' THEN 'MAY'
       WHEN '06' THEN 'JUN'
       WHEN '07' THEN 'JUL'
       WHEN '08' THEN 'AUG'
       WHEN '09' THEN 'SEP'
       WHEN '10' THEN 'OCT'
       WHEN '11' THEN 'NOV'
       WHEN '12' THEN 'DEC'
       ELSE 'UNKNOWN' // If month is unrecognized, label it as 'UNKNOWN'
     END AS monthAbbreviation

// Use APOC to dynamically create specialized relationships     
CALL apoc.merge.relationship(r, 
  apoc.text.join(['BORROWED', monthAbbreviation], '_'), 
  {}, 
  {}, 
  book
) YIELD rel
RETURN count(*) AS `Number of relationships merged`;

//Step 3 - Executing query after specialization

// Use case #7: What books were borrowed by Emily Clark in September?
MATCH (r:Reader {name: 'Emily Clark'})-[b:BORROWED_SEP]->(book:Book)
RETURN book.title as BookTitle