### Factory Method Design Pattern

The Factory Method Design Pattern comes under Creational Design Pattern, which means it deals with Object creation. It provides solution for creating objects which may be of different type or determined during at runtime.

#### Use Case

Let's say I want to create task on click of a button. Those tasks should be associate with that object where I place it. Means if I place the button on Account Record Page, then task should be associate with Account record.

May be above use-case sounds silly! but let's try to implement this.

#### Solution

Right now, I'm thinking of creating one LWC, which has button to create task and the object details is going to pass using TargetConfigs.


But first, let's see the below diagram first.

![alt text](https://file%2B.vscode-resource.vscode-cdn.net/Users/sucharitamondal/GIT_Repo/Design-Patterns-in-Salesforce/FactoryMethodPattern.png?version%3D1721825337429)

Now you might got an idea, how we are going to implement the **Factory Method Pattern**. Let's try to understand the significance of each of the blue boxes.

**CreateTaskInterface**  : As we all know that Interface is used for layering abstraction. Every method can have different implementations based on your specific application.

**AccountTaskFactory / OpportunityTaskFactory** : These are the sub-classes which are going to implement the methods from the Interface (remember : own implementation specific to application). Here I've used 2 sub-classes as we are going to put the LWC on AccountLightningRecordPage and OpportunityLightningRecordPage. But you can take it to as many object as you require to.

**CreateTaskFactoryService** : This class is responsible for determining which class to instantiate based on the given parameter. Let's say if parameter is for Account object then It'll instantiate **AccountTaskFactory** class.

**CreateTaskController** : Well this the main class from which will pass type of object, we are interested in.


**Note** : Please check the code snippets for implementation.
