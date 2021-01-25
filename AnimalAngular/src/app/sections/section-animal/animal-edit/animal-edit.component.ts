import { Component, OnInit } from '@angular/core';
import { Animal } from 'src/app/models/animal';
import { Router, ActivatedRoute } from '@angular/router';
import { FormBuilder, Validators, FormArray, FormControl, FormGroup } from '@angular/forms';
import { Keeping } from 'src/app/models/keeping';
import { Needs } from 'src/app/models/needs';
import { Category } from 'src/app/models/category';
import { Address } from 'src/app/models/address';
import { Food } from 'src/app/models/food';
import { KeepingService } from 'src/app/services/keeping.service';
import { FoodService } from 'src/app/services/food.service';
import { CategoryService } from 'src/app/services/category.service';
import { AddressService } from 'src/app/services/address.service';
import { NeedsService } from '../../../services/needs.service';
import { Processing } from 'src/app/models/processing';
import { Defect } from 'src/app/models/defect';
import { AttitudeTo } from 'src/app/models/attitudeTo';
import { Vaccination } from 'src/app/models/vaccination';
import { ProcessingService } from 'src/app/services/processing.service';
import { AttitudeToService } from 'src/app/services/attitude-to.service';
import { VaccinationService } from 'src/app/services/vaccination.service';
import { DefectService } from 'src/app/services/defect.service';
import { AnimalService } from 'src/app/services/animal.service';

@Component({
  selector: 'app-animal-edit',
  templateUrl: './animal-edit.component.html',
  styleUrls: ['./animal-edit.component.css']
})
export class AnimalEditComponent implements OnInit {

  id: number;
  animal: Animal;
  keepings: Keeping[];
  needs: Needs[];
  vaccinations: Vaccination[];
  attitudes: AttitudeTo[];
  defects: Defect[];
  processings: Processing[]
  categories: Category[];
  addresses: Address[];
  foods: Food[];
  marks: Number[];
  vaccinationsChecked: Object;
  processingsChecked: Object;
  attitudesChecked: Object;
  loaded: boolean = false;
  submitted = false;
  
  form = this.formBuilder.group({
    id: [0],
    name: ["", Validators.required],
    dateOfBirth: [Date,  [Validators.required]],
    weight: [null,  [Validators.required, Validators.min(0)]],
    withersHeight: [null,  [Validators.required, Validators.min(0)]],
    isNew:[null],
    isAdopted: [null],
    isHidden: [null],
    neckCircumference: [null,  [Validators.required, Validators.min(0)]],
    continuatitonOfTreatment: [null],
    sterialization: [0],
    chipNumber: [0],
    categoryId: [0,  [Validators.required]],
    addressId: [0,  [Validators.required]],
    foodId: [0],
    gender: [null],
    needs: this.formBuilder.array([]),
    defects: this.formBuilder.array([]),
    keepings: this.formBuilder.array([])
  });
  keepingsForm = this.form.get('keepings') as FormArray;
  needsForm = this.form.get('needs') as FormArray;
  defectsForm = this.form.get('defects') as FormArray;

  constructor(private _animalService: AnimalService, private _router: Router, activeRoute: ActivatedRoute
    , private formBuilder: FormBuilder, private keepingService: KeepingService
    , private needsService: NeedsService, private foodService: FoodService
    , private categoryService: CategoryService, private addressesService: AddressService
    , private processingService: ProcessingService, private attitudesService: AttitudeToService
    , private vaccinationService: VaccinationService, private defectService: DefectService) {
    this.id = Number.parseInt(activeRoute.snapshot.params["id"]);
    this._animalService.getById(this.id)
      .subscribe((animal: Animal) => {
        this.animal = animal;
        if (this.animal != null) {
          this.form.patchValue(animal);
          this.form.patchValue({ dateOfBirth : animal.dateOfBirth.toString().substr(0,10)});
          this.loaded = true;
          this.keepingService.getAllKeepings()
    .subscribe((res: Keeping[]) => {
      this.keepings = res;
      console.log(this.keepings);
      for (var i = 0; i < this.keepings.length; i++) {
        var exist = this.animal.keepings.some(keep => keep.id === this.keepings[i].id);
        this.keepingsForm.push(this.formBuilder.group({
          id: this.keepings[i].id,
          name: this.keepings[i].name,
          isExist: exist
        }));
      }
      console.log(this.form.value);
    });

    this.needsService.getAllNeeds()
      .subscribe((res: Needs[]) => {
        this.needs = res;
        for (var i = 0; i < this.needs.length; i++) {
          var exist = this.animal.needs.some(keep => keep.id === this.needs[i].id)
          this.needsForm.push(this.formBuilder.group({
            id: this.needs[i].id,
            name: this.needs[i].name,
            isExist: exist
          }));
        }
      });
    this.defectService.getDefects()
      .subscribe((res: Defect[]) => {
        this.defects = res;
      for (var i = 0; i < this.defects.length; i++) {
        var exist = this.animal.defects.some(keep => keep.id === this.defects[i].id)
        this.defectsForm.push(this.formBuilder.group({
          id: this.defects[i].id,
          type: this.defects[i].type,
          isExist: exist
        }));
      }
    });
        }
      });
    this.categoryService.getAllCategories()
      .subscribe((res: Category[]) => {
        this.categories = res
      });
    this.foodService.getAllFoods()
      .subscribe((res: Food[]) => {
        this.foods = res
      });
    this.addressesService.getAllAddresses()
      .subscribe((res: Address[]) => {
        this.addresses = res
      });
  }

  ngOnInit() {
  }
  createManyToMany(inputs, inputArray) {
    const arr = inputs.map(item => {
      let result: boolean = false;
      for (var index in inputArray) {
        if (item.id == inputArray[index].id) {
          result = true;
        }
      }
      return new FormControl(result);
    });
    return new FormArray(arr);
  }
  
  get formContols(){return this.form.controls;}

  
  getKeepings() {
    this.animal.keepings = new Array<Keeping>();
    for (var i = 0; i < this.keepings.length; i++) {
      if (this.form.value.keepings[i].isExist) {
        this.animal.keepings.push(this.keepings[i]);
      } else {
      }
    }
    this.form.value.keepings = this.animal.keepings;
  }
  getDefects() {
    this.animal.defects = new Array<Defect>();
    for (var i = 0; i < this.defects.length; i++) {
      if (this.form.value.defects[i].isExist) {
        this.animal.defects.push(this.defects[i]);
      } else {
      }
    }
    this.form.value.defects = this.animal.defects;
  }
  getNeeds() {
    this.animal.needs = new Array<Needs>();
    for (var i = 0; i < this.needs.length; i++) {
      if (this.form.value.needs[i].isExist) {
        this.animal.needs.push(this.needs[i]);
      } else {
      }
    }
    this.form.value.needs = this.animal.needs;
  }
  save() {
    this.submitted = true;
    
    if (this.form.invalid) {
        return;
    }
    console.log(this.form.value);

    console.log(this.categories);
    this.getKeepings();
    this.getNeeds();
    this.getDefects();
    this.animal = this.form.value;
    console.log(this.form.value);
    console.log(this.animal);
    this._animalService.editAnimal(this.animal).subscribe(data => this._router.navigateByUrl("/"));
  }
  cancel(){
    this._router.navigateByUrl("/");
  }
}
