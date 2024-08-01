/**
 * @author : Sucharita Mondal
 */
public with sharing class TransactionService {
    public static void processing(){
        FinancialTransaction deposit = new DepositTransaction(1000);
        deposit.processTransaction();
    }
}