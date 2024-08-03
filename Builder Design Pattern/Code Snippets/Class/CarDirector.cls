/**
 * @author: Sucharita Mondal
 * @description : The Director class can serve as a central point for managing the construction of various configurations of the product.
 */
public with sharing class CarDirector {
    private Car.CarBuilder builder;

    public CarDirector(Car.CarBuilder builder) {
        this.builder = builder;
    }

    public Car createTataPunch() {
        return builder
            .setModel('2024')  // Corrected method name to match setModel
            .setColor('Blue')
            .build();
    }

    public Car createTataHarrier() {
        return builder
            .setModel('2024')  // Corrected method name to match setModel
            .setColor('Red')
            .build();
    }
}
