### Unit of Work Design Pattern

The Unit of Work (UOW) design pattern comes under Behavioral Design Patterns, it is primarily concerned with the interaction between objects in the context of database operations and the management of their behavior in a transactional context.

The idea behind the Unit of Work pattern is to centralize and coordinate database operations (DML statements) within a single class. This helps manage and control how and when changes are committed to the database, ensuring consistency and integrity.

#### Use Case

Think of a scenario where you've multiple DMLs to perform, but you can use UOW to commit them into a single transaction.

For more details you can check github link (https://github.com/apex-enterprise-patterns/fflib-apex-common) and Martin Fowler's book (https://martinfowler.com/books/eaa.html)

**Note** : Please check the code snippets for implementation 
