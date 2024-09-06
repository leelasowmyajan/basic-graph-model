# Using Specific Relationships

A new use case has emerged:

- **Use case #7** - What books were borrowed by a reader in a particular month?

In the current model, the query retrieves all books borrowed by a reader and then applies further filtering based on the `borrowDate`. This approach can become inefficient, especially if a reader borrowed a large number of books in a month.

For instance, if a reader borrowed 60 books in one month, the query would need to retrieve all of them and then check the `borrowDate` property for each one. If this type of query is frequent, it becomes necessary to specialize relationships for better performance.

#### Specialized Relationships

We can optimize this use case by creating specialized relationships, such as:

- **BORROWED_IN_JAN**
- **BORROWED_IN_FEB** …and so on.

This allows for direct querying of books borrowed in a specific month, without needing to filter through all borrowed books.

#### Implementation with APOC Library

To implement this, I installed the APOC library and added the specific relationships. Using APOC, we can efficiently create these specialized relationships to optimize queries for books borrowed by month.


