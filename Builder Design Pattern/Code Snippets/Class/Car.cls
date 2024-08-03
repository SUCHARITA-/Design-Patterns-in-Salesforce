/**
 * @author : Sucharita Mondal
 * @description : Product class, it represents the final object that is created using the builder.
 */
public with sharing class Car {
    private String make;
    private String color;
    private String model;

    private Car(CarBuilder builder) {
        this.make = builder.make;
        this.color = builder.color;
        this.model = builder.model;
    }

    // Getters for accessing the car properties
    public String getMake() { return make; }
    public String getColor() { return color; }
    public String getModel() { return model; }

    public class CarBuilder {
        private String make;
        private String color;
        private String model;

        public CarBuilder(String make) {
            this.make = make;
        }

        public CarBuilder setModel(String model) {
            this.model = model;
            return this;
        }

        public CarBuilder setColor(String color) {
            this.color = color;
            return this;
        }

        public Car build() {
            return new Car(this);
        }
    }
}
