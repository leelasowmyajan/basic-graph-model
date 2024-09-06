//Step 1 - Creation

//Sanity - Deleting all nodes before we start
MATCH (n) DETACH DELETE n;

//Creating 10 Book nodes 
MERGE (:Book {title: 'Sharp Objects', ISBN: '978-0-596-52068-7', released: '1995-06-30', languages: ['English', 'Spanish']})
MERGE (:Book {title: 'Gone Girl', ISBN: '978-1-4767-2765-6', released: '2012-06-05', languages: ['English']})
MERGE (:Book {title: 'The Catcher in the Rye', ISBN: '978-0-316-76948-0', released: '1951-07-16', languages: ['English', 'French']})
MERGE (:Book {title: '1984', ISBN: '978-0-452-28423-4', released: '1949-06-08', languages: ['English', 'German']})
MERGE (:Book {title: 'The Great Gatsby', ISBN: '978-0-7432-7356-5', released: '1925-04-10', languages: ['English']})
MERGE (:Book {title: 'To Kill a Mockingbird', ISBN: '978-0-06-112008-4', released: '1960-07-11', languages: ['English']})
MERGE (:Book {title: 'Pride and Prejudice', ISBN: '978-0-19-953556-9', released: '1813-01-28', languages: ['English', 'Italian']})
MERGE (:Book {title: 'Moby Dick', ISBN: '978-0-14-243724-7', released: '1851-11-14', languages: ['English', 'Portuguese']})
MERGE (:Book {title: 'The Da Vinci Code', ISBN: '978-0-385-50420-8', released: '2003-03-18', languages: ['English', 'Spanish']})
MERGE (:Book {title: 'Sense and Sensibility', ISBN: '978-0-19-953557-6', released: '1811-10-30', languages: ['English', 'French']})

//Creating 10 Person Nodes - first 5 indicate the readers and the next 5 the staff
MERGE (:Person {pid: 1, name: 'Emily Clark', dob: '1985-03-12'})
MERGE (:Person {pid: 2, name: 'Michael Smith', dob: '1992-07-21'})
MERGE (:Person {pid: 3, name: 'Sophia Johnson', dob: '1989-11-15'})
MERGE (:Person {pid: 4, name: 'David Wilson', dob: '1995-02-08'})
MERGE (:Person {pid: 5, name: 'Olivia Martinez', dob: '1993-09-30'})
MERGE (:Person {pid: 6, name: 'Liam Brown', dob: '1987-04-19'})
MERGE (:Person {pid: 7, name: 'Isabella Garcia', dob: '1990-12-07'})
MERGE (:Person {pid: 8, name: 'James Lee', dob: '1994-01-25'})
MERGE (:Person {pid: 9, name: 'Amelia Walker', dob: '1991-06-15'})
MERGE (:Person {pid: 10, name: 'Ethan Harris', dob: '1996-10-03'})

//Creating 8 Author Nodes
MERGE (:Author {aid: 1, name: 'Gillian Flynn', dob: '1971-02-24'})
MERGE (:Author {aid: 2, name: 'George Orwell', dob: '1903-06-25'})
MERGE (:Author {aid: 3, name: 'J.D. Salinger', dob: '1919-01-01'})
MERGE (:Author {aid: 4, name: 'F. Scott Fitzgerald', dob: '1896-09-24'})
MERGE (:Author {aid: 5, name: 'Harper Lee', dob: '1926-04-28'})
MERGE (:Author {aid: 6, name: 'Jane Austen', dob: '1775-12-16'})
MERGE (:Author {aid: 7, name: 'Herman Melville', dob: '1819-08-01'})
MERGE (:Author {aid: 8, name: 'Dan Brown', dob: '1964-06-22'})

// Step 2 - Sanity
//Count all nodes added -> should return 10+10+8=28
MATCH (n) RETURN COUNT(n);