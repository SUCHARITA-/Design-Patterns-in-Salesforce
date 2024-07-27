/**
 * @author : Sucharita Mondal
 * @description : Class demonstrates how to use UnitOfWork(UOW)
 */
public with sharing class AccountContactService {
   public static void manageAccountContact(){
    UnitOfWork uow = new UnitOfWork();

    Account acc = new Account(Name = 'Test Account');
    uow.register(acc);
    uow.commitUOW();

    Contact con = new Contact(FirstName = 'Test', LastName = 'Contact', AccountId= acc.Id);
    uow.register(con);
    uow.commitUOW();
    
   }
}