# Modeling Nodes

#### Purpose of this Model
The primary use cases for this model:

- **Use case #1** - Which people have borrowed a specific book?
- **Use case #2** - Who lent the book to a particular person?
- **Use case #3** - What books have been borrowed by a specific person?

From these use cases, we can determine that the key entities in the model are **Book** and **Person** (i.e. a person can be a reader or staff).

#### Person Node Attributes
- `pid`
- `name`
- `dob` (date of birth)

#### Book Node Attributes
- `ISBN`
- `title`
- `release date`
- `languages`

Let's create 10 `Book` nodes and 10 `Person` nodes to represent this structure.

#### Expanding the Model

A new use case has emerged:

- **Use case #4** - Who wrote a specific book?

To address this, we introduce a new entity: **Author**. 
Let's create 8 `Author` nodes to capture this additional information.
