Step 1 - Creating BORROWED and LENT relationships

//Matching readers
MATCH (emily:Person {name: 'Emily Clark'})
MATCH (michael:Person {name: 'Michael Smith'})
MATCH (sophia:Person {name: 'Sophia Johnson'})
MATCH (david:Person {name: 'David Wilson'})
MATCH (olivia:Person {name: 'Olivia Martinez'})
//Matching staff
MATCH (liam:Person {name: 'Liam Brown'})
MATCH (isabella:Person {name: 'Isabella Garcia'})
MATCH (james:Person {name: 'James Lee'})
MATCH (amelia:Person {name: 'Amelia Walker'})
MATCH (ethan:Person {name: 'Ethan Harris'})
//Matching books
MATCH (sharp:Book {title: 'Sharp Objects'})
MATCH (gone:Book {title: 'Gone Girl'})
MATCH (catcher:Book {title: 'The Catcher in the Rye'})
MATCH (b1984:Book {title: '1984'})
MATCH (gatsby:Book {title: 'The Great Gatsby'})
MATCH (mockingbird:Book {title: 'To Kill a Mockingbird'})
MATCH (pride:Book {title: 'Pride and Prejudice'})
MATCH (moby:Book {title: 'Moby Dick'})
MATCH (davinci:Book {title: 'The Da Vinci Code'})
MATCH (sense:Book {title: 'Sense and Sensibility'})

//Reader Emily Clark borrowed 'Sharp Objects' and 'Gone Girl' 
//Staff Liam Brown lent the above books (Return date in future)
MERGE (liam)-[:LENT {lendDate: '2024-09-01', dueDate: '2024-09-15', transactionID: 'TXN001'}]->(sharp)
MERGE (liam)-[:LENT {lendDate: '2024-09-01', dueDate: '2024-09-15', transactionID: 'TXN001'}]->(gone)
MERGE (emily)-[:BORROWED {borrowDate: '2024-09-01', returnDate: '2024-09-15', actualRturnDate: '', lateFees: 0, transactionID: 'TXN001'}]->(sharp)
MERGE (emily)-[:BORROWED {borrowDate: '2024-09-01', returnDate: '2024-09-15', actualReturnDate: '', lateFees: 0, transactionID: 'TXN001'}]->(gone)

//Reader Emily Clark borrowed 'Sharp Objects' again 
//Staff Liam Brown lent the above book (late fee incurred)
MERGE (liam)-[:LENT {lendDate: '2024-11-01', dueDate: '2024-11-15', transactionID: 'TXN002'}]->(sharp)
MERGE (emily)-[:BORROWED {borrowDate: '2024-11-01', returnDate: '2024-11-15', actualReturnDate: '2024-11-20', lateFees: 5, transactionID: 'TXN002'}]->(sharp)

//Reader Michael Smith borrowed 'The Catcher in the Rye' and '1984' 
//Staff Isabella Garcia lent the above books (Returned)
MERGE (isabella)-[:LENT {lendDate: '2024-06-01', dueDate: '2024-06-15', transactionID: 'TXN003'}]->(catcher)
MERGE (isabella)-[:LENT {lendDate: '2024-06-01', dueDate: '2024-06-15', transactionID: 'TXN003'}]->(b1984)
MERGE (michael)-[:BORROWED {borrowDate: '2024-06-01', returnDate: '2024-06-15', actualReturnDate: '2024-06-14', lateFees: 0, transactionID: 'TXN003'}]->(catcher)
MERGE (michael)-[:BORROWED {borrowDate: '2024-06-01', returnDate: '2024-06-15', actualReturnDate: '2024-06-14', lateFees: 0, transactionID: 'TXN003'}]->(b1984)

//Reader Sophia Johnson borrowed 'The Great Gatsby' 
//Staff James Lee lent the above book (Return date in future)
MERGE (james)-[:LENT {lendDate: '2024-09-10', dueDate: '2024-09-25', transactionID: 'TXN004'}]->(gatsby)
MERGE (sophia)-[:BORROWED {borrowDate: '2024-09-10', returnDate: '2024-09-25', actualReturnDate: '', lateFees: 0, transactionID: 'TXN004'}]->(gatsby)

//Reader David Wilson borrowed '1984' and 'To Kill a Mockingbird'
//Staff Liam Brown lent the above books (Returned)
MERGE (liam)-[:LENT {lendDate: '2024-05-01', dueDate: '2024-05-15', transactionID: 'TXN005'}]->(b1984)
MERGE (liam)-[:LENT {lendDate: '2024-05-01', dueDate: '2024-05-15', transactionID: 'TXN005'}]->(mockingbird)
MERGE (david)-[:BORROWED {borrowDate: '2024-05-01', returnDate: '2024-05-15', actualReturnDate: '2024-05-14', lateFees: 0, transactionID: 'TXN005'}]->(b1984)
MERGE (david)-[:BORROWED {borrowDate: '2024-05-01', returnDate: '2024-05-15', actualReturnDate: '2024-05-14', lateFees: 0, transactionID: 'TXN005'}]->(mockingbird)

