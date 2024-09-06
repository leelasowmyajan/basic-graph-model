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

#### Expanding the Model

A new use case has emerged:

- **Use case #4** - Who wrote a specific book?

To address this, we need to introduce a new entity: **Author** to capture this additional information.
