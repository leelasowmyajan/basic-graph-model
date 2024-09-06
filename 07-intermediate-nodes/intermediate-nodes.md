# Adding Intermediate Nodes

In this step, we want to extract more information about the **Publisher** of a book. Since the same publisher can be associated with multiple books, adding an intermediate node for **Publisher** will help us query more efficiently and obtain more details about books published by the same publisher.

#### Refactoring: Adding the Publisher Node

To implement this, we:

1. Create a **Publisher** node for each unique publisher.
2. Establish a **PUBLISHED** relationship between the `Publisher` and `Book` nodes using the `publisher` property from the `WROTE` relationship.
3. Optionally, delete the `publisher` property from the `WROTE`relationship.

