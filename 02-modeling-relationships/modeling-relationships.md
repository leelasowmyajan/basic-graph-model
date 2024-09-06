# Modeling Relationships

Based on our use cases so far, we can establish the following relationships:

#### BORROWED Relationship
- **Attributes**: 
  - `borrowDate`
  - `returnDate`
  - `actualReturnDate`
  - `lateFees`
  - `transactionID`

#### LENT Relationship
- **Attributes**: 
  - `lendDate`
  - `dueDate`
  - `transactionID`

#### Expanding the Model

Since we added a new label `Author` for **Use Case #4**, we also need to introduce a new relationship.

#### WROTE Relationship
- **Attributes**: 
  - `publisher`
