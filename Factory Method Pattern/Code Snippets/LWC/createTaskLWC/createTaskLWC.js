import { LightningElement, api} from 'lwc';
import createTask from '@salesforce/apex/CreateTaskController.createTask';
export default class CreateTaskLWC extends LightningElement {

    @api objectName;
    @api recordId;

    handleClick(event){
        if(this.objectName){
            createTask({objectName: this.objectName, recordId : this.recordId})
            .then(result => {console.log(result);})
            .catch(error =>{console.log(error);})
        }
    }
}