//Reader Olivia Martinez borrowed 'Pride and Prejudice' and 'Sense and Sensibility'
//Staff Amelia Walker lent the above books (late fee incurred)
MERGE (amelia)-[:LENT {lendDate: '2024-07-01', dueDate: '2024-07-15', transactionID: 'TXN006'}]->(pride)
MERGE (amelia)-[:LENT {lendDate: '2024-07-01', dueDate: '2024-07-15', transactionID: 'TXN006'}]->(sense)
MERGE (olivia)-[:BORROWED {borrowDate: '2024-07-01', returnDate: '2024-07-15', actualReturnDate: '2024-07-20', lateFees: 5, transactionID: 'TXN006'}]->(pride)
MERGE (olivia)-[:BORROWED {borrowDate: '2024-07-01', returnDate: '2024-07-15', actualReturnDate: '2024-07-20', lateFees: 5, transactionID: 'TXN006'}]->(sense)

//Reader Sophia Johnson borrowed 'Moby Dick' and 'The Da Vinci Code'
//Staff Ethan Harris lent the above books (Returned)
MERGE (ethan)-[:LENT {lendDate: '2024-08-01', dueDate: '2024-08-15', transactionID: 'TXN007'}]->(moby)
MERGE (ethan)-[:LENT {lendDate: '2024-08-01', dueDate: '2024-08-15', transactionID: 'TXN007'}]->(davinci)
MERGE (sophia)-[:BORROWED {borrowDate: '2024-08-01', returnDate: '2024-08-15', actualReturnDate: '2024-08-14', lateFees: 0, transactionID: 'TXN007'}]->(moby)
MERGE (sophia)-[:BORROWED {borrowDate: '2024-08-01', returnDate: '2024-08-15', actualReturnDate: '2024-08-14', lateFees: 0, transactionID: 'TXN007'}]->(davinci)

Step 2 - Creating WROTE relationship

//Matching books
MATCH (sharp:Book {title: 'Sharp Objects'})
MATCH (gone:Book {title: 'Gone Girl'})
MATCH (catcher:Book {title: 'The Catcher in the Rye'})
MATCH (b1984:Book {title: '1984'})
MATCH (gatsby:Book {title: 'The Great Gatsby'})
MATCH (mockingbird:Book {title: 'To Kill a Mockingbird'})
MATCH (pride:Book {title: 'Pride and Prejudice'})
MATCH (moby:Book {title: 'Moby Dick'})
MATCH (davinci:Book {title: 'The Da Vinci Code'})
MATCH (sense:Book {title: 'Sense and Sensibility'})

//Person Nodes that contain 8 Authors info
MATCH (flynn:Author {name: 'Gillian Flynn'})
MATCH (orwell:Author {name: 'George Orwell'})
MATCH (salinger:Author {name: 'J.D. Salinger'})
MATCH (fitzgerald:Author {name: 'F. Scott Fitzgerald'})
MATCH (lee:Author {name: 'Harper Lee'})
MATCH (austen:Author {name: 'Jane Austen'})
MATCH (melville:Author {name: 'Herman Melville'})
MATCH (brown:Author {name: 'Dan Brown'})

// Gillian Flynn wrote 'Sharp Objects' and 'Gone Girl'
MERGE (flynn)-[:WROTE {publisher: 'Crown Publishing Group'}]->(sharp)
MERGE (flynn)-[:WROTE {publisher: 'Crown Publishing Group'}]->(gone)

// George Orwell wrote '1984'
MERGE (orwell)-[:WROTE {publisher: 'Secker & Warburg'}]->(b1984)

// J.D. Salinger wrote 'The Catcher in the Rye'
MERGE (salinger)-[:WROTE {publisher: 'Little, Brown and Company'}]->(catcher)

// F. Scott Fitzgerald wrote 'The Great Gatsby'
MERGE (fitzgerald)-[:WROTE {publisher: 'Charles Scribner\'s Sons'}]->(gatsby)

// Harper Lee wrote 'To Kill a Mockingbird'
MERGE (lee)-[:WROTE {publisher: 'J.B. Lippincott & Co.'}]->(mockingbird)

// Jane Austen wrote 'Pride and Prejudice' and 'Sense and Sensibility'
MERGE (austen)-[:WROTE {publisher: 'T. Egerton'}]->(pride)
MERGE (austen)-[:WROTE {publisher: 'T. Egerton'}]->(sense)

// Herman Melville wrote 'Moby Dick'
MERGE (melville)-[:WROTE {publisher: 'Harper & Brothers'}]->(moby)

// Dan Brown wrote 'The Da Vinci Code'
MERGE (brown)-[:WROTE {publisher: 'Doubleday'}]->(davinci)