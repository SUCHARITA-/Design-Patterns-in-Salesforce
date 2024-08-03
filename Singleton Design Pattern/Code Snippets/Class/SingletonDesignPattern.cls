/**
 * @author : Sucharita Mondal
 * @description : This class demonstrate Singleton Design Pattern
 */
public with sharing class SingletonDesignPattern {

            // Static variable to hold the single instance
    private static SingletonDesignPattern instance;

    // Private constructor to prevent instantiation from outside
    private SingletonDesignPattern() {
        // Initialization code here
    }

    // Public method to provide access to the instance
    public static SingletonDesignPattern getInstance() {
        if (instance == null) {
            instance = new SingletonDesignPattern();
        }
        return instance;
    }

    // Example method
    public void exampleMethod() {
        System.debug('This is an example method in the Singleton class.');
    }
}