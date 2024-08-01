/**
 * @author : Sucharita Mondal
 * @description : Concrete class to override necessary steps from 'FinancialTransaction'
 */
public with sharing class DepositTransaction extends FinancialTransaction{
    private Decimal amount;
    
    public DepositTransaction(Decimal amount) {
        this.amount = amount;
    }

    protected override void validateTransaction() {
        if (amount <= 0) {
            throw new IllegalArgumentException('Deposit amount must be greater than zero.');
        }
        System.debug('Deposit validation passed.');
    }

    protected override void executeTransaction() {
        // Logic to execute deposit (e.g., update account balance)
        System.debug('Depositing amount: ' + amount);
    }
}