/**
 * @author : Sucharita Mondal
 * @description : This class initiates the construction of a complex object by using a builder.
 */
public with sharing class CarService {
    public void getCar() {
        Car.CarBuilder carBuilder = new Car.CarBuilder('Tata');
        CarDirector director = new CarDirector(carBuilder);

        Car tataPunch = director.createTataPunch();
        Car tataHarrier = director.createTataHarrier();

        System.debug(tataPunch.getModel() + ' ' + tataPunch.getColor());
        System.debug(tataHarrier.getModel() + ' ' + tataHarrier.getColor());
    }
}

