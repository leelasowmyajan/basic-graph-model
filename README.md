# Simple Library Graph Model

This project demonstrates the fundamentals of **Graph Data Modeling** using Neo4j and Cypher, focused on building a **Library Graph** that represents authors, books, publishers, and related entities.

## Project Overview

The goal of this project is to model and manipulate graph data by creating nodes, relationships, and implementing refactoring techniques. Key steps include:

1. **Modeling Nodes and Creating Nodes**: Created `Person`, `Book`, and `Author` nodes with attributes like `name`, `dob`, `ISBN`, and `languages`.

2. **Modeling Relationships and Creating Relationships**: Established relationships like `BORROWED`, `LENT`, and `WROTE` with relevant attributes (`borrowDate`, `publisher`, `transactionID`) to track interactions between entities.

3. **Testing the Graph Data Model**: Validated the model through queries answering key use cases.

4. **Refactoring the Graph Data Model**: Enhanced performance by adding `Reader` and `Staff` labels.

5. **Eliminating Duplicate Data in the Graph**: Refactored `languages` as separate `Language` nodes, reducing duplication.

6. **Adding Specific Relationship Types**: Added relationships like `BORROWED_IN_JAN` using APOC to track month-based book borrowing.

7. **Adding Intermediate Nodes**: Introduced `Publisher` nodes to connect books to their publishers.

## Key Concepts

- **Node Types**: `Author`, `Book`, `Reader`, `Publisher`, `Staff`.
- **Relationships**:
  - `BORROWED`: Between `Reader` and `Book`.
  - `LENT`: Between `Staff` and `Book`.
  - `WROTE`: Between `Author` and `Book`.
  - `PUBLISHED`: Between `Book` and `Publisher`.

## Running the Project

To run the graph model, you need:
1. **Neo4j**  and **APOC-plugin** installed.
2. Load the provided Cypher scripts into the Neo4j browser.
3. Test the model with the provided queries.

