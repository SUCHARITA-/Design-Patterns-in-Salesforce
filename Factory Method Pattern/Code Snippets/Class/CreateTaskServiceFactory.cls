public with sharing class CreateTaskServiceFactory {
    public static CreateTaskInterface requestCreateTask(String objectName){
        if(objectName == 'Account'){
            return new AccountTaskFactory();
        }else if(objectName == 'Opportunity'){
            return new OpportunityTaskFactory();
        }else{
            return null;
        }
    }
}