# Eliminating Duplicate Data

A new use case has emerged:

- **Use case #6** - What books are available in a particular language?

The query for this use case retrieves all `Book` nodes and checks if the `languages` property contains, for example, 'Spanish'. However, there are two main issues with this approach, especially as the graph scales:

1. The name of the language is duplicated in many `Book` nodes.
2. The query must retrieve all `Book` nodes, which is inefficient for large graphs.

#### Refactor Properties as Nodes

To resolve these issues, we can model the `languages` property as separate nodes. Here's the refactoring process:

1. Extract the language values from each `Book` node and create individual **Language** nodes.
2. Establish an **IN_LANGUAGE** relationship between each `Book` node and the corresponding `Language` node.
3. Remove the `languages` property from the `Book` nodes to eliminate redundancy.
