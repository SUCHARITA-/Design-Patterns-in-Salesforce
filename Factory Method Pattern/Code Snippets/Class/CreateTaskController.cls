public with sharing class CreateTaskController {

    @AuraEnabled
    public static void createTask(String objectName, String recordId){
        CreateTaskInterface request = CreateTaskServiceFactory.requestCreateTask(objectName);
        request.createTask(recordId);
    }
}