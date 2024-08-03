### Singleton Design Pattern

This Design Pattern comes under the Creational Design Pattern. This design pattern ensures a class has only one instance and provides a global point of access to that instance.

#### Use Case

Imagine you are managing a system where you need only one printer object for all printing tasks. If multiple users try to create their own printer objects, it would be inefficient and chaotic. Instead, you have one printer that everyone uses. The Singleton pattern is like this single printer, ensuring there’s only one instance that everyone accesses. 

### Caution!!

Some people argue on not to use Singleton pattern as we only create one instance of the class. This design pattern has many pitfalls, therefore evaluate your business cases while implementing Singleton design pattern. This pattern can make testing difficult, in multi-threaded environment this can be an issue (not for Apex as Apex is Single-Threaded due to multi-tenancy architecture).

#### Reference
1. https://www.youtube.com/watch?v=hUE_j6q0LTQ

**Note** : Please check the code snippets for implementation 