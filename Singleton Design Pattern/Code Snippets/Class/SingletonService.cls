public with sharing class SingletonService {
    public static void main() {
        // Retrieve the single instance of SingletonExample
        SingletonDesignPattern singleton = SingletonDesignPattern.getInstance();
        
        // Call a method on the singleton instance
        singleton.exampleMethod();
    }
}