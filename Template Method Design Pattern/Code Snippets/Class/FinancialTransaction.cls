/**
 * @author : Sucharita Mondal
 * @description : Abstract class for defining the template method
 */
public with sharing  Abstract class FinancialTransaction {
    // template method
    public void processTransaction(){
        validateTransaction();
        executeTransaction();
        notifyCustomer();
    }

    // abstract method to be implemented by subclass
    protected abstract void validateTransaction();
    protected abstract void executeTransaction();

    // common method
    private void notifyCustomer(){
        System.debug('Send mail to notify customer');
    }
}