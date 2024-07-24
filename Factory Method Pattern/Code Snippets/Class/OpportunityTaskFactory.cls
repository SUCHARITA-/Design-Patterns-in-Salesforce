public with sharing class OpportunityTaskFactory implements CreateTaskInterface {
    public static List<Task> taskList = new List<Task>();

    public static void   createTask(String recordId){
        Task tsk = new Task();
        tsk.WhatId = recordId;
        tsk.description = 'Task is created through factory';
        tsk.subject = 'Demo Factory Method Design Pattern';
        taskList.add(tsk);
        if(taskList.size() > 0 && Schema.sObjectType.Task.isCreateable()){
            insert taskList;
        }
    }
    
}