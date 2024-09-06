# Refactoring the Graph Model

A new use case has emerged:

- **Use case #5** - Who are the staff members born before a particular year?

By using the `PROFILE` command to inspect the query for this use case, we can observe that a node-by-label scan is retrieving all `Person` nodes, filtering them based on `dob`, and then checking for nodes with outgoing `LENT` relationships.

If this was a fully-loaded graph, retrieving and filtering all `Person` nodes would be inefficient. To improve performance, we need to refactor the model by introducing two distinct labels:

- **Reader**: Has an outgoing `BORROWED` relationship.
- **Staff**: Has an outgoing `LENT` relationship.

#### Refactoring the Model

After refactoring, I ran the `PROFILE` query for **use case #5** again, and the query time improved significantly. Instead of scanning all `Person` nodes, only `Staff` nodes were retrieved in the first step of the query plan, making the process more efficient.

#### Retesting the Model

I then retested the model for all previous use cases to ensure that the changes accommodate the original requirements. 
