import { Vaccination } from './vaccination';
import { AttitudeTo } from './attitudeTo';
import { Defect } from './defect';
import { Keeping } from './keeping';
import { Processing } from './processing';
import { Needs } from './needs';
import { image } from './images';

export class Animal{
    id : number;
    name : string;
    dateOfBirth : Date;
    weight : number;
    withersHeight : number;
    isAdopted : boolean;
    isHidden : boolean;
    isNew : boolean;
    neckCircumference : number;
    continuatitonOfTreatment : boolean;
    chipNumber : number;
    gender : number;
    sterialization : number;
    addressId : number;
    categoryId : number;
    foodId : number;
    vaccinations : Array<Vaccination>;
    attitudes : Array<AttitudeTo>;
    defects : Array<Defect>;
    keepings : Array<Keeping>;
    processings : Array<Processing>;
    needs : Array<Needs>;
    images : Array<image>;
}