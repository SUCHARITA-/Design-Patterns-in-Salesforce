### Builder Design Pattern

The Builder Design Pattern comes under the Creational Design Pattern. It focuses on creating object step by step to achieve great flexibility when instantiate their objects.
In this design pattern, we separate the object construction from its representation.

#### Use Case

Let's you have car manufacturing company and build different cars. User requirements may vary depeding upon color, size, type of car (Sedan or SUV), model etc. Instead of creating Car object for every single variation using constructor, we'll can put a builder class to create car of different variation and pass that to actual Car class.

Now also understand if we don't use Builder design pattern and if tomorrow some new attribute to add say 'year' in Car. A new constructor to be added or need to modified existing constructor which leads to update exisitng class which are using those constructor. 

#### Reference
1. https://www.youtube.com/watch?v=oP76NM4qZhw


**Note** : Please check the code snippets for implementation 