/**
 * @author : Sucharita Mondal
 * @description : Sample class to for UnitOfWork (UOW) Design Pattern
 */
public with sharing class UnitOfWork {
    private List<SObject> insertList = new List<SObject>();
    private List<SObject> updateList = new List<SObject>();
    private List<SObject> deleteList = new List<SObject>();
    private SavePoint sp;

    public UnitOfWork(){
        sp = Database.setSavePoint();
    }
    // insert new record
    public void register(SObject record){
        if(record != null){
            insertList.add(record);
        }
    }

    //update existing record
    public void registerDirty(SObject record){
        if(record != null){
            updateList.add(record);
        }
    }
    
    // delete record
    public void registerDelete(SObject record){
        if(record != null){
            deleteList.add(record);
        }
    }

    // commit 
    public void commitUOW(){
        try{
            if(insertList!= null){
                insert insertList;
                insertList.clear();
            }
            if(updateList!= null){
                update updateList;
                updateList.clear();
            }
            if(deleteList!= null){
                delete deleteList;
                deleteList.clear();
            }
        }catch(Exception ex){
            Database.rollback(sp);
            throw ex;
        }
    }

